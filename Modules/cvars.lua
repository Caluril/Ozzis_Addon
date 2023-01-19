local _, core = ...;

---------------------------------------
-- Script CVars
---------------------------------------
SlashCmdList['SCRIPT'] = function(arg)
    if arg == "" then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc errors on - |rScript Errors ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc errors off - |rScript Errors OFF.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc warning on - |rScript Warnings ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc warning off - |rScript Warnings OFF.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc profile on - |rScript Profile ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc profile off - |rScript Profile OFF.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc player ## - |rChange nameplate max distance (20 or 41)")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc hw on - |rHardware Detect ON.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/sc hw off - |rHardware Detect OFF.")
    elseif arg == "errors on" then
        SetCVar("scriptErrors", 1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Errors ON.\nPlease reload the UI for the changes to take effect.")
    elseif arg == "errors off" then
        SetCVar("scriptErrors", 0);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Errors OFF.\nPlease reload the UI for the changes to take effect.")
    elseif arg == "warning on" then
        SetCVar("scriptWarnings", 1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Warnings ON.\nPlease reload the UI for the changes to take effect.")
    elseif arg == "warning off" then
        SetCVar("scriptWarnings", 0);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Warnings OFF.\nPlease reload the UI for the changes to take effect.")
    elseif arg == "profile on" then
        SetCVar("scriptProfile", 1);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Profile ON.\nPlease reload the UI for the changes to take effect.")
    elseif arg == "profile off" then
        SetCVar("scriptProfile", 0);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rScript Profile OFF.\nPlease reload the UI for the changes to take effect.")
    elseif arg == "player 20" then
        SetCVar("nameplatePlayerMaxDistance", 20);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rNamePlate Player Max Distance is set to 20\nPlease reload the UI for the changes to take effect.")
    elseif arg == "player 41" then
        SetCVar("nameplatePlayerMaxDistance", 41);
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rNamePlate Player Max Distance is set to 41\nPlease reload the UI for the changes to take effect.")
    elseif arg == "hw on" then
        SetCVar("hwDetect", 1)
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rHardware Detect ON.\nPlease reload the UI for the changes to take effect.")
    elseif arg == "hw off" then
        SetCVar("hwDetect", 0)
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rHardware Detect OFF.\nPlease reload the UI for the changes to take effect.")
    end
end