--[[
    Loxx Interrupt Tracker — Localization
    Supported locales: enUS, frFR, deDE, itIT, esES, esMX
    English is the default; locale blocks override individual keys.
]]

local locale = GetLocale()

LoxxL = {
    -- ── Tracker frame ──────────────────────────────────────────────
    ["TITLE"]            = "Interrupts",
    ["NO_KICK"]          = "No kick available",
    ["READY"]            = "READY",
    ["TOOLTIP_CD"]       = "CD: %.1fs / %.0fs",
    ["TOOLTIP_READY"]    = "READY",

    -- ── Alert band ─────────────────────────────────────────────────
    ["ALERT_ONE_READY"]  = "%s — READY",
    ["ALERT_N_READY"]    = "%d kicks ready  (%s)",
    ["ALERT_INCOMING"]   = "%s in %.1fs",
    ["ALERT_NO_KICK"]    = "NO KICK — %.0fs",

    -- ── Settings window ────────────────────────────────────────────
    ["SETTINGS_TITLE"]   = "Loxx Interrupt Tracker",
    ["SEC_DISPLAY"]      = "DISPLAY",
    ["SEC_OPTIONS"]      = "OPTIONS",
    ["SEC_APPEARANCE"]   = "APPEARANCE",
    ["SEC_SHOW_IN"]      = "SHOW IN",
    ["SEC_SOUND"]        = "SOUND",
    ["SEC_UI"]           = "UI",
    ["SEC_ROTATION"]     = "ROTATION",

    ["SL_OPACITY"]       = "Opacity: %.0f%%",
    ["SL_WIDTH"]         = "Width: %dpx",
    ["SL_HEIGHT"]        = "Height: %dpx",
    ["SL_NAME_SIZE"]     = "Name Size: %d",
    ["SL_CD_SIZE"]       = "CD Size: %d",
    ["SL_READY_SIZE"]    = "Ready Size: %d",

    ["DD_FONT"]          = "Font: ",
    ["DD_COLOR"]         = "Color: ",
    ["DD_BAR_TEXTURE"]   = "Bar Texture: ",
    ["DD_SOUND"]         = "Sound: ",

    ["CB_SHOW_TITLE"]    = "Show Title",
    ["CB_LOCK_POS"]      = "Lock Position",
    ["CB_SHOW_READY"]    = "Show READY",
    ["CB_KICKS_BAR"]     = "Show 'X kicks ready' bar",
    ["CB_HIDE_OOC"]      = "Hide out of combat",
    ["CB_TOOLTIP"]       = "Tooltip on Hover",
    ["CB_ROTATION"]      = "Enable Rotation",

    ["BTN_CHANGELOG"]    = "Changelog",
    ["BTN_SAVE_POS"]     = "Save Position",
    ["BTN_RUN_STATS"]    = "Run Stats",
    ["BTN_COMMANDS"]     = "Commands",
    ["BTN_MANAGE_ROT"]   = "Manage Kick Rotation",

    ["VIS_DUNGEONS"]     = "Dungeons",
    ["VIS_ARENA"]        = "Arena",
    ["VIS_OPEN_WORLD"]   = "Open World",

    ["ROT_MAINTENANCE"]  = "Under Maintenance",

    -- ── Rotation panel ─────────────────────────────────────────────
    ["ROT_TITLE"]        = "Kick Rotation",
    ["ROT_RESET"]        = "Reset",
    ["ROT_SYNC"]         = "Sync Party",
    ["ROT_SYNCED"]       = "Rotation synced to party.",

    -- ── Changelog window ───────────────────────────────────────────
    ["CHANGELOG_TITLE"]  = "Changelog",
    ["CHANGELOG_EMPTY"]  = "No changelog available.",

    -- ── Stats window ───────────────────────────────────────────────
    ["STATS_TITLE"]      = "Interrupt Statistics",
    ["STATS_CLEAR"]      = "Clear All",
    ["STATS_ALLTIME"]    = "All-time · %d %s",
    ["STATS_RUN"]        = "run",
    ["STATS_RUNS"]       = "runs",
    ["STATS_CURRENT"]    = "Current Run",
    ["STATS_HISTORY"]    = "History  (%d)",
    ["STATS_NO_KICKS"]   = "No interrupts recorded yet in this run.",
    ["STATS_EMPTY"]      = "No stats yet",
    ["STATS_HINT"]       = "Start a dungeon/arena and interrupt casts to record data.",
    ["STATS_TIP"]        = "Tip: use /loxx test to quickly validate display behavior.",
    ["STATS_KICK"]       = "kick",
    ["STATS_KICKS"]      = "kicks",

    -- ── Save position messages ─────────────────────────────────────
    ["POS_SAVED"]        = "Position saved!",
    ["POS_NO_FRAME"]     = "No frame available to save.",
    ["POS_HIDDEN"]       = "Frame hidden, cannot save position.",

    -- ── Slash command outputs ──────────────────────────────────────
    ["CMD_LOCKED"]       = "Locked",
    ["CMD_UNLOCKED"]     = "Unlocked",
    ["CMD_TEST_ON"]      = "Test mode |cFF00FF00ON|r - 3 fake players. /loxx test to stop.",
    ["CMD_TEST_OFF"]     = "Test mode |cFFFF4444OFF|r",
    ["CMD_HIST_CLEAR"]   = "Run history cleared.",
    ["CMD_LOG_CLEAR"]    = "Error log cleared.",
    ["CMD_NO_LOGS"]      = "No errors recorded.",
}

