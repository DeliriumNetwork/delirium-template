-- Client-side functions module

local Functions = {}

--- Retrieves the player's ped ID
---@return number
function Functions.getPlayerPedId()
    return PlayerPedId()
end

--- Example of a utility function
---@param message string
function Functions.printMessage(message)
    assert(message ~= nil, "message cannot be nil")
    print(message)
end

return Functions
