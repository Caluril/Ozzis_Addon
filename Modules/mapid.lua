local _, core = ...;

---------------------------------------
-- Map ID
---------------------------------------
SlashCmdList['MAP'] = function(map)
local mapID = C_Map.GetBestMapForUnit("player");
local wmf = WorldMapFrame:GetMapID();
    if map == "" then
        print(format("|cFF796FC2Ozzis Addon: |rYou are in %s (%d)", C_Map.GetMapInfo(mapID).name, mapID))
    elseif map == "wmf" then
        print(format("|cFF796FC2Ozzis Addon: |r%s (%d)", C_Map.GetMapInfo(wmf).name, wmf))
    end
end