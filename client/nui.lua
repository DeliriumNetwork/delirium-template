-- Client-side NUI module

local Nui = {}

-- Example of a NUI callback registration
RegisterNUICallback('exampleCallback', function(data, cb)
    print('NUI Callback received: ' .. tostring(data))
    cb('ok')
end)

--- Opens the NUI
function Nui.open()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'open' })
end

--- Closes the NUI
function Nui.close()
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'close' })
end

return Nui