-- ── French ─────────────────────────────────────────────────────────
if locale == "frFR" then
    local T = LoxxL
    T["TITLE"]           = "Interruptions"
    T["NO_KICK"]         = "Aucune interruption disponible"
    T["READY"]           = "PRÊT"
    T["TOOLTIP_READY"]   = "PRÊT"
    T["ALERT_ONE_READY"] = "%s — PRÊT"
    T["ALERT_N_READY"]   = "%d interruptions prêtes  (%s)"
    T["ALERT_INCOMING"]  = "%s dans %.1fs"
    T["ALERT_NO_KICK"]   = "AUCUNE INTERR. — %.0fs"
    T["SEC_DISPLAY"]     = "AFFICHAGE"
    T["SEC_OPTIONS"]     = "OPTIONS"
    T["SEC_APPEARANCE"]  = "APPARENCE"
    T["SEC_SHOW_IN"]     = "AFFICHER DANS"
    T["SEC_SOUND"]       = "SON"
    T["SEC_UI"]          = "INTERFACE"
    T["SEC_ROTATION"]    = "ROTATION"
    T["SL_OPACITY"]      = "Opacité : %.0f%%"
    T["SL_WIDTH"]        = "Largeur : %dpx"
    T["SL_HEIGHT"]       = "Hauteur : %dpx"
    T["SL_NAME_SIZE"]    = "Taille nom : %d"
    T["SL_CD_SIZE"]      = "Taille CD : %d"
    T["SL_READY_SIZE"]   = "Taille prêt : %d"
    T["DD_FONT"]         = "Police : "
    T["DD_COLOR"]        = "Couleur : "
    T["DD_BAR_TEXTURE"]  = "Texture barre : "
    T["DD_SOUND"]        = "Son : "
    T["CB_SHOW_TITLE"]   = "Afficher le titre"
    T["CB_LOCK_POS"]     = "Verrouiller la position"
    T["CB_SHOW_READY"]   = "Afficher PRÊT"
    T["CB_KICKS_BAR"]    = "Barre 'X interr. disponibles'"
    T["CB_HIDE_OOC"]     = "Masquer hors combat"
    T["CB_TOOLTIP"]      = "Info-bulle au survol"
    T["CB_ROTATION"]     = "Activer la rotation"
    T["BTN_CHANGELOG"]   = "Changelog"
    T["BTN_SAVE_POS"]    = "Sauver position"
    T["BTN_RUN_STATS"]   = "Statistiques"
    T["BTN_COMMANDS"]    = "Commandes"
    T["BTN_MANAGE_ROT"]  = "Gérer la rotation"
    T["VIS_DUNGEONS"]    = "Donjons"
    T["VIS_ARENA"]       = "Arène"
    T["VIS_OPEN_WORLD"]  = "Monde ouvert"
    T["ROT_MAINTENANCE"] = "En maintenance"
    T["ROT_TITLE"]       = "Rotation d'interruptions"
    T["ROT_RESET"]       = "Réinitialiser"
    T["ROT_SYNC"]        = "Sync groupe"
    T["ROT_SYNCED"]      = "Rotation synchronisée avec le groupe."
    T["CHANGELOG_TITLE"] = "Changelog"
    T["CHANGELOG_EMPTY"] = "Aucun changelog disponible."
    T["STATS_TITLE"]     = "Statistiques d'interruptions"
    T["STATS_CLEAR"]     = "Tout effacer"
    T["STATS_ALLTIME"]   = "Total · %d %s"
    T["STATS_RUN"]       = "run"
    T["STATS_RUNS"]      = "runs"
    T["STATS_CURRENT"]   = "Donjon en cours"
    T["STATS_HISTORY"]   = "Historique  (%d)"
    T["STATS_NO_KICKS"]  = "Aucune interruption enregistrée dans ce run."
    T["STATS_EMPTY"]     = "Aucune statistique"
    T["STATS_HINT"]      = "Commence un donjon et interromps des sorts pour enregistrer des données."
    T["STATS_TIP"]       = "Astuce : utilise /loxx test pour valider l'affichage."
    T["STATS_KICK"]      = "interruption"
    T["STATS_KICKS"]     = "interruptions"
    T["POS_SAVED"]       = "Position sauvegardée !"
    T["POS_NO_FRAME"]    = "Aucune fenêtre disponible pour sauvegarder."
    T["POS_HIDDEN"]      = "Fenêtre masquée, impossible de sauvegarder la position."
    T["CMD_LOCKED"]      = "Verrouillé"
    T["CMD_UNLOCKED"]    = "Déverrouillé"
    T["CMD_TEST_ON"]     = "Mode test |cFF00FF00ACTIVÉ|r - 3 joueurs fictifs. /loxx test pour arrêter."
    T["CMD_TEST_OFF"]    = "Mode test |cFFFF4444DÉSACTIVÉ|r"
    T["CMD_HIST_CLEAR"]  = "Historique des runs effacé."
    T["CMD_LOG_CLEAR"]   = "Journal d'erreurs effacé."
    T["CMD_NO_LOGS"]     = "Aucune erreur enregistrée."
