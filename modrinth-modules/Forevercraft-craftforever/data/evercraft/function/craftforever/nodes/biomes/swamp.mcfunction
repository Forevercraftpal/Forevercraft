# Bogite Deposit — Swamp
# Run at node position

summon block_display ~ ~ ~ {Tags:["ec.cf_node","ec.cf_node_visual"],block_state:{Name:"minecraft:mud"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.3f,0.4f]}}

# Spawn burst — murky brown-green
particle dust{color:[0.35,0.4,0.2],scale:0.8} ~ ~0.2 ~ 0.2 0.15 0.2 0 8
particle minecraft:smoke ~ ~0.3 ~ 0.1 0.1 0.1 0.01 3
