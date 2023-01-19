local _, core = ...;

SlashCmdList["GBG"] = function(arg)
    if arg == "" then
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/gbg collect - |rPerforms a full garbage-collection cycle");
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/gbg restart - |rRestarts the garbage collector");
        ChatFrame1:AddMessage("|cFF796FC2Ozzis Addon: |r|cff11ff11/gbg count - |rReturns the total memory in use by Lua (in Kbytes)");
    elseif arg == "collect" then
        collectgarbage("collect");
    elseif arg == "retart" then
        collectgarbage("restart");
    elseif arg == "count" then
        collectgarbage("count");
    end
end