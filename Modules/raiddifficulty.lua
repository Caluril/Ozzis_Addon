local _, core = ...;

---------------------------------------
-- Environments
---------------------------------------
local expansion = GetExpansionLevel();

---------------------------------------
-- Set Raid Difficulty
---------------------------------------
SlashCmdList['SETR'] = function(arg)
    if (expansion == 0) then
        return
    elseif (expansion == 1) or (expansion == 2) then
        if arg == "" then
            ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/r 10 - |rSets Raid to 10 Player")
            ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/r 25 - |rSets Raid to 25 Player")
        elseif arg == "get" then
            DevTools_Dump(GetRaidDifficultyID());
        elseif arg == "10" then
            SetRaidDifficultyID(3);
        elseif arg == "25" then
            SetRaidDifficultyID(4);
        end
    elseif (expansion == 9) then
        if arg == "" then
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r n - |rSets Raid to Normal Difficulty')
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r h - |rSets Raid to Heroic Difficulty')
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r m - |rSets Raid to Mythic Difficulty')
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r l10 - |rSets Legacy Raid to 10 Player')
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/r l25 - |rSets Legacy Raid to 25 Player')
        elseif arg == "get" then
            DevTools_Dump(GetRaidDifficultyID());
        elseif arg == "n" then
            SetRaidDifficultyID(14);
        elseif arg == "h" then
            SetRaidDifficultyID(15);
        elseif arg == "m" then
            SetRaidDifficultyID(16);
        elseif arg == "l10" then
            SetLegacyRaidDifficultyID(3);
        elseif arg == "l25" then
            SetLegacyRaidDifficultyID(6);
        end
    end
end