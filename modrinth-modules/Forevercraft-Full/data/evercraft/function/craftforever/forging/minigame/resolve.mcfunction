# Forging Minigame — Resolve (calculate final quality and outcome)

# Apply bonuses
# Artisan Rank bonus: rank/20, max +5
scoreboard players operation #cf_rank_bonus ec.cf_temp = @s ec.cf_rank
scoreboard players operation #cf_rank_bonus ec.cf_temp /= #cf_20 ec.cf_temp
execute if score #cf_rank_bonus ec.cf_temp matches 6.. run scoreboard players set #cf_rank_bonus ec.cf_temp 5
scoreboard players operation @s ec.cf_quality += #cf_rank_bonus ec.cf_temp
execute if score #cf_rank_bonus ec.cf_temp matches 1.. run tellraw @s [{text:"  [Rank Bonus] ",color:"gold"},{text:"+",color:"yellow"},{score:{name:"#cf_rank_bonus",objective:"ec.cf_temp"},color:"yellow"},{text:" quality",color:"yellow"}]

# Comfort bonus if at home forge (+1 to +3 based on housing tier)
execute if score @s hs.in_zone matches 1 if score @s hs.tier matches 1..2 run scoreboard players add @s ec.cf_quality 1
execute if score @s hs.in_zone matches 1 if score @s hs.tier matches 3..4 run scoreboard players add @s ec.cf_quality 2
execute if score @s hs.in_zone matches 1 if score @s hs.tier matches 5.. run scoreboard players add @s ec.cf_quality 3
execute if score @s hs.in_zone matches 1 run tellraw @s [{text:"  [Home Forge] ",color:"gold"},{text:"Comfort bonus applied!",color:"yellow"}]

# Show total quality
tellraw @s [{text:"  Final Quality: ",color:"gray"},{score:{name:"@s",objective:"ec.cf_quality"},color:"white",bold:true}]

# Determine outcome
execute at @s run data modify entity @e[type=text_display,tag=CF.Title,distance=..7,limit=1] text set value {text:"Forging Complete!",color:"gold",bold:true}

execute if score @s ec.cf_quality matches ..3 run function evercraft:craftforever/forging/minigame/result_fail
execute if score @s ec.cf_quality matches 4..7 run function evercraft:craftforever/forging/minigame/result_rough
execute if score @s ec.cf_quality matches 8..11 run function evercraft:craftforever/forging/minigame/result_good
execute if score @s ec.cf_quality matches 12.. run function evercraft:craftforever/forging/minigame/result_masterwork

# Award Artisan XP: Forging category (base 5 + quality)
scoreboard players set #cf_xp_amount ec.cf_temp 5
scoreboard players operation #cf_xp_amount ec.cf_temp += @s ec.cf_quality
scoreboard players set #cf_xp_cat ec.cf_temp 5
function evercraft:craftforever/artisan/add_xp

# Clean up minigame state
tag @s remove CF.Forging
scoreboard players set @s ec.cf_phase 0

# Close the GUI (player can see the result title briefly, then we clean up)
function evercraft:craftforever/forging/gui/close
