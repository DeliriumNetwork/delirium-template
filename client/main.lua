-- Main client-side entry point

-- Load shared configuration
local Config = require('shared/config')

-- Load client-specific modules
local Events = require('client/events')
local Functions = require('client/functions')
local Nui = require('client/nui')

-- Example event registration using best practices
local function onPlayerSpawned()
    -- Guard clause to ensure player is not dead
    if IsPlayerDead(PlayerId()) then return end
    print('Player has spawned')
end

AddEventHandler('playerSpawned', onPlayerSpawned)
