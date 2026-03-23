# Claude's Eye — Mob Vision Activation (sneak + mainhand)
# Exquisite: 32 blocks all entities, 15s glow, 45s cooldown (900 ticks)

# Check cooldown
execute if score @s ec.ceye_cd matches 1.. run tellraw @s [{text:"[Claude's Eye] ",color:"gold"},{text:"Recharging... ",color:"gray"},{text:"(",color:"dark_gray"},{score:{name:"@s",objective:"ec.ceye_cd"},color:"dark_gray"},{text:" ticks)",color:"dark_gray"}]
execute if score @s ec.ceye_cd matches 1.. run return 0

# Apply glowing to all non-player entities within 32 blocks for 15s
execute at @s run effect give @e[type=!player,distance=..32] glowing 15 0 false

# Set cooldown
scoreboard players set @s ec.ceye_cd 45

# Feedback
tellraw @s [{text:"[Claude's Eye] ",color:"gold"},{text:"Omniscience activated! ",color:"light_purple"},{text:"(15s)",color:"gray"}]
execute at @s run particle end_rod ~ ~1 ~ 1.5 1.5 1.5 0.05 25
execute at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.7 2.0
