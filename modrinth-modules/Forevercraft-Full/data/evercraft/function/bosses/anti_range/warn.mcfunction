# Anti-Range — Warning Tier (25-35 blocks from boss)
# Called as the distant player

# Slowness II + Glowing for 3s
effect give @s slowness 3 1 true
effect give @s glowing 3 0 true

# Warning message — throttled to once every 5 ticks (5s)
scoreboard players add @s wb.range_warn 1
execute if score @s wb.range_warn matches 5 run tellraw @s [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"You are too far from the fight... get closer!",color:"gold",italic:true}]
execute if score @s wb.range_warn matches 5.. run scoreboard players set @s wb.range_warn 0
