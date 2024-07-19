-- Main server-side entry point

-- Load shared configuration
local Config = require('shared/config')

-- Load server-specific modules
local Events = require('server/events')
local Functions = require('server/functions')
local Commands = require('server/commands')

-- Example event registration using best practices
local function onPlayerConnecting(name, setCallback)
    -- Guard clause to ensure name is valid
    if not name then
        setCallback("Invalid name")
        return
    end
    print('Player connecting: ' .. name)
end

AddEventHandler('playerConnecting', onPlayerConnecting)
