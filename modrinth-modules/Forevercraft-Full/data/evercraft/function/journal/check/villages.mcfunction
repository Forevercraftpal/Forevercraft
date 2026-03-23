# ============================================================
# Check Village Discoveries
# If player is in a village, check if it's been discovered before
# Run as player (ec.current_village already set by quest tick)
# ============================================================

# Skip if not in a village
execute unless score @s ec.current_village matches 1.. run return fail

# Check if this village is already discovered via macro tag check
execute store result storage eden:temp jn.vid int 1 run scoreboard players get @s ec.current_village
execute store result score #jn_new jn.temp run function evercraft:journal/check/villages_macro with storage eden:temp jn

# If macro returned 0 (already discovered), skip
execute if score #jn_new jn.temp matches 0 run return fail

# New village discovered!
scoreboard players add @s jn.village_count 1
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.7 1.4
tellraw @s [{text:"✦ ",color:"dark_aqua"},{text:"[Journal] ",color:"gold"},{text:"Village Discovered! ",color:"yellow"},{text:"(",color:"gray"},{score:{name:"@s",objective:"jn.village_count"},color:"aqua"},{text:" villages found)",color:"gray"}]
function evercraft:journal/regions/check_all
