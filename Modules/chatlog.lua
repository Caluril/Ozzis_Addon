local EventFrame = CreateFrame( 'Frame' )
EventFrame:RegisterEvent( 'PLAYER_ENTERING_WORLD' )
EventFrame:SetScript( 'OnEvent', function( self, event, ... )
    self[event]( self, ... )
end)

function EventFrame:PLAYER_ENTERING_WORLD()
    if (LoggingChat()) then
        DEFAULT_CHAT_FRAME:AddMessage("Chat logging is enabled\nThe logs are saved to \"Logs\\WOWChatLog.txt\"");
    else
        DEFAULT_CHAT_FRAME:AddMessage("Chat logging is disabled - enabling it now!");
        LoggingChat(1);
        DEFAULT_CHAT_FRAME:AddMessage("Chat logging is now enabled - saving the logs to \"Logs\\WOWChatLog.txt\"");
    end
end