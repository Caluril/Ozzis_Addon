local _, core = ...;

---------------------------------------
-- Environments
---------------------------------------
local expansion = GetExpansionLevel();

---------------------------------------
-- EditMode
---------------------------------------
SlashCmdList.EDIT = function(arg)
    if (expansion == 0) and (expansion == 1) and (expansion == 2) then
        return true
    elseif (expansion == 9) then
        if not EditModeManagerFrame:IsShown() then
            ShowUIPanel(EditModeManagerFrame);
        elseif EditModeManagerFrame:IsShown() then
            HideUIPanel(EditModeManagerFrame);
        end
    end
end