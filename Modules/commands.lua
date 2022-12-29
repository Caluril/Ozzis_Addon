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
        SLASH_BugSack2 = "/bug"
    end
end

-- Script CVars
SLASH_SCRIPT1 = "/sc";
SlashCmdList['SCRIPT'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage("|cff11ff11/sc errors on - |rScript Errors ON.")
        ChatFrame1:AddMessage("|cff11ff11/sc errors off - |rScript Errors OFF.")
        ChatFrame1:AddMessage("|cff11ff11/sc warning on - |rScript Warnings ON.")
        ChatFrame1:AddMessage("|cff11ff11/sc warning off - |rScript Warnings OFF.")
        ChatFrame1:AddMessage("|cff11ff11/sc profile on - |rScript Profile ON.")
        ChatFrame1:AddMessage("|cff11ff11/sc profile off - |rScript Profile OFF.")
        ChatFrame1:AddMessage("|cff11ff11/sc player ## - |rChange nameplate max distance ## is 20 or 41")
        ChatFrame1:AddMessage("|cff11ff11/sc hw on - |rHardware Detect ON.")
        ChatFrame1:AddMessage("|cff11ff11/sc hw off - }rHardware Detect OFF.")
    elseif msg == "errors on" then
        SetCVar("scriptErrors", 1)
        ChatFrame1:AddMessage("Script Errors ON.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "errors off" then
        SetCVar("scriptErrors", 0)
        ChatFrame1:AddMessage("Script Errors OFF.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "warning on" then
        SetCVar("scriptWarnings", 1)
        ChatFrame1:AddMessage("Script Warnings ON.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "warning off" then
        SetCVar("scriptWarnings", 0)
        ChatFrame1:AddMessage("Script Warnings OFF.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "profile on" then
        SetCVar("scriptProfile", 1)
        ChatFrame1:AddMessage("Script Profile ON.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "profile off" then
        SetCVar("scriptProfile", 0)
        ChatFrame1:AddMessage("Script Profile OFF.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "player 20" then
        SetCVar("nameplatePlayerMaxDistance", 20)
        ChatFrame1:AddMessage("NamePlate Player Max Distance is set to 20")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "player 41" then
        SetCVar("nameplatePlayerMaxDistance", 41)
        ChatFrame1:AddMessage("NamePlate Player Max Distance is set to 41")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "hw on" then
        SetCVar("hwDetect", 1)
        ChatFrame1:AddMessage("Hardware Detect ON.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
    elseif msg == "hw off" then
        SetCVar("hwDetect", 0)
        ChatFrame1:AddMessage("Hardware Detect OFF.")
        ChatFrame1:AddMessage("Please reload the UI for the changes to take effect.")
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
    FrameStackTooltip_Toggle()
end

-- ChatLogging /chatlog
SLASH_CHATLOG1 = "/chatlog";
SlashCmdList['CHATLOG'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage("|cff11ff11/chatlog on - |rEnable Chat Logging.")
        ChatFrame1:AddMessage("|cff11ff11/chatlog off - |rDisable Chat Logging.")
    elseif msg == "on" then
        LoggingChat(true);
        ChatFrame1:AddMessage("Chat Logging is Enabled")
    elseif msg == "off" then
        LoggingChat(false);
        ChatFrame1:AddMessage("Chat Logging is Disabled")
    end
end

-- Reset Instances /ri
SLASH_RINS1 = "/ri";
SlashCmdList.RINS = function()
    ResetInstances();
    ChatFrame1:AddMessage("All instances have been reset")
end

-- Delete Macros
SLASH_DM1 = "/dm";
SlashCmdList['DM'] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage("|cff11ff11/dm acc - |rDeletes ALL Account-wide macros.")
        ChatFrame1:AddMessage("|cff11ff11/dm char - |rDeletes ALL character-specific macros.")
        ChatFrame1:AddMessage("|cff11ff11/dm all - |rDeletes ALL macros.")
        elseif msg == "acc" then
        for i=-1,120 do DeleteMacro(i) end
        ChatFrame1:AddMessage("Account-wide macros deleted.")
    elseif msg == "char" then
        for i=121,138 do DeleteMacro(i) end
        ChatFrame1:AddMessage("Char-specific macros deleted.")
    elseif msg == "all" then
        for i=-1,138 do DeleteMacro(i) end
        ChatFrame1:AddMessage("All macros deleted.")
    end
end

-- Reset all Action Bars
SLASH_RACT1 = "/ract";
SlashCmdList.RACT = function()
    for i = 1,120 do PickupAction(i) PutItemInBackpack() ClearCursor() end
    ChatFrame1:AddMessage("All action bars reset.")
end