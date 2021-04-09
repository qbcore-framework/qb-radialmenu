fx_version 'cerulean'
game 'gta5'

description 'QB-RadialMenu'
version '1.0.0'

ui_page "html/index.html"

client_scripts {
    "client/main.lua",
    "client/trunk.lua",
    "client/brancard.lua",
	"config.lua",
}

server_scripts {
	"server/main.lua",
    "config.lua",
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