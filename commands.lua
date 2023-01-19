local _, core = ...;
core.commands = {};

local commands = core.commands;

---------------------------------------
local _, addon = ...;

for addon=1, GetNumAddOns() do
    local name, _, _, enabled = GetAddOnInfo(addon)
    local loaded = IsAddOnLoaded(addon)
    if name == "DugisGuideViewerZ" and loaded then
        SLASH_DG2 = "/dg";
    elseif name == "!!NoTaint2" and loaded then
        SLASH_NOTAINTII2 = "/nt2";
    elseif name == "BugSack" and loaded then
        SLASH_BugSack2 = "/bug";
    elseif name == "BadBoy" and loaded then
        SLASH_BADBOY2 = "/bb";
    elseif name == "AddonUsage" and loaded then
        SLASH_ADDONUSAGE2 = "/usage";
    end
end

---------------------------------------
-- Slash Commands
---------------------------------------
SLASH_SCRIPT1 = "/sc";
SLASH_RELOAD_UI1 = "/reload";
SLASH_RELOAD_UI2 = "/rl";
SLASH_FRAMESTK1 = "/fs";
SLASH_EDIT1 = "/em";
SLASH_CHATLOG1 = "/chatlog";
SLASH_RI1 = "/ri";
SLASH_DM1 = "/dm";
SLASH_RACT1 = "/ract";
SLASH_SETD1 = "/d";
SLASH_SETR1 = "/r";
SLASH_LOCKOUT1 = "/lc";
SLASH_MAP1 = "/map";
SLASH_NPC1 = "/npc";
SLASH_BUILD1 = "/build";
SLASH_CRI1 = "/cri";
SLASH_GBG1 = "/gbg";