-- Server-side events module

local Events = {}

--- Handles player connected event
---@param player any
function Events.handlePlayerConnected(player)
    if not player then return end
    print('Player connected: ' .. tostring(player))
end

RegisterNetEvent('delirium:server:playerConnected')
AddEventHandler('delirium:server:playerConnected', Events.handlePlayerConnected)

return Events
