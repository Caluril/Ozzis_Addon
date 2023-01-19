local _, core = ...;

---------------------------------------
-- Reset all Action Bars
---------------------------------------
SlashCmdList.RACT = function(arg)
    for i = 1,120 do PickupAction(i) PutItemInBackpack() ClearCursor() end
    ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rAll action bars have been reset.")
end