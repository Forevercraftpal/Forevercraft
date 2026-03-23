# Guidestone Wormhole — Execute the wormhole teleport
# Run as the player
# Costs 30 levels, warps 5000+ blocks in a random direction, Y=150
# Gives slow falling + resistance 5 for 30 seconds

# Check if player has enough levels
execute store result score @s ec.gs_temp run experience query @s levels
execute if score @s ec.gs_temp matches ..29 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need at least ",color:"red"},{text:"30 levels",color:"gold",bold:true},{text:" to use the Wormhole!",color:"red"}]
execute if score @s ec.gs_temp matches ..29 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score @s ec.gs_temp matches ..29 run return 0

# Close menu
function evercraft:guidestone/menu/close

# Deduct 30 levels
experience add @s -30 levels

# Generate random offset: 5000-10000 blocks in X and Z
# Random X offset in range [-10000, -5000] or [5000, 10000]
execute store result score #wh_rand_x ec.gs_temp run random value 5000..10000
execute store result score #wh_sign_x ec.gs_temp run random value 0..1
execute if score #wh_sign_x ec.gs_temp matches 0 run scoreboard players operation #wh_rand_x ec.gs_temp *= #-1 ec.const

# Random Z offset in range [-10000, -5000] or [5000, 10000]
execute store result score #wh_rand_z ec.gs_temp run random value 5000..10000
execute store result score #wh_sign_z ec.gs_temp run random value 0..1
execute if score #wh_sign_z ec.gs_temp matches 0 run scoreboard players operation #wh_rand_z ec.gs_temp *= #-1 ec.const

# Add current position to get final coordinates
execute store result score #wh_origin_x ec.gs_temp run data get entity @s Pos[0]
execute store result score #wh_origin_z ec.gs_temp run data get entity @s Pos[2]
scoreboard players operation #wh_rand_x ec.gs_temp += #wh_origin_x ec.gs_temp
scoreboard players operation #wh_rand_z ec.gs_temp += #wh_origin_z ec.gs_temp

# Store to storage for macro teleport
execute store result storage evercraft:guidestone wh_pos.x int 1 run scoreboard players get #wh_rand_x ec.gs_temp
execute store result storage evercraft:guidestone wh_pos.z int 1 run scoreboard players get #wh_rand_z ec.gs_temp

# Teleport at Y=150 in the overworld
function evercraft:guidestone/wormhole/teleport with storage evercraft:guidestone wh_pos

# Apply effects: slow falling + resistance 5 for 30 seconds
effect give @s minecraft:slow_falling 30 0 true
effect give @s minecraft:resistance 30 4 true

# Effects and feedback
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.6 0.8
particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.1 100
particle minecraft:portal ~ ~1 ~ 1 1 1 0.1 80
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The wormhole tears open... ",color:"light_purple"},{text:"You emerge somewhere far away!",color:"gold",bold:true}]
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Slow Falling",color:"aqua"},{text:" and ",color:"gray"},{text:"Resistance V",color:"aqua"},{text:" active for 30 seconds.",color:"gray"}]
