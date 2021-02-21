fx_version 'cerulean'
games {'gta5'}


client_script "@np-errorlog/client/cl_errorlog.lua"

client_script "@np-lib/client/cl_infinity.lua"
server_script "@np-lib/server/sv_infinity.lua"

client_script '@np-lib/client/cl_rpc.lua'
server_script '@np-lib/server/sv_rpc.lua'

client_script 'carhud.lua'
server_script 'carhud_server.lua'
server_script 'sr_autoKick.lua'
client_script 'newsStands.lua'

-- ui_page('html/index.html')

-- files({
-- 	"html/index.html",
-- 	"html/script.js",
-- 	"html/styles.css",
-- 	"html/img/*.svg",
-- 	"html/img/*.png"
-- })

exports {
	"playerLocation",
	"playerZone"
}

