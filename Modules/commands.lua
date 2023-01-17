local _, addon = ...

for addon=1, GetNumAddOns() do
    local name, _, _, enabled = GetAddOnInfo(addon)
    local loaded = IsAddOnLoaded(addon)
    if name == "DugisGuideViewerZ" and loaded then
        SLASH_DG2 = "/dg";
    elseif name == "ElvUI" and not loaded then
        SLASH_RELOAD_UI1 = "/reload";
        SLASH_RELOAD_UI2 = "/rl";
    elseif name == "!!NoTaint2" and loaded then
        SLASH_NOTAINTII2 = "/nt2";
    elseif name == "BugSack" and loaded then
        SLASH_BugSack2 = "/bug";
    elseif name == "BadBoy" and loaded then
        SLASH_BADBOY2 = "/bb";
    elseif name == "AddonUsage" and loaded then
        SLASH_ADDONUSAGE2 = "/usage";
    end
end

-- Script CVars
SLASH_SCRIPT1 = "/sc";
SlashCmdList['SCRIPT'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc errors on - |rScript Errors ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc errors off - |rScript Errors OFF.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc warning on - |rScript Warnings ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc warning off - |rScript Warnings OFF.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc profile on - |rScript Profile ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc profile off - |rScript Profile OFF.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc player ## - |rChange nameplate max distance (20 or 41)")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc hw on - |rHardware Detect ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc hw off - |rHardware Detect OFF.")
    elseif msg == "errors on" then
        SetCVar("scriptErrors", 1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Errors ON.\nPlease reload the UI for the changes to take effect.")
    elseif msg == "errors off" then
        SetCVar("scriptErrors", 0);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Errors OFF.\nPlease reload the UI for the changes to take effect.")
    elseif msg == "warning on" then
        SetCVar("scriptWarnings", 1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Warnings ON.\nPlease reload the UI for the changes to take effect.")
    elseif msg == "warning off" then
        SetCVar("scriptWarnings", 0);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Warnings OFF.\nPlease reload the UI for the changes to take effect.")
    elseif msg == "profile on" then
        SetCVar("scriptProfile", 1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Profile ON.\nPlease reload the UI for the changes to take effect.")
    elseif msg == "profile off" then
        SetCVar("scriptProfile", 0);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Profile OFF.\nPlease reload the UI for the changes to take effect.")
    elseif msg == "player 20" then
        SetCVar("nameplatePlayerMaxDistance", 20);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rNamePlate Player Max Distance is set to 20\nPlease reload the UI for the changes to take effect.")
    elseif msg == "player 41" then
        SetCVar("nameplatePlayerMaxDistance", 41);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rNamePlate Player Max Distance is set to 41\nPlease reload the UI for the changes to take effect.")
    elseif msg == "hw on" then
        SetCVar("hwDetect", 1)
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rHardware Detect ON.\nPlease reload the UI for the changes to take effect.")
    elseif msg == "hw off" then
        SetCVar("hwDetect", 0)
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rHardware Detect OFF.\nPlease reload the UI for the changes to take effect.")
    end
end

-- ReloadUI /rl or /reload
SlashCmdList.RELOAD_UI = function()
    ReloadUI();
end

-- FrameStack /fs or /fstack
SLASH_FRAMESTK1 = "/fs";
SlashCmdList.FRAMESTK = function()
    LoadAddOn("Blizzard_DebugTools");
    FrameStackTooltip_Toggle();
end

-- EditMode /em
SLASH_EDIT1 = "/em";
SlashCmdList.EDIT = function()
    if not EditModeManagerFrame:IsShown() then
       ShowUIPanel(EditModeManagerFrame);
    elseif EditModeManagerFrame:IsShown() then
       HideUIPanel(EditModeManagerFrame);
    end
end

-- ChatLogging /chatlog
SLASH_CHATLOG1 = "/chatlog";
SlashCmdList['CHATLOG'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/chatlog on - |rEnable Chat Logging.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/chatlog off - |rDisable Chat Logging.")
    elseif msg == "on" then
        IsLogging = LoggingChat(1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rChat Logging is Enabled")
    elseif msg == "off" then
        IsLogging = LoggingChat(nil);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rChat Logging is Disabled")
    end
end

-- Reset Instances /ri
SLASH_RI1 = "/ri";
SlashCmdList.RI = function()
    ResetInstances();
end

-- Delete Macros
SLASH_DM1 = "/dm";
SlashCmdList['DM'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/dm acc - |rDeletes ALL Account-wide macros.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/dm char - |rDeletes ALL character-specific macros.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/dm all - |rDeletes ALL macros.")
    elseif msg == "acc" then
        for i=-1,120 do DeleteMacro(i) end
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rAccount-wide macros have been deleted.")
    elseif msg == "char" then
        for i=121,138 do DeleteMacro(i) end
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rChar-specific macros have been deleted.")
    elseif msg == "all" then
        for i=-1,138 do DeleteMacro(i) end
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rAll macros have been deleted.")
    end
end

-- Reset all Action Bars
SLASH_RACT1 = "/ract";
SlashCmdList.RACT = function()
    for i = 1,120 do PickupAction(i) PutItemInBackpack() ClearCursor() end
    ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rAll action bars have been reset.")
end

-- Set Dungeon Difficulty
SLASH_SETD1 = "/d";
SlashCmdList['SETD'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/d n - |rSets Dungeon to Normal Difficulty')
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/d h - |rSets Dungeon to Heroic Difficulty')
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/d m - |rSets Dungeon to Mythic Difficulty')
    elseif msg == "get" then
        DevTools_Dump(GetDungeonDifficultyID());
    elseif msg == "n" then
        SetDungeonDifficultyID(1);
    elseif msg == "h" then
        SetDungeonDifficultyID(2);
    elseif msg == "m" then
        SetDungeonDifficultyID(23);
    end
end

-- Set Raid Difficulty
SLASH_SETR1 = "/r";
SlashCmdList['SETR'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r n - |rSets Raid to Normal Difficulty')
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r h - |rSets Raid to Heroic Difficulty')
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r m - |rSets Raid to Mythic Difficulty')
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r l10 - |rSets Legacy Raid to 10 Player')
        ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r l25 - |rSets Legacy Raid to 25 Player')
    elseif msg == "get" then
        DevTools_Dump(GetRaidDifficultyID());
    elseif msg == "n" then
        SetRaidDifficultyID(14);
    elseif msg == "h" then
        SetRaidDifficultyID(15);
    elseif msg == "m" then
        SetRaidDifficultyID(16);
    elseif msg == "l10" then
        SetLegacyRaidDifficultyID(3);
    elseif msg == "l25" then
        SetLegacyRaidDifficultyID(6);
    end
end

-- World Boss Lock out check
SLASH_MWB1 = "/wb";
SlashCmdList['MWB'] = function(cmd)
    local boss 
    for i=1,GetNumSavedWorldBosses()
        do boss = GetSavedWorldBossInfo(i) print("|cFF796FC2Ozzis Addon: |r"..boss..": |cff00ff00Is locked out this week|r")
    end
end

-- Garrison Invasion Lock out check
SLASH_INV1 = "/ginv";
SlashCmdList['INV'] = function(cmd)
    for k, v in pairs({ Bronze = 37638, Silver = 37639, Gold = 37640})
        do print(format("|cFF796FC2Ozzis Addon: |r%s: %s", k, C_QuestLog.IsQuestFlaggedCompleted(v) and "\124cff00ff00Yes\124r" or "\124cffff0000No\124r"))
    end
end

SLASH_MAP1 = "/map";
SlashCmdList['MAP'] = function(cmd)
    if cmd == "" then
        local mapID = C_Map.GetBestMapForUnit("player");
        print(format("|cFF796FC2Ozzis Addon: |rYou are in %s (%d)", C_Map.GetMapInfo(mapID).name, mapID))

    elseif cmd == "wmf" then
        local mapID = WorldMapFrame:GetMapID();
        print(format("|cFF796FC2Ozzis Addon: |r%s (%d)", C_Map.GetMapInfo(mapID).name, mapID))
    end
end

SLASH_NPC1 = "/npc";
SlashCmdList['NPC'] = function(cmd)
    if (UnitGUID("target") == nil) then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rYou must select a NPC");
    else
        local name = UnitName('target');
        local guid = UnitGUID("target");
        local unitLink = "|cffffff00|Hunit:%s|h[%s]|h|r"
        local link = unitLink:format(guid, name)
        local unit_type = strsplit("-", guid)
        if unit_type == "Creature" or unit_type == "Vehicle" then
            local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
            print(format("%s is a creature with NPC ID %d", link, npc_id))
        elseif unit_type == "Player" then
            local _, server_id, player_id = strsplit("-", guid)
            print(format("%s is a player with ID %s", link, player_id))
        end
    end
end