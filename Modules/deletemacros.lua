local _, core = ...;

---------------------------------------
-- Delete Macros
---------------------------------------
SlashCmdList['DM'] = function(arg)
    if arg == "" then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/dm acc - |rDeletes ALL Account-wide macros.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/dm char - |rDeletes ALL character-specific macros.")
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/dm all - |rDeletes ALL macros.")
    elseif arg == "acc" then
        for i=-1,120 do DeleteMacro(i) end
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rAccount-wide macros have been deleted.")
    elseif arg == "char" then
        for i=121,138 do DeleteMacro(i) end
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rChar-specific macros have been deleted.")
    elseif arg == "all" then
        for i=-1,138 do DeleteMacro(i) end
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |rAll macros have been deleted.")
    end
end