local _, core = ...;

---------------------------------------
-- Environments
---------------------------------------
local version, build, date, tocversion = GetBuildInfo()

---------------------------------------
-- Build Info
---------------------------------------
SlashCmdList["BUILD"] = function(arg)
    print(string.format("version = %s, build = %s, date = '%s', tocversion = %s.", version, build, date, tocversion))
end