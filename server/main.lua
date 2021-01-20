
-- If you add more lines, add them also to DropPlayer
local t1 = 'Voor de beveiliging van onze server staan wij niet toe om de console te gebruiken. '
local t2 = 'Hiermee kan je de server files inzien waardoor we hackers in de kaart spelen. '
local t3 = 'Onze excuus voor het ongemak. '

-- Check if user is on the whitelist
function IsWhiteList (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

RegisterServerEvent('DevDokus:DisableF8:DropPlayer')
AddEventHandler('DevDokus:DisableF8:DropPlayer', function()
  for k, v in ipairs(GetPlayerIdentifiers(source)) do
    if string.match(v, "license:") then
      license = v
      local white = IsWhiteList(Config.Whitelist, v)
      if not white then
        DropPlayer(source, t1..t2..t3)
      end
      break
    end
  end
end)
