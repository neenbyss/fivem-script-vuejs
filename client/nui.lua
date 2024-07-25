RegisterNuiCallback('close', function()
    SendNUIMessage({
        action = "NUI_CLOSE"
    })
    SetNuiFocus(false, false)
end)
