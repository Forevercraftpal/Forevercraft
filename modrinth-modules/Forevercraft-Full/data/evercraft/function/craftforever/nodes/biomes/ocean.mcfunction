# Tideforged Coral — Ocean biomes
# Run at node position

summon block_display ~ ~ ~ {Tags:["ec.cf_node","ec.cf_node_visual"],block_state:{Name:"minecraft:prismarine"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.3f,0.4f]}}

# Spawn burst — ocean teal
particle dust{color:[0.2,0.6,0.7],scale:0.8} ~ ~0.2 ~ 0.2 0.15 0.2 0 8
particle minecraft:bubble ~ ~0.3 ~ 0.15 0.2 0.15 0.01 5
