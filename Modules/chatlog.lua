local EventFrame = CreateFrame( 'Frame' )
EventFrame:RegisterEvent( 'PLAYER_ENTERING_WORLD' )

if (LoggingChat()) then
    DEFAULT_CHAT_FRAME:AddMessage("Chat is already being logged");
else
    DEFAULT_CHAT_FRAME:AddMessage("Chat is not being logged - starting it!");  
    LoggingChat(1);
    DEFAULT_CHAT_FRAME:AddMessage("Chat is now being logged to Logs\\WOWChatLog.txt");
end