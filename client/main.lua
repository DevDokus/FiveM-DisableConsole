-- Citizen Wait
function Wait(args) Citizen.Wait(args) end

-- Drop player when uses the F8 key
Citizen.CreateThread(function()
    while true do Wait(0)
      if IsControlPressed(0,169) then
        TriggerServerEvent("DevDokus:DisableF8:DropPlayer")
      end
    end
end)
