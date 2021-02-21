fx_version 'cerulean'
games {'gta5'}

client_script "@np-errorlog/client/cl_errorlog.lua"

export "SetEnableSync"


server_scripts {
	"server/server.lua"
}

client_scripts {
	"client/client.lua"
}

server_export "getCurrentTime"
