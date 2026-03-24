# LoxxInterruptTracker — Règles permanentes pour Claude

## RÈGLES DE SESSION (priorité absolue)

- **JAMAIS** de `git push` sans commande explicite "push git" ou "push" de l'utilisateur
- **TOUJOURS** faire un backup `.bak` avant toute modification de code
- **JAMAIS** sauter une version : format `1.5.X.Y`, incrémenter Y à chaque push

---

## WoW Midnight 12.0 — Restrictions API connues

### 1. `eSpellID` dans `UNIT_SPELLCAST_SUCCEEDED` est une valeur "secret" (tainted)
- **NE JAMAIS** utiliser comme clé de table : `CC_SPELLS[eSpellID]` → retourne nil silencieusement
- **NE JAMAIS** utiliser comme index : `ALL_INTERRUPTS[eSpellID]` → même problème
- **Solution** : itérer la table avec comparaison `==` :
  ```lua
  for id, data in pairs(CC_SPELLS) do
      if eSpellID == id then ... break end
  end
  ```
- **Exception** : le frame "player" (`RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED", "player")`) — le spellID du joueur local N'est PAS tainted, utilisable normalement

### 2. `COMBAT_LOG_EVENT_UNFILTERED` est bloqué
- `frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")` échoue silencieusement
- Toute détection de cast passe par `UNIT_SPELLCAST_SUCCEEDED` + corrélation timestamp

### 3. `GetInspectSpecialization()` peut retourner 0
- API unreliable en Midnight 12.0 pour certains joueurs
- Ne pas se fier uniquement à `SPEC_NO_INTERRUPT[specID]` — fallback via `UnitGroupRolesAssigned`
- Fix en place dans `ScanInspectTalents` : si specID=0 et role=HEALER → retirer du tracking

### 4. Valeurs "secret" / tainted dans `table.concat`
- `type(v)` peut retourner `"string"` pour une valeur tainted → le check `type(v) == "string"` ne suffit pas
- `table.concat` (fonction C) rejette les valeurs tainted même si `type()` dit "string"
- **Solution** : stocker `v .. ""` (copie safe) au lieu de `v` directement :
  ```lua
  local ok, safe = pcall(function() return v .. "" end)
  if ok and type(safe) == "string" then slice[#slice + 1] = safe end
  ```

---

## Patterns Lua dangereux — erreurs récurrentes

### 5. Forward declaration + `local function` = shadowing silencieux
- **Problème** : déclarer `local ProcessInspectQueue` en haut du fichier, puis écrire `local function ProcessInspectQueue()` plus bas → crée une NOUVELLE variable locale, la forward declaration reste nil
- Les closures définies entre les deux capturent la forward declaration (nil), pas la fonction
- **Règle** : si une forward declaration existe, utiliser `FunctionName = function()` pour l'assigner, JAMAIS `local function FunctionName()`
- **Vérifier** à chaque fois qu'on crée une fonction : est-ce qu'il y a déjà un `local NomFonction` plus haut ?

### 6. Vérifier les deux endroits quand on ajoute un `C_Timer.After(delay, callback)`
- `callback` doit être une fonction non-nil au moment de l'appel
- Si c'est une forward declaration, s'assurer qu'elle est assignée AVANT que l'event qui déclenche le timer puisse firer

---

## Architecture CC Tracker

- `ccAddonUsers` : table name → { class, spellID, spellName, baseCd, cdEnd, icon, isSelf }
- **Self** : détecté via `playerCastFrame` ("player" unit) → spellID accessible normalement
- **Party** : détecté via boucle `==` dans `RegisterPartyWatchers` (UNIT_SPELLCAST_SUCCEEDED party1-4)
- **Addon peers** : reçoivent aussi `CCCAST:spellID:cd` via addon message (si addon installé)
- `PopulateCCUsers()` : crée les entrées à partir du roster, préserve les cdEnd existants

## Architecture Interrupt Tracker

- `partyAddonUsers` : joueurs confirmés avec l'addon installé
- `noInterruptPlayers` : healers/specs sans interrupt (Resto Druid, Holy Priest, etc.)
- `SPEC_NO_INTERRUPT` : specIDs qui n'ont pas d'interrupt
- `HEALER_KEEPS_KICK` : `{ SHAMAN = true }` — Resto Shaman garde Wind Shear
- Détection interrupt : corrélation timestamp `UNIT_SPELLCAST_SUCCEEDED` + `UNIT_SPELLCAST_INTERRUPTED` (delta < 0.5s)

## Fenêtres UI — Positions sticky

- `configFrame` : fenêtre principale Settings (draggable)
- `statsFrame` : panneau stats, ancré à GAUCHE : `TOPRIGHT, configFrame, TOPLEFT, -4, 0`
- `scoreFrame` : panneau score, ancré à DROITE en HAUT : `TOPLEFT, configFrame, TOPRIGHT, 4, 0`
- `ccConfigFrame` : panneau Configure CC Tracker, ancré à DROITE en BAS : `BOTTOMLEFT, configFrame, BOTTOMRIGHT, 4, 0`
- **Règle** : "exterior right" = `BOTTOMLEFT` du panneau = `BOTTOMRIGHT` du parent (pas TOPRIGHT→BOTTOMRIGHT qui place EN DESSOUS)

---

## Fichiers clés

| Fichier | Rôle |
|---|---|
| `LoxxInterruptTracker.lua` | Fichier principal, ~5900+ lignes |
| `RotationManager.lua` | Gestion de la rotation des kicks |
| `localization.lua` | Toutes les locales (9 langues) |
| `LoxxInterruptTracker.toc` | Version + metadata addon |
| `build_release.py` | Script obfuscation + ZIP (non versionné, dans .gitignore) |

## Version actuelle
- Dernière version pushée : **1.5.5.16**
- Format : `local LOXX_VERSION = "X.Y.Z.W"` dans LoxxInterruptTracker.lua + `## Version: X.Y.Z.W` dans .toc

---

## Avant chaque modification de code — checklist

1. Est-ce que je touche du code qui utilise `eSpellID` ? → Vérifier règle #1
2. Est-ce que je crée une nouvelle fonction ? → Vérifier s'il y a une forward declaration (règle #5)
3. Est-ce que j'utilise `table.concat` sur des données venant des events WoW ? → Règle #4
4. Est-ce que je modifie la position d'une fenêtre ? → Vérifier les ancres sticky (section UI)
5. Est-ce que la version est bien incrémentée dans `.lua` ET `.toc` ?
