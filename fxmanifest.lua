-- [[ Resource Info ]]

fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.0.0'
author 'wx / woox'
description 'Simple resource that prevents dumpers from obtaining your client code'


-- [[ Client-Side Files ]]

client_scripts {
    'client/*.lua'
}

-- [[ Server-Side Files ]]

server_scripts {
    'configs/*.lua',
    'server/*.lua'
}
