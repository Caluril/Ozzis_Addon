local DISPLAY_STATE_CLOSED = 1;
local DISPLAY_STATE_OPEN_MINIMIZED_NO_LOG = 2;
local DISPLAY_STATE_OPEN_MINIMIZED_WITH_LOG = 3;
local DISPLAY_STATE_OPEN_MINIMIZED = 4;

SLASH_DEBUG1 = "/dt";
SlashCmdList.DEBUG = function()
	Debug_Taint();
end

function Debug_Taint()
--Start
if name == "DugisGuideViewerZ" and loaded then
	ChatFrame1:AddMessage("It Works!")
end
--End
end

-- /run Debug_Taint()

--required addons
-- Code with libscorpo
-- bugsack
-- buggrabber

-- Instructions
-- Paste function to test in Debug_Taint function.
-- Copy /run Debug_Taint()
-- in game /reload.
-- run command.
-- Esc, open edit mode, close edit mode.
-- ESC, open edit mode, close edit mode.
-- walk in to combat
