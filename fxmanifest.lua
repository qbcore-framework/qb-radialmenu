fx_version 'cerulean'
game 'gta5'

description 'QB-RadialMenu'
version '1.0.0'

ui_page "html/index.html"

client_scripts {
    "config.lua",
    "client/main.lua",
    "client/clothing.lua",
    "client/trunk.lua",
    "client/brancard.lua",
}

server_scripts {
    "config.lua",
    "server/main.lua",
    "server/trunk.lua",
    "server/brancard.lua",
}

files {
    'html/index.html',
    'html/css/main.css',
    'html/css/RadialMenu.css',
    'html/js/main.js',
    'html/js/RadialMenu.js',
}
