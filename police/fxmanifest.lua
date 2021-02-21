-- Manifest

fx_version 'cerulean'
games {'gta5'}

client_script "@np-errorlog/client/cl_errorlog.lua"

client_script "@np-lib/client/cl_ui.lua"

--[[ dependencies {
  'np-lib'
} ]]--

-- General
client_scripts {
  '@np-lib/client/cl_rpc.lua',
  'client.lua',
  'client_trunk.lua',
  'evidence.lua',
  'client/beatmode.lua',
  'client/cl_*.lua'
}


server_scripts {
  '@np-lib/server/sv_rpc.lua',
  'server.lua',
  'server/beatmode.lua',
  'server/sv_vehicle.lua'
}

exports {
	'getIsInService',
	'getIsCop',
	'getIsCuffed'
} 
