#!/bin/bash
# check_patterns.sh — Détecte les patterns dangereux connus dans LoxxInterruptTracker
# Usage: ./check_patterns.sh
# Branchable en pre-commit hook : cp check_patterns.sh .git/hooks/pre-commit

ERRORS=0
LUA="LoxxInterruptTracker.lua"

echo "=== Loxx Pattern Checker ==="

# 1. Valeur secret utilisée comme clé de table dans les handlers party
# Cherche eSpellID[ ou ALL_INTERRUPTS[eSpellID] ou CC_SPELLS[eSpellID]
if grep -n "\(CC_SPELLS\|ALL_INTERRUPTS\|CD_ON_KICK_TALENTS\)\[eSpellID\]" "$LUA" 2>/dev/null; then
    echo "❌ ERREUR: eSpellID utilisé comme clé de table (valeur tainted Midnight 12.0)"
    echo "   → Utiliser une boucle avec == à la place"
    ERRORS=$((ERRORS+1))
else
    echo "✅ eSpellID table indexing: OK"
fi

# 2. local function sur une forward declaration connue
# Ces fonctions ont des forward declarations et NE doivent PAS être redéclarées local
FORWARD_DECLS=("ProcessInspectQueue" "PopulateCCUsers" "CreateCCFrame" "ShowCCConfig" "RegisterPartyWatchers" "RecordMissedKick" "StartNewRun")
for fn in "${FORWARD_DECLS[@]}"; do
    count=$(grep -c "^local function $fn()" "$LUA" 2>/dev/null)
    count=${count:-0}
    if [ "$count" -gt 0 ] 2>/dev/null && [ "$count" != "0" ]; then
        echo "❌ ERREUR: 'local function $fn()' redéclare une forward declaration → utiliser '$fn = function()'"
        ERRORS=$((ERRORS+1))
    else
        echo "✅ Forward declaration $fn: OK"
    fi
done

# 3. table.concat sans protection pcall sur slice
# Cherche table.concat(slice) sans pcall autour
if grep -n "table\.concat(slice" "$LUA" | grep -v "pcall" 2>/dev/null; then
    echo "❌ ERREUR: table.concat(slice, ...) sans pcall — risque crash sur valeur tainted"
    ERRORS=$((ERRORS+1))
else
    echo "✅ table.concat protection: OK"
fi

# 4. Version cohérente entre .lua et .toc
LUA_VER=$(grep -o 'LOXX_VERSION = "[^"]*"' "$LUA" | head -1 | grep -o '"[^"]*"' | tr -d '"')
TOC_VER=$(grep "^## Version:" LoxxInterruptTracker.toc | awk '{print $3}')
if [ "$LUA_VER" = "$TOC_VER" ]; then
    echo "✅ Version cohérente: $LUA_VER"
else
    echo "❌ ERREUR: version incohérente — .lua=$LUA_VER .toc=$TOC_VER"
    ERRORS=$((ERRORS+1))
fi

# 5. C_Timer.After avec nil possible (forward declaration pas encore assignée)
# Cherche C_Timer.After avec ProcessInspectQueue sans wrapper function
if grep -n "C_Timer\.After.*ProcessInspectQueue[^)]" "$LUA" 2>/dev/null | grep -v "function()"; then
    echo "⚠️  AVERTISSEMENT: C_Timer.After(t, ProcessInspectQueue) sans wrapper function()"
    echo "   → Risque nil si appelé avant l'assignation. Préférer: C_Timer.After(t, function() if ProcessInspectQueue then ProcessInspectQueue() end end)"
fi

echo ""
if [ "$ERRORS" -eq "0" ]; then
    echo "✅ Tous les checks passés."
    exit 0
else
    echo "❌ $ERRORS erreur(s) détectée(s). Corriger avant de push."
    exit 1
fi
