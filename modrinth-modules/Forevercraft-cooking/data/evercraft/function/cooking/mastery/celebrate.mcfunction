# Cooking Mastery Milestone (macro)
# Called with {level:"Name",color:"color",count:"N"}
$tellraw @s [{text:""},{text:"  \u2726 ",color:"$(color)"},{text:"COOKING MASTERY: ",color:"$(color)",bold:true},{text:"$(level)",color:"$(color)"},{text:" — $(count) meals prepared!",color:"gray"}]
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 0.3 0.5 0.02 15
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.4
playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 1 0.8

# Bonus: grant XP for reaching mastery milestone
execute if score #ck_mast ec.temp matches 10 run experience add @s 100 points
execute if score #ck_mast ec.temp matches 25 run experience add @s 250 points
execute if score #ck_mast ec.temp matches 50 run experience add @s 500 points
execute if score #ck_mast ec.temp matches 100 run experience add @s 1000 points

# Announce to chat with category name from storage
function evercraft:cooking/mastery/announce with storage evercraft:cooking mastery
