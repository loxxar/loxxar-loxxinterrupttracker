--[[
    Loxx Interrupt Tracker - Changelog
    Edit this file to update the changelog text displayed in-game.
]]

LOXX_CHANGELOG = [[
|cFFFFD100v1.5.5.3|r
• New bar design: each bar now has a subtle class-color background matching the player's class
• Ready state is now visually cleaner — the bar clears when a player is ready
• CC tracker bars now follow the same design as interrupt bars
• Fixed: NEXT indicator no longer appears as a stray character on player names
• Fixed: dungeon log viewer no longer crashes when viewing long sessions

|cFFFFD100v1.5.5.2|r
• Sync: your spec is now included when syncing with group members
• New option: enable or disable broadcasting your kick data to the group
• Peer-to-peer sync protocol now supports full spec identification

|cFFFFD100v1.5.5.1|r
• Kick Rotation Manager — automatically determines who should interrupt next
• NEXT indicator on bars — green ▶ marks the next kicker in rotation
• Estimated badge — ~ on bars without the addon (class-based tracking)
• Rotation syncs across all party members with the addon
• New options: show/hide NEXT indicator and estimated badge

|cFFFFD100v1.5.5|r
• Fix: Hunter kick bar no longer briefly resets during combat
• Fix: CC Tracker cooldowns now accurate for all CC abilities

|cFFFFD100v1.5.4|r
• Fix: cast alert no longer causes taint error in WoW 12.0 (secret boolean from UnitCastingInfo)

|cFFFFD100v1.5.3|r
• Fix: NPC companions in Follower Dungeons (e.g. Valeera Sanguinar) no longer receive false kick attribution

|cFFFFD100v1.5.2|r
• Fix: your own kick now correctly competes with party members for attribution

|cFFFFD100v1.5.1|r
• Fix: CC Tracker bars now correctly display in dungeons

|cFFFFD100v1.5.0|r
• CC Tracker — dedicated window tracking crowd-control per class (Polymorph, Blind, etc.)
• Healer support — tracker now visible even when your spec has no interrupt
• All satellite windows are sticky to the Settings window and close together with it
• Brewmaster/Windwalker Monk now correctly detected when group data loads slowly
• Spell school lock detection — channels cut short trigger an interrupt credit

|cFFFFD100v1.4.4|r
• Player death detection — bar resets to CD 0 immediately when a party member dies
• Interruptible cast alert — flash + sound when a mob starts a kickable cast
• /loxx score — all-time kick/miss ratio per player
• /loxx csv — export full all-time stats to chat (CSV format)

|cFFFFD100v1.4.3|r
• Fix: error when casting an interrupt (NewMissToken nil)

|cFFFFD100v1.4.2|r
• Fix: startup error causing addon to break on load

|cFFFFD100v1.4.1|r
• Kick attribution is now more accurate, especially when multiple players interrupt at the same time
• Missed kicks are no longer falsely reported when a mob dies or gets CC'd
• Performance improved — the tracker runs lighter when you're out of combat
• Players without the addon are now marked as "(estimated)" in the tooltip

|cFFFFD100v1.3.4|r
• Each bar now shows a red badge when kicks were missed during the run
• Run stats archive automatically at the end of a Mythic+ key
• Right-click the tracker to open Settings
• New option: sort bars alphabetically
• /loxx miss — print missed kicks for the current run
• /loxx export — print a full run summary to chat

|cFFFFD100v1.3.3|r
• Stats can now be filtered by character or viewed across all characters
• Missed kicks tracked and displayed per player per run
• Tooltip now shows player name with class color

|cFFFFD100v1.3.2|r
• Self-cast interrupts now correctly tracked and attributed
• All personal kicks (Skull Bash, Wind Shear, Pummel, etc.) properly detected

|cFFFFD100v1.3.1|r
• Fixed cooldown tracking not updating after a kick
• Fixed duplicate kick detection
• Dungeon log system added: /loxx record, /loxx record show, /loxx record clear
• 10 languages now supported (added Korean, Japanese, Chinese Simplified & Traditional)
• Kick Rotation Manager removed — replaced by core interrupt tracking

|cFFFFD100v1.3.0|r
• Full localization: English, Français, Deutsch, Italiano, Español
• Escape key closes the Settings window
• Stats and Changelog close automatically when Settings closes

|cFFFFD100v1.2.5.5|r
• Run Stats redesigned with all-time totals and podium ranking
• Run duration tracked and displayed
• Frame position saved account-wide across all characters
• Shadow Priest and Demo Warlock (Axe Toss) now correctly tracked

|cFFFFD100v1.2.5.4|r
• Commands button added to Settings footer
• Dropdowns redesigned in native Blizzard style
• Stats window now shows a message when no data is available yet

|cFFFFD100v1.2.5.3|r
• Preset dropdowns for fonts, colors, and bar textures

|cFFFFD100v1.2.5.2|r
• Resto Shaman now correctly keeps Wind Shear

|cFFFFD100v1.2.5|r
• Font and bar texture selectors added to Settings

|cFFFFD100v1.2.4.4|r
• "Kicks Ready" bar added — shows global kick availability at a glance

|cFFFFD100v1.2.4|r
• Frame position saved between sessions
• Kick Rotation synced in real time across party addon users

|cFFFFD100v1.2.3|r
• Alert band redesigned with color-coded states (ready / incoming / no kick)

|cFFFFD100v1.2.2|r
• Full WoW Midnight 12.0 compatibility
]]
