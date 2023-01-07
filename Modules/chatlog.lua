local EventFrame = CreateFrame( 'Frame' )
EventFrame:RegisterEvent( 'PLAYER_ENTERING_WORLD' )
EventFrame:SetScript( 'OnEvent', function( self, event, ... )
    self[event]( self, ... )
end)

function EventFrame:PLAYER_ENTERING_WORLD()
    if (LoggingChat()) then
        DEFAULT_CHAT_FRAME:AddMessage("|cFF796FC2Ozzis Addon: |rChat logging is enabled\nThe logs are saved to \"Logs\\WOWChatLog.txt\"");
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cFF796FC2Ozzis Addon: |rChat logging is disabled - enabling it now!");
        LoggingChat(1);
        DEFAULT_CHAT_FRAME:AddMessage("|cFF796FC2Ozzis Addon: |rChat logging is now enabled - saving the logs to \"Logs\\WOWChatLog.txt\"");
    end
end