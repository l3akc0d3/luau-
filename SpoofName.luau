local new = "L3akC0d3"
local plr = game.Players.LocalPlayer

local idx; idx = hookmetamethod(game, "__index", function(self, k)
    if not checkcaller() and self == plr and k == "Name" then
        return new
    end
    return idx(self, k)
end)

local nc; nc = hookmetamethod(game, "__namecall", function(self, ...)
    if not checkcaller() and self == plr and getnamecallmethod() == "GetFullName" then
        return new
    end
    return nc(self, ...)
end)