end

-- ── German ──────────────────────────────────────────────────────────
if locale == "deDE" then
    local T = LoxxL
    T["TITLE"]           = "Unterbrechungen"
    T["NO_KICK"]         = "Kein Kick verfügbar"
    T["READY"]           = "BEREIT"
    T["TOOLTIP_READY"]   = "BEREIT"
    T["ALERT_ONE_READY"] = "%s — BEREIT"
    T["ALERT_N_READY"]   = "%d Kicks bereit  (%s)"
    T["ALERT_INCOMING"]  = "%s in %.1fs"
    T["ALERT_NO_KICK"]   = "KEIN KICK — %.0fs"
    T["SEC_DISPLAY"]     = "ANZEIGE"
    T["SEC_OPTIONS"]     = "OPTIONEN"
    T["SEC_APPEARANCE"]  = "AUSSEHEN"
    T["SEC_SHOW_IN"]     = "ANZEIGEN IN"
    T["SEC_SOUND"]       = "TON"
    T["SEC_UI"]          = "BENUTZEROBERFLÄCHE"
    T["SEC_ROTATION"]    = "ROTATION"
    T["SL_OPACITY"]      = "Deckkraft: %.0f%%"
    T["SL_WIDTH"]        = "Breite: %dpx"
    T["SL_HEIGHT"]       = "Höhe: %dpx"
    T["SL_NAME_SIZE"]    = "Namengröße: %d"
    T["SL_CD_SIZE"]      = "CD-Größe: %d"
    T["SL_READY_SIZE"]   = "Bereit-Größe: %d"
    T["DD_FONT"]         = "Schrift: "
    T["DD_COLOR"]        = "Farbe: "
    T["DD_BAR_TEXTURE"]  = "Balkentextur: "
    T["DD_SOUND"]        = "Ton: "
    T["CB_SHOW_TITLE"]   = "Titel anzeigen"
    T["CB_LOCK_POS"]     = "Position sperren"
    T["CB_SHOW_READY"]   = "BEREIT anzeigen"
    T["CB_KICKS_BAR"]    = "'X Kicks bereit'-Leiste anzeigen"
    T["CB_HIDE_OOC"]     = "Außerhalb Kampf ausblenden"
    T["CB_TOOLTIP"]      = "Tooltip beim Hover"
    T["CB_ROTATION"]     = "Rotation aktivieren"
    T["BTN_CHANGELOG"]   = "Changelog"
    T["BTN_SAVE_POS"]    = "Position speichern"
    T["BTN_RUN_STATS"]   = "Run-Statistiken"
    T["BTN_COMMANDS"]    = "Befehle"
    T["BTN_MANAGE_ROT"]  = "Kick-Rotation verwalten"
    T["VIS_DUNGEONS"]    = "Dungeons"
    T["VIS_ARENA"]       = "Arena"
    T["VIS_OPEN_WORLD"]  = "Offene Welt"
    T["ROT_MAINTENANCE"] = "In Wartung"
    T["ROT_TITLE"]       = "Kick-Rotation"
    T["ROT_RESET"]       = "Zurücksetzen"
    T["ROT_SYNC"]        = "Gruppe synchronisieren"
    T["ROT_SYNCED"]      = "Rotation mit Gruppe synchronisiert."
    T["CHANGELOG_TITLE"] = "Changelog"
    T["CHANGELOG_EMPTY"] = "Kein Changelog verfügbar."
    T["STATS_TITLE"]     = "Unterbrechungsstatistiken"
    T["STATS_CLEAR"]     = "Alles löschen"
    T["STATS_ALLTIME"]   = "Gesamt · %d %s"
    T["STATS_RUN"]       = "Run"
    T["STATS_RUNS"]      = "Runs"
    T["STATS_CURRENT"]   = "Aktueller Run"
    T["STATS_HISTORY"]   = "Verlauf  (%d)"
    T["STATS_NO_KICKS"]  = "Noch keine Unterbrechungen in diesem Run aufgezeichnet."
    T["STATS_EMPTY"]     = "Noch keine Statistiken"
    T["STATS_HINT"]      = "Starte einen Dungeon und unterbreche Zauber, um Daten aufzuzeichnen."
    T["STATS_TIP"]       = "Tipp: /loxx test zum Testen der Anzeige verwenden."
    T["STATS_KICK"]      = "Kick"
    T["STATS_KICKS"]     = "Kicks"
    T["POS_SAVED"]       = "Position gespeichert!"
    T["POS_NO_FRAME"]    = "Kein Fenster zum Speichern verfügbar."
    T["POS_HIDDEN"]      = "Fenster ausgeblendet, Position kann nicht gespeichert werden."
    T["CMD_LOCKED"]      = "Gesperrt"
    T["CMD_UNLOCKED"]    = "Entsperrt"
    T["CMD_TEST_ON"]     = "Testmodus |cFF00FF00EIN|r - 3 Spieler. /loxx test zum Beenden."
    T["CMD_TEST_OFF"]    = "Testmodus |cFFFF4444AUS|r"
    T["CMD_HIST_CLEAR"]  = "Run-Verlauf gelöscht."
    T["CMD_LOG_CLEAR"]   = "Fehlerprotokoll gelöscht."
    T["CMD_NO_LOGS"]     = "Keine Fehler aufgezeichnet."
