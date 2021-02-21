fx_version "bodacious"

games { "gta5" }

description "NoPixel Fiber"

version "0.1.0"

ui_page 'nui/index.html'

files {
    'nui/**/*',
}

server_scripts {
    "@np-lib/server/sv_npx.js",
    "@np-lib/server/sv_rpc.js",
    "@np-lib/server/sv_sql.js",
    "@np-lib/server/sv_asyncExports.js",
    "server/*.js",
}

client_scripts {
    "client/*.js",
}
