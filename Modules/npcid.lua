local _, core = ...;

---------------------------------------
-- NPC ID
---------------------------------------
SlashCmdList['NPC'] = function(arg)
    if (UnitGUID("target") == nil) then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rYou must select an NPC or a Player");
    else
        local name = UnitName('target');
        local guid = UnitGUID("target");
        local unitLink = "|cffffff00|Hunit:%s|h[%s]|h|r"
        local link = unitLink:format(guid, name)
        local unit_type = strsplit("-", guid)
        if unit_type == "Creature" or unit_type == "Vehicle" then
            local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
            print(format("|cFF796FC2Ozzis Addon: |r%s NPC ID %d", link, npc_id))
        elseif unit_type == "Player" then
            local _, server_id, player_id = strsplit("-", guid)
            print(format("|cFF796FC2Ozzis Addon: |r%s is a player with ID %s", link, player_id))
        end
    end
end