fx_version 'cerulean'
game 'gta5'

name "nb-template"
description "Basis for creating fivem script ready with the necessary with vuejs"
author "neenbyss"
version "1.0.0"

ui_page 'web/nui.html'

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

files {
	'web/nui.html',
	'web/nui.js',
	'web/nui.css',
}

escrow_ignore {
	'shared/*.lua',
	'server/custom.lua',
	'client/custom.lua',
}