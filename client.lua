RegisterNetEvent("cipki:toggleNUI")
AddEventHandler("cipki:toggleNUI", function(display)
    SendNUIMessage({
    type = "ui",
    display = display
  })
end)