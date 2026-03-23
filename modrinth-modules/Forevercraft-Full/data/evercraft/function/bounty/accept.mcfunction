# Patron Bounty — Accept a bounty from quest board
# Macro: tier (2-5), biome (0-24), biome_name (display), biome_id (mc id), time_limit (seconds)
# Called with storage evercraft:bounty

# Check not already on a bounty — re-enable trigger so [Cancel] click works immediately
execute if score @s ec.bnt_tier matches 1.. run scoreboard players enable @s ec.quest
execute if score @s ec.bnt_tier matches 1.. run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You already have an active bounty! ",color:"gray"},{text:"[Cancel Bounty]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 17"},hover_event:{action:"show_text",value:{text:"Click to cancel your active bounty",color:"gray"}}}]
execute if score @s ec.bnt_tier matches 1.. run return 0

# Set bounty parameters
$scoreboard players set @s ec.bnt_tier $(tier)
$scoreboard players set @s ec.bnt_biome $(biome)
$scoreboard players set @s ec.bnt_timer $(time_limit)
scoreboard players set @s ec.bnt_spawned 0

# Assign unique owner ID for per-player entity tracking
scoreboard players add #bnt_next_id ec.var 1
scoreboard players operation @s ec.bnt_owner = #bnt_next_id ec.var

# Announce
tellraw @s [{text:"  ",color:"red",bold:true},{text:"PATRON BOUNTY ACCEPTED",color:"red",bold:true}]
$tellraw @s [{text:"  Target: ",color:"gray"},{text:"Tier $(tier) Patron",color:"red"}]
$tellraw @s [{text:"  Location: ",color:"gray"},{text:"$(biome_name)",color:"green"}]

# Show directional hint toward target biome
function evercraft:bounty/direction_hint with storage evercraft:bounty

playsound minecraft:item.goat_horn.sound_4 player @s ~ ~ ~ 0.7 1.2

# Start tick loop
schedule function evercraft:bounty/tick 2s
