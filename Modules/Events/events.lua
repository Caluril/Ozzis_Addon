local _, addon = ...

local eventFrame = CreateFrame("Frame")
local function ADDON_LOADED(_, _, addonName)
    if (addonName == "DugisGuideViewerZ") then
        eventFrame:UnregisterEvent("ADDON_LOADED")
        if (addon.darkmoonfaire.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Darkmoon Faire is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Darkmoon Faire guides")
            end)
        elseif (addon.lunarfestival.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Lunar Festival is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Lunar Festival guides|r")
            end)
        elseif (addon.LoveInTheAir.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Love is in the Air is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Love is in the Air guides|r")
            end)
        elseif (addon.childrensweek.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Children's Week is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Children's Week guides|r")
            end)
        elseif (addon.midsummer.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Midsummer Fire Festival is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Midsummer Fire Festival guides")
            end)
        elseif (addon.pilgrimsbounty.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Pilgrim's Bounty is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Pilgrim's Bounty guides|r")
            end)
        elseif (addon.brewfest.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Brewfest is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Brewfest guides|r")
            end)
        elseif (addon.noblegarden.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Noblegarden event is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Noblegarden guides|r")
            end)
        elseif (addon.noblegarden.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Noblegarden event is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Noblegarden guides|r")
            end)
        elseif (addon.piratesday.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Pirates Day event is active!|r")
            end)
        elseif (addon.dayofthedead.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Day of the Dead event is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Day of the Dead guides|r")
            end)
        elseif (addon.wowsanniversary.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 WoW's Anniversary event is active!|r")
            end)
        elseif (addon.harvestfestival.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Harvest Festival event is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Pilgrim's Bounty guides|r")
            end)
        elseif (addon.winterveil.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 Winter Veil event is active!|r")
                ChatFrame1:AddMessage("|cffffff00 Use /dg config or /dugi config and use DugiGuides Winter Veil guides|r")
            end)
        elseif (addon.newyear.IsEventActive()) then
            C_Timer.NewTimer(5, function()
                ChatFrame1:AddMessage("|cff00ff00 New Year event is active!|r")
            end)
        end
    end
end
eventFrame:SetScript("OnEvent", ADDON_LOADED)