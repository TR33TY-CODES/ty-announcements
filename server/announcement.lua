local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('txAdmin:events:announcement', function(eventData)
    local author = eventData.author
    local message = eventData.message

    TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
        title = "ANNOUNCEMENT",
        description = "<span style='color:#985ebe'>" .. author .. "</span>: " .. message .. "</span>",
        time = 10000,
        color = "#985ebe",
        icon = "fa-solid fa-bullhorn",
        soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
    })
end)
