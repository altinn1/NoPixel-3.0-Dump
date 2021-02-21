fx_version 'cerulean'
games {'gta5'}

-- dependency "np-base"



client_script "@np-errorlog/client/cl_errorlog.lua"

server_script "server/sv_log.lua"

server_export "AddLog"
