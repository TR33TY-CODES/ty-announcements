AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    local remainingMinutes = math.floor(eventData.secondsRemaining / 60)
    local remainingSeconds = eventData.secondsRemaining % 60
    
    if eventData.secondsRemaining <= 600 and eventData.secondsRemaining % 60 == 0 then 
        local timeText = remainingMinutes > 0 and (remainingMinutes .. " minute" .. (remainingMinutes > 1 and "s" or "")) or (remainingSeconds .. " seconds")
        
        TriggerClientEvent('vms_notifyv2:TopNotification', -1, {
            title = "SERVER RESTART",
            description = "The server will restart in <span style='color:#ff5269'>~extra-bold~~pulse~" .. timeText .. "~s~~s~</span>." .. (remainingMinutes == 1 and " Please prepare to leave the server!" or ""),
            time = 10000,
            color = "#985ebe",
            icon = "fa-solid fa-power-off",
            soundNative = {-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', 0},
        })
    end
end)
