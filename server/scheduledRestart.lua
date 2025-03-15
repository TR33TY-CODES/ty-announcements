local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    -- 10-minute warning
    if eventData.secondsRemaining == 600 then
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~10 minutes~s~~s~</span>.",
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })
    
    -- 5-minute warning
    elseif eventData.secondsRemaining == 300 then
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~5 minutes~s~~s~</span>.",
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })
    
    -- 4-minute warning
    elseif eventData.secondsRemaining == 240 then
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~4 minutes~s~~s~</span>.",
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })

    -- 3-minute warning
    elseif eventData.secondsRemaining == 180 then
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~3 minutes~s~~s~</span>.",
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })

    -- 2-minute warning
    elseif eventData.secondsRemaining == 120 then
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~2 minutes~s~~s~</span>.",
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })
    
    -- 1-minute warning
    elseif eventData.secondsRemaining == 60 then
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~1 minute~s~~s~</span>. Please prepare to leave the server!",
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })
    
    -- 30-second warning
    elseif eventData.secondsRemaining == 30 then
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~30 seconds~s~~s~</span>. Please exit the server now!",
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })

        QBCore.Functions.SavePlayers()
    end
end)
