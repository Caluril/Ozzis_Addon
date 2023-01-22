local _, core = ...;

---------------------------------------
-- Environments
---------------------------------------
local expansion = GetExpansionLevel();

---------------------------------------
-- Set Dungeon Difficulty
---------------------------------------
SlashCmdList['SETD'] = function(arg)
    if (expansion == 0) then
        return
    elseif (expansion == 1) or (expansion == 2) then
        if arg == "" then
            ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/d n - |rSets Dungeon to Normal Difficulty")
            ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/d h - |rSets Dungeon to Heroic Difficulty")
        elseif arg == "get" then
            DevTools_Dump(GetDungeonDifficultyID());
        elseif arg == "n" then
            SetDungeonDifficultyID(1);
        elseif arg == "h" then
            SetDungeonDifficultyID(2);
        end
    elseif (expansion == 9) then
        if arg == "" then
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/d n - |rSets Dungeon to Normal Difficulty')
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/d h - |rSets Dungeon to Heroic Difficulty')
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/d m - |rSets Dungeon to Mythic Difficulty')
        elseif arg == "get" then
            DevTools_Dump(GetDungeonDifficultyID());
        elseif arg == "n" then
            SetDungeonDifficultyID(1);
        elseif arg == "h" then
            SetDungeonDifficultyID(2);
        elseif arg == "m" then
            SetDungeonDifficultyID(23);
        end
    end
end