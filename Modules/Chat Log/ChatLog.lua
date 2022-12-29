isLogging = LoggingChat(true) -- Main Function

local EventFrame = CreateFrame( 'Frame' )
EventFrame:RegisterEvent( 'PLAYER_ENTERING_WORLD' )
EventFrame:SetScript( 'OnEvent', function( self, event, ... )
	self[event]( self, ... )
end )

function EventFrame:PLAYER_ENTERING_WORLD()
		print( ' ' )
    print ("|cff3ea607Chat Log loaded|r")
		print ("|cffffff00Chat being logged to Logs\\WoWChatLog.txt")
		print( ' ' )
	end

function Ozzi:Initialize()
	Ozzi.db = E.db.ChatLog
	EP:RegisterPlugin(addon, InjectOptions)
end

local function InitializeCallback()
	Ozzi:Initialize()
end

E:RegisterModule(Ozzi:GetName(), InitializeCallback)