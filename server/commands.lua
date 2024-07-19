-- Server-side commands module

local Commands = {}

--- Handles '/example' command
---@param source number
---@param args table
---@param rawCommand string
function Commands.handleExampleCommand(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    if not playerName then return end
    print('Example command used by: ' .. playerName)
end

RegisterCommand('example', Commands.handleExampleCommand, false)

return Commands