end

-- ── Italian ─────────────────────────────────────────────────────────
if locale == "itIT" then
    local T = LoxxL
    T["TITLE"]           = "Interruzioni"
    T["NO_KICK"]         = "Nessuna interruzione disponibile"
    T["READY"]           = "PRONTO"
    T["TOOLTIP_READY"]   = "PRONTO"
    T["ALERT_ONE_READY"] = "%s — PRONTO"
    T["ALERT_N_READY"]   = "%d interruzioni pronte  (%s)"
    T["ALERT_INCOMING"]  = "%s tra %.1fs"
    T["ALERT_NO_KICK"]   = "NESSUNA INTERR. — %.0fs"
    T["SEC_DISPLAY"]     = "VISUALIZZAZIONE"
    T["SEC_OPTIONS"]     = "OPZIONI"
    T["SEC_APPEARANCE"]  = "ASPETTO"
    T["SEC_SHOW_IN"]     = "MOSTRA IN"
    T["SEC_SOUND"]       = "SUONO"
    T["SEC_UI"]          = "INTERFACCIA"
    T["SEC_ROTATION"]    = "ROTAZIONE"
    T["SL_OPACITY"]      = "Opacità: %.0f%%"
    T["SL_WIDTH"]        = "Larghezza: %dpx"
    T["SL_HEIGHT"]       = "Altezza: %dpx"
    T["SL_NAME_SIZE"]    = "Dim. nome: %d"
    T["SL_CD_SIZE"]      = "Dim. CD: %d"
    T["SL_READY_SIZE"]   = "Dim. pronto: %d"
    T["DD_FONT"]         = "Font: "
    T["DD_COLOR"]        = "Colore: "
    T["DD_BAR_TEXTURE"]  = "Texture barra: "
    T["DD_SOUND"]        = "Suono: "
    T["CB_SHOW_TITLE"]   = "Mostra titolo"
    T["CB_LOCK_POS"]     = "Blocca posizione"
    T["CB_SHOW_READY"]   = "Mostra PRONTO"
    T["CB_KICKS_BAR"]    = "Barra 'X interr. pronte'"
    T["CB_HIDE_OOC"]     = "Nascondi fuori combattimento"
    T["CB_TOOLTIP"]      = "Tooltip al passaggio"
    T["CB_ROTATION"]     = "Abilita rotazione"
    T["BTN_CHANGELOG"]   = "Changelog"
    T["BTN_SAVE_POS"]    = "Salva posizione"
    T["BTN_RUN_STATS"]   = "Statistiche"
    T["BTN_COMMANDS"]    = "Comandi"
    T["BTN_MANAGE_ROT"]  = "Gestisci rotazione"
    T["VIS_DUNGEONS"]    = "Dungeon"
    T["VIS_ARENA"]       = "Arena"
    T["VIS_OPEN_WORLD"]  = "Mondo aperto"
    T["ROT_MAINTENANCE"] = "In manutenzione"
    T["ROT_TITLE"]       = "Rotazione kick"
    T["ROT_RESET"]       = "Reimposta"
    T["ROT_SYNC"]        = "Sincronizza gruppo"
    T["ROT_SYNCED"]      = "Rotazione sincronizzata con il gruppo."
    T["CHANGELOG_TITLE"] = "Changelog"
    T["CHANGELOG_EMPTY"] = "Nessun changelog disponibile."
    T["STATS_TITLE"]     = "Statistiche interruzioni"
    T["STATS_CLEAR"]     = "Cancella tutto"
    T["STATS_ALLTIME"]   = "Totale · %d %s"
    T["STATS_RUN"]       = "run"
    T["STATS_RUNS"]      = "run"
    T["STATS_CURRENT"]   = "Run corrente"
    T["STATS_HISTORY"]   = "Cronologia  (%d)"
    T["STATS_NO_KICKS"]  = "Nessuna interruzione registrata in questo run."
    T["STATS_EMPTY"]     = "Nessuna statistica"
    T["STATS_HINT"]      = "Inizia un dungeon e interrompi incantesimi per registrare dati."
    T["STATS_TIP"]       = "Suggerimento: usa /loxx test per testare la visualizzazione."
    T["STATS_KICK"]      = "interruzione"
    T["STATS_KICKS"]     = "interruzioni"
    T["POS_SAVED"]       = "Posizione salvata!"
    T["POS_NO_FRAME"]    = "Nessuna finestra disponibile per salvare."
    T["POS_HIDDEN"]      = "Finestra nascosta, impossibile salvare la posizione."
    T["CMD_LOCKED"]      = "Bloccato"
    T["CMD_UNLOCKED"]    = "Sbloccato"
    T["CMD_TEST_ON"]     = "Modalità test |cFF00FF00ATTIVA|r - 3 giocatori. /loxx test per fermare."
    T["CMD_TEST_OFF"]    = "Modalità test |cFFFF4444DISATTIVA|r"
    T["CMD_HIST_CLEAR"]  = "Cronologia run cancellata."
    T["CMD_LOG_CLEAR"]   = "Log errori cancellato."
    T["CMD_NO_LOGS"]     = "Nessun errore registrato."
