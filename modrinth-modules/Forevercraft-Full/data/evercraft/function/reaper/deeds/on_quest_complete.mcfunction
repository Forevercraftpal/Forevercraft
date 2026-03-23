# Reaper — Quest Complete (renown scaled by tier)
# Called from quest completion functions with #rp_quest_tier set (1-6)
# Tier 1: +50, Tier 2: +75, Tier 3: +100, Tier 4: +150, Tier 5: +200, Tier 6: +300

scoreboard players set #rp_add rp.temp 50
execute if score #rp_quest_tier rp.temp matches 2 run scoreboard players set #rp_add rp.temp 75
execute if score #rp_quest_tier rp.temp matches 3 run scoreboard players set #rp_add rp.temp 100
execute if score #rp_quest_tier rp.temp matches 4 run scoreboard players set #rp_add rp.temp 150
execute if score #rp_quest_tier rp.temp matches 5 run scoreboard players set #rp_add rp.temp 200
execute if score #rp_quest_tier rp.temp matches 6 run scoreboard players set #rp_add rp.temp 300

scoreboard players operation @s rp.renown += #rp_add rp.temp
execute if score @s rp.renown matches 5001.. run scoreboard players set @s rp.renown 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"✦ ",color:"green"},{text:"Your deeds echo through the realm... ",color:"green",italic:true},{text:"(+",color:"gray"},{score:{name:"#rp_add",objective:"rp.temp"},color:"gray"},{text:" Renown)",color:"gray"}]
