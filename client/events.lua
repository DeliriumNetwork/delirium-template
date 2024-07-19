-- Client-side events module

local Events = {}

--- Handles player spawn event
---@param player any
function Events.handlePlayerSpawn(player)
    if not player then return end
    print('Player spawned: ' .. tostring(player))
end

AddEventHandler('delirium:client:playerSpawned', Events.handlePlayerSpawn)

return Events
