# Resonance Strike — Start minigame
# Run as player at player position
# 5% chance proc after biome node mining — precision timing for bonus loot

# Set state
scoreboard players set @s ec.cf_reso 1
scoreboard players set @s ec.cf_reso_pos 0
scoreboard players set @s ec.cf_reso_dir 1
scoreboard players set @s ec.cf_reso_timer 100

# Random sweet spot center (positions 5-15 out of 0-19)
execute store result score @s ec.cf_reso_zone run random value 5..15

# Spawn interaction entity for click detection (at player eye level, wide hitbox)
execute rotated ~ 0 positioned ^ ^1 ^1.5 run summon interaction ~ ~ ~ {Tags:["ec.cf_reso","ec.cf_reso_click","ec.cf_reso_new"],width:1.5f,height:1.0f,response:1b}
# Stamp with player's companion.id for multiplayer-safe click routing
scoreboard players operation @e[type=interaction,tag=ec.cf_reso_new,limit=1,sort=nearest] ec.cf_reso = @s companion.id
tag @e[type=interaction,tag=ec.cf_reso_new] remove ec.cf_reso_new

# Announcement
tellraw @s [{text:"",color:"#8BC34A"},{text:"\u2726 ",color:"gold"},{text:"Resonance! ",color:"gold",bold:true},{text:"Click at the right moment for a bonus!",color:"yellow"}]
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1.0 0.8
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.8 1.5

# Show initial bar
title @s actionbar [{text:"\u25bc",color:"gold"},{text:"\n",color:"gray"},{"text":"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
