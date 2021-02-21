fx_version 'cerulean'
game 'gta5'

this_is_a_map 'yes'

client_script {
  'gabz_mrpd_entitysets.lua',
  '@np-errorlog/client/cl_errorlog.lua',
  'client.lua',
  'gabz_methlab1_entitysets.lua',
  'gabz_methlab2_entitysets.lua',
  'gabz_methlab3_entitysets.lua',
  'casino_penthouse_entitysets.lua',
}

files {
  'np_vault_timecycle.xml',
  'np_carpark_timecycle.xml',
  'gabz_mrpd_timecycle.xml',
  'gabz_bennys_timecycle.xml',
  'gabz_lab_timecycle.xml',
  'gallery_timecycle_mods_1.xml',
}

data_file 'DLC_ITYP_REQUEST' 'stream/misc/denis3d_policebadge.ytyp'
data_file 'TIMECYCLEMOD_FILE' 'np_vault_timecycle.xml'
data_file 'TIMECYCLEMOD_FILE' 'np_carpark_timecycle.xml'
data_file 'TIMECYCLEMOD_FILE' 'gabz_mrpd_timecycle.xml'
data_file 'TIMECYCLEMOD_FILE' 'gabz_bennys_timecycle.xml'
data_file 'TIMECYCLEMOD_FILE' 'gabz_lab_timecycle.xml'
data_file 'TIMECYCLEMOD_FILE' 'gallery_timecycle_mods_1'