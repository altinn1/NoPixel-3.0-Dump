fx_version 'cerulean'
games { 'rdr3', 'gta5' }

client_scripts {
  '@np-errorlog/client/cl_errorlog.lua',
  '@np-lib/client/cl_infinity.lua',
  '@np-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
}

shared_script 'shared/sh_*.*'

server_scripts {
  '@np-lib/server/sv_rpc.lua',
  '@np-lib/server/sv_infinity.lua',
  'server/sv_*.lua',
}

-- NUI Default Page
ui_page('client/html/index.html')

files({
  'client/html/index.html',
  'client/html/sounds/*.ogg'
})
