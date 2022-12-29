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
        SLASH_NOTAINTII1 = "/nt2";
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
z    end
end

-- Reset Instances /ri
SLASH_RINS1 = "/ri";
SlashCmdList.RINS = function()
    ResetInstances();
    ChatFrame1:AddMessage("All instances have been reset")
end