end

-- ── Spanish ─────────────────────────────────────────────────────────
if locale == "esES" or locale == "esMX" then
    local T = LoxxL
    T["TITLE"]           = "Interrupciones"
    T["NO_KICK"]         = "Sin interrupción disponible"
    T["READY"]           = "LISTO"
    T["TOOLTIP_READY"]   = "LISTO"
    T["ALERT_ONE_READY"] = "%s — LISTO"
    T["ALERT_N_READY"]   = "%d interrupciones listas  (%s)"
    T["ALERT_INCOMING"]  = "%s en %.1fs"
    T["ALERT_NO_KICK"]   = "SIN INTERR. — %.0fs"
    T["SEC_DISPLAY"]     = "PANTALLA"
    T["SEC_OPTIONS"]     = "OPCIONES"
    T["SEC_APPEARANCE"]  = "APARIENCIA"
    T["SEC_SHOW_IN"]     = "MOSTRAR EN"
    T["SEC_SOUND"]       = "SONIDO"
    T["SEC_UI"]          = "INTERFAZ"
    T["SEC_ROTATION"]    = "ROTACIÓN"
    T["SL_OPACITY"]      = "Opacidad: %.0f%%"
    T["SL_WIDTH"]        = "Ancho: %dpx"
    T["SL_HEIGHT"]       = "Alto: %dpx"
    T["SL_NAME_SIZE"]    = "Tam. nombre: %d"
    T["SL_CD_SIZE"]      = "Tam. CD: %d"
    T["SL_READY_SIZE"]   = "Tam. listo: %d"
    T["DD_FONT"]         = "Fuente: "
    T["DD_COLOR"]        = "Color: "
    T["DD_BAR_TEXTURE"]  = "Textura barra: "
    T["DD_SOUND"]        = "Sonido: "
    T["CB_SHOW_TITLE"]   = "Mostrar título"
    T["CB_LOCK_POS"]     = "Bloquear posición"
    T["CB_SHOW_READY"]   = "Mostrar LISTO"
    T["CB_KICKS_BAR"]    = "Barra 'X interr. listas'"
    T["CB_HIDE_OOC"]     = "Ocultar fuera de combate"
    T["CB_TOOLTIP"]      = "Tooltip al pasar el cursor"
    T["CB_ROTATION"]     = "Activar rotación"
    T["BTN_CHANGELOG"]   = "Changelog"
    T["BTN_SAVE_POS"]    = "Guardar posición"
    T["BTN_RUN_STATS"]   = "Estadísticas"
    T["BTN_COMMANDS"]    = "Comandos"
    T["BTN_MANAGE_ROT"]  = "Gestionar rotación"
    T["VIS_DUNGEONS"]    = "Mazmorras"
    T["VIS_ARENA"]       = "Arena"
    T["VIS_OPEN_WORLD"]  = "Mundo abierto"
    T["ROT_MAINTENANCE"] = "En mantenimiento"
    T["ROT_TITLE"]       = "Rotación de kicks"
    T["ROT_RESET"]       = "Reiniciar"
    T["ROT_SYNC"]        = "Sincronizar grupo"
    T["ROT_SYNCED"]      = "Rotación sincronizada con el grupo."
    T["CHANGELOG_TITLE"] = "Changelog"
    T["CHANGELOG_EMPTY"] = "No hay changelog disponible."
    T["STATS_TITLE"]     = "Estadísticas de interrupciones"
    T["STATS_CLEAR"]     = "Limpiar todo"
    T["STATS_ALLTIME"]   = "Total · %d %s"
    T["STATS_RUN"]       = "run"
    T["STATS_RUNS"]      = "runs"
    T["STATS_CURRENT"]   = "Run actual"
    T["STATS_HISTORY"]   = "Historial  (%d)"
    T["STATS_NO_KICKS"]  = "Ninguna interrupción registrada en este run."
    T["STATS_EMPTY"]     = "Sin estadísticas"
    T["STATS_HINT"]      = "Inicia una mazmorra e interrumpe hechizos para registrar datos."
    T["STATS_TIP"]       = "Consejo: usa /loxx test para validar la visualización."
    T["STATS_KICK"]      = "interrupción"
    T["STATS_KICKS"]     = "interrupciones"
    T["POS_SAVED"]       = "¡Posición guardada!"
    T["POS_NO_FRAME"]    = "No hay ventana disponible para guardar."
    T["POS_HIDDEN"]      = "Ventana oculta, no se puede guardar la posición."
    T["CMD_LOCKED"]      = "Bloqueado"
    T["CMD_UNLOCKED"]    = "Desbloqueado"
    T["CMD_TEST_ON"]     = "Modo prueba |cFF00FF00ACTIVADO|r - 3 jugadores. /loxx test para parar."
    T["CMD_TEST_OFF"]    = "Modo prueba |cFFFF4444DESACTIVADO|r"
    T["CMD_HIST_CLEAR"]  = "Historial de runs eliminado."
    T["CMD_LOG_CLEAR"]   = "Registro de errores eliminado."
    T["CMD_NO_LOGS"]     = "No hay errores registrados."
end
