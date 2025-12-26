local utils<const> = lib.require('client.utils')
Config = nil

RegisterNUICallback('closeNUI', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)

RegisterCommand('show-NUI', function(source, args, rawCommand)
    SetNuiFocus(true, true)
    SendNUIMessage({type = 'show'})
end, false)

RegisterNetEvent('fuel:client:FetchConfig', function(config)
    if Config then
        return
    end
    Config = config
    utils.dbg('The config has been set!', 'info')
    Wait(2000)
end)