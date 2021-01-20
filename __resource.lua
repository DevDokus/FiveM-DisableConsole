resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
description 'Security - Disable F8'
author 'DevDokus Github'
version '1.0.0'

client_scripts {
    'client/main.lua',
    'client/gui.lua',
    'config.lua',
}

server_scripts {
    'server/main.lua',
    'config.lua'
}
