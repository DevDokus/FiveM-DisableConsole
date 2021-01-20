
-- If you add more lines, add them also to DropPlayer
local t1 = 'For the security of our server we do not allow you to use the console. '
local t2 = 'This allows you to view the server files that are helping hackers to do their thing. '
local t3 = 'Our apologies for the inconvenience. '

-- Check if user is on the whitelist
function IsWhiteList (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

-- If player is not whitelisted -- kick player from the server
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
