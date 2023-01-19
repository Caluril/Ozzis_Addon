local _, core = ...;

---------------------------------------
-- Environments
---------------------------------------
local expansion = GetExpansionLevel();
local boss, instance

---------------------------------------
-- Lock Out Check
---------------------------------------
SlashCmdList['LOCKOUT'] = function(arg)
    if (expansion == 0) or (expansion == 1) or (expansion == 2) then
        if (GetNumSavedInstances() == 1) then
            for i=1, GetNumSavedInstances()
                do instance = GetSavedInstanceInfo(i) print("|cFF796FC2Ozzis Addon: |r"..instance..": |cff00ff00Is locked out this week|r")
            end
        else
            print("|cFF796FC2Ozzis Addon: |r|cffff0000Not locked out this week|r")
        end
    elseif (expansion == 9) then
        if arg == "" then
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/lc wb - |rCheck Lock Out for World Bosses')
            ChatFrame1:AddMessage('|cFF796FC2Ozzis Addon: |r|cff11ff11/lc ins - |rCheck Lock Out for Saved Instances')
        elseif arg == "wb" then
            if (GetNumSavedWorldBosses() == 1) then
                for i=1,GetNumSavedWorldBosses()
                    do boss = GetSavedWorldBossInfo(i) print("|cFF796FC2Ozzis Addon: |r"..boss..": |cff00ff00Is locked out this week|r")
                end
            else
                print("|cFF796FC2Ozzis Addon: |r|cffff0000Not locked out this week|r")
            end
        elseif arg == "ins" then
            if (GetNumSavedInstances() == 1) then
                for i=1, GetNumSavedInstances()
                    do instance = GetSavedInstanceInfo(i) print("|cFF796FC2Ozzis Addon: |r"..instance..": |cff00ff00Is locked out this week|r")
                end
            else
                print("|cFF796FC2Ozzis Addon: |r|cffff0000Not locked out this week|r")
            end
        end
    end
end