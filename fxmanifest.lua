fx_version 'cerulean'
game 'gta5'
author 'Notpead'
description 'A fuel system for a private project'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    'client/main.lua',
    'client/utils.lua'
}

server_scripts {
    'server/main.lua',
    'server/utils.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/script.js',
    'ui/style.css',
}