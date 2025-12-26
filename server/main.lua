local Config = lib.require('config.server')

AddEventHandler('esx:playerLoaded', function (playerId)
    if not Config then
        return
    end
    TriggerClientEvent('fuel:client:FetchConfig', playerId, Config)
end)