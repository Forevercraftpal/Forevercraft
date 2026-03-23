# Reaper — Villager Trade (+10 renown per trade, cap 100/day)
# #rp_delta = number of trades since last check

# Already at daily cap? Skip entirely
execute if score @s rp.trade_today matches 100.. run return 0

# Calculate how much renown to add (10 per trade)
scoreboard players operation #rp_add rp.temp = #rp_delta rp.temp
scoreboard players operation #rp_add rp.temp *= #10 rp.temp

# Clamp to remaining daily budget (100 - trade_today)
scoreboard players set #rp_cap rp.temp 100
scoreboard players operation #rp_cap rp.temp -= @s rp.trade_today
execute if score #rp_add rp.temp > #rp_cap rp.temp run scoreboard players operation #rp_add rp.temp = #rp_cap rp.temp

# Update daily tracker
scoreboard players operation @s rp.trade_today += #rp_add rp.temp

scoreboard players operation @s rp.renown += #rp_add rp.temp

# Cap at 5000
execute if score @s rp.renown matches 5001.. run scoreboard players set @s rp.renown 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"✦ ",color:"green"},{text:"Fair trade builds trust... ",color:"green",italic:true},{text:"(+",color:"gray"},{score:{name:"#rp_add",objective:"rp.temp"},color:"gray"},{text:" Renown)",color:"gray"}]
