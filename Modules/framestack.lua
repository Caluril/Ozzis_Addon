local _, core = ...;

---------------------------------------
-- FrameStack
---------------------------------------
SlashCmdList.FRAMESTK = function(arg)
    LoadAddOn("Blizzard_DebugTools");
    FrameStackTooltip_Toggle();
end