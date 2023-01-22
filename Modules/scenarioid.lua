local _, core = ...;

---------------------------------------
-- Environments
---------------------------------------
local expansion = GetExpansionLevel();

if (expansion == 0) or (expansion == 1) or (expansion == 2) then
    return
elseif (expansion == 9) then
    local criteriaIndex = (select(3, C_Scenario.GetStepInfo()));
    local criteriaID = (select(9, C_Scenario.GetCriteriaInfo(criteriaIndex)));
    local scenarioStepID = (select(7, C_Scenario.GetCriteriaInfo(criteriaIndex)));
    local stage = (select(1, C_Scenario.GetCriteriaInfo(criteriaIndex)));

    ---------------------------------------
    -- Scenario ID & Step Info
    ---------------------------------------
    SlashCmdList["CRI"] = function(arg)
        if arg == "" then
            ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/cri id - |rOutputs Current Scenario ID")
            ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/cri step - |rOutputs Current Step Info")
        elseif arg == "id" then
            print("|cFF796FC2Ozzis Addon: |rScenario ID = "..criteriaID);
        elseif arg == "step" then
            DevTools_Dump(C_ScenarioInfo.GetScenarioStepInfo(scenarioStepID));
        end
    end
end