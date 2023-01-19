local _, core = ...;

---------------------------------------
-- ChatLog
---------------------------------------
SlashCmdList['CHATLOG'] = function(arg)
    if arg == "" then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/chatlog on - |rEnable Chat Logging.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/chatlog off - |rDisable Chat Logging.")
    elseif arg == "on" then
        IsLogging = LoggingChat(1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rChat Logging is Enabled")
    elseif arg == "off" then
        IsLogging = LoggingChat(nil);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rChat Logging is Disabled")
    end
end