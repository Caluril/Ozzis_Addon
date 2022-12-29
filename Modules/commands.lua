local _, addon = ...

for addon=1, GetNumAddOns() do
    local name, _, _, enabled = GetAddOnInfo(addon)
    local loaded = IsAddOnLoaded(addon)
    if name == "DugisGuideViewerZ" and loaded then
        SLASH_DG2 = "/dg";
    elseif name == "ElvUI" and not loaded then
        SLASH_RELOAD_UI1 = "/reload";
        SLASH_RELOAD_UI2 = "/rl";
    end
end

SlashCmdList['RELOAD_UI'] = function()
    ReloadUI();
end

SLASH_FRAMESTK1 = "/fs";
SlashCmdList.FRAMESTK = function()
    LoadAddOn("Blizzard_DebugTools");
    FrameStackTooltip_Toggle()
end

SLASH_CHATLOG1 = "/chatlog";
SlashCmdList[CHATLOG] = function(msg)
    if msg == "" then
        ChatFrame1:AddMessage("|cff11ff11/chatlog on - |rEnable Chat Logging.")
        ChatFrame1:AddMessage("|cff11ff11/chatlog off - |rDisable Chat Logging.")
    elseif msg == "on" then
        LoggingChat(true)
        ChatFrame1:AddMessage("Chat Logging is Enabled")
    elseif msg == "off" then
        LoggingChat(false)
        ChatFrame1:AddMessage("Chat Logging is Disabled")
    elseif msg == "auto" then
        isLogging = LoggingChat(true)
        local EventFrame = CreateFrame('Frame')
        EventFrame:RegisterEvent('PLAYER_ENTERING_WORLD')
        EventFrame:SeScript('OnEvent', function(self, event, ...)
            self[event](self, ...)
        end )
    end
end

