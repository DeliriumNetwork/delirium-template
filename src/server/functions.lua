-- Server-side functions module

local Functions = {}

--- Retrieves the player's identifier
---@param player any
---@return string
function Functions.getPlayerIdentifier(player)
    return GetPlayerIdentifier(player, 0)
end

--- Example of a utility function
---@param player any
function Functions.printPlayerIdentifier(player)
    assert(player ~= nil, "player cannot be nil")
    local identifier = Functions.getPlayerIdentifier(player)
    print(identifier)
end

return Functions
