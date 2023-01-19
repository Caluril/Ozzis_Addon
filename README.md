# Ozzis_Addon
A simple addon that adds Media (fonts, backgrounds, textures, etc) for ElvUI or SharedMedia addons and additional slash commands and functions for better quality of life.

I have implemented a huge change, hopefully for the better. I have decided to split the commands out to their individual file. If you don't want a specific command you can simply disable it by editing the .toc file and placing a # in front of it. e.g., #Modules\cvars.lua
I have optimized some of the commands that taint in clients such as Classic Wrath, where now they will be ignored. I have also resolved dungeon / raid difficulties, these will now detect which client and then present the appropriate commands.

Version : 3.0.0

# Slash Commands (Loaded Addons)
* Dugi Guides '/dg' - If DugiGuides is loaded this command will work along with default '/dugi'.
* Reload UI '/rl' or '/reload' - If ElvUI is not loaded then these slash commands will be available.
* NoTaint2 - '/nt2' - If !!NoTaint2 is loaded then this slash command will work along with the default '/notaint2'.
* BugSack - '/bug' - If BugSack is loaded then this slash command will work along with the default '/bugsack'.
* BadBoy - '/bb' - If BadBoy is loaded then this slash command will work along with the default '/badboy'.

# Slash Commands (Modules)
## CVars
* Script CVars - '/sc' - Adds a series of functions:
    1. '/sc errors on' = Turns scriptErrors on
    2. '/sc errors off' = Turns scriptErrors off
    3. '/sc profile on' = Turns scriptProfile on
    4. '/sc profile off' = Turns scriptProfile off
    5. '/sc warning on' = Turns scriptWarning on
    6. '/sc warning off' = Turns scriptWarning off
    7. '/sc player 20'  = Sets the nameplatePlayerMaxDistance to 20
    8. '/sc player 41' = Sets the nameplatePlayerMaxDistance to 41
    9. '/sc hw on' = Hardware Detect on
    10. '/sc hw off' = Hardware Detect off

## FStack
* FStack - '/fs' - Adds '/fs' slash command along with blizzard's '/fstack' slash command.

## Edit Mode
* Edit Mode - '/em' - Adds '/em' slash command that opens or closes Edit Mode.

## Chat Log
* Chat Log - '/chatlog' - Adds '/chatlog' with functions:
    1. '/chatlog on' = Turns Chat Logging on.
    2. '/chatlog off' = Turns Chat Logging off.

## Reset Instances
* ResetInstance - '/ri' - Adds '/ri' slash command to reset all instances.

## Delete Macros
* Delete Macros - '/dm' - Adds '/dm' slash commands with functions:
    1. '/dm acc' - Deletes all Account-wide macros.
    2. '/dm char' - Deletes all Character-wide macros.
    3. '/dm all' - Deletes all Account-wide and Character-wide macros.

## Reset Action Bars
* Reset all ActionBars - '/ract' - Adds '/ract' slash command that resets ALL action bars, all abilities will be removed.

## Dungeon Difficulty
* Set Dungeon Difficulty - '/d' - Adds a series of functions:
    * Classic Wrath
    1. '/d n' = Dungeon Difficulty to Normal
    2. '/d h' = Dungeon Difficulty to Heroic
    * Retail
    1. '/d n' = Dungeon Difficulty to Normal
    2. '/d h' = Dungeon Difficulty to Heroic
    3. '/d m' = Dungeon Difficulty to Mythic

## Raid Difficulty
* Set Raid Difficulty - '/r' - Adds a series of functions:
    * Calssic Wrath
    1. '/r 10' = Raid to 10 Player
    2. '/r 25' = Raid to 25 Player
    * Retail
    1. '/r n' = Raid Difficulty to Normal
    2. '/r h' = Raid Difficulty to Heroic
    3. '/r m' = Raid Difficulty to Mythic
    4. '/r l10 = Legacy Raid to 10 Player
    5. '/r l25' = Legacy Raid to 25 Player

## Lock Out
* World Boss Lockout Check = '/lc' - Adds '/wb' slash commands with functions:
    1. '/lc wb' = Checks World Boss Lock Outs. e.g., Galleon is locked out this week. or Not locked out this week.
    2. '/lc ins' = Checks Instance Lock Outs. e.g., Garrison Gold is locked out this week. or Not locked out this week.

## MapID
* MapID = '/map' - Adds a series of functions:
    1. '/map' = Outputs your map location e.g., Stormwind City (84)
    2. '/map wmf' = Outputs current map open in World Map Frame (M)

## NPCID
* NPCID = '/npc' - Adds '/npc' slash command to output the targeted npcID e.g., [Thunder Lizard] NPC ID 191827 or [Åleria] is a player with ID 0A69EEA0

## Build
* Build = '/build' - Adds '/build' slash command to output the build info e.g., version = 10.0.2, build = 47631, date = 'Jan 12 2023', tocversion = 100002.

## ScenarioID
* ScenarioID = '/cri' - Adds '/cri' slash commands with functions:
    1. '/cri id' = Shows Scenario ID
    2. '/cri step' = Dumps Step Information

## Garbage
* Garbage = '/gbg' - Adds '/gbg' slash command with functions:
    1. '/gbg collect' = Performs a full garbage-collection cycle
    2. '/gbg restart' = Restarts the garbage collector
    3. '/gbg count' = Returns the total memory in use by Lua (in Kbytes)

# Media
* Backgrounds - None.. *yet!*
* Fonts
    1. Calibri.
    2. Cronos Pro.
    3. Designosaur.
    4. Eason Pro.
    5. Century Gothic.
    6. Imagine.
    7. Mark Pro.
    8. One Slice.
    9. PEPSI.
    10. Restiany.
    11. Roberto Condensed.
    12. ROG.
    13. San Fransisco UI Text.
* Icons - None.. *yet!*
* Sounds
    1. Frankly - Ion: "Frankly that's a skill issue".
    2. Guild Wars 2 Mail - Guild Wars 2 Mail sound.
    3. Guild Wars 2 Message - Guild Wars 2 Message sound.
    4. iPhone Ding - iPhone Ding sound.
    5. Loot Coin - World of Warcraft default Loot Coin sound.
    6. Map Ping - Map Ping sound, used in DugiGuides.
    7. OH Shit! - Oh Shit sound, cool sound for pet death.
    8. Carbonite - Quest Complete, I have this sound disabled if this addon is present.

If there's anything you would like added or changed or you have any suggestions, please let me know via [Github Ticket](https://github.com/Caluril/Ozzis_Addon/issues/) or Discord - [Ozzi#9217](Ozzi#9217)