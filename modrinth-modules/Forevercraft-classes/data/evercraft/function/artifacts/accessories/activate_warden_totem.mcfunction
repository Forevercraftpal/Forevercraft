# Warden Totem — Mob Vision Activation (sneak + mainhand)
# Exquisite: 48 blocks all entities, 15s glow, 45s cooldown (900 ticks)

# Check cooldown
execute if score @s ec.wtotem_cd matches 1.. run tellraw @s [{text:"[Warden Totem] ",color:"gold"},{text:"Recharging... ",color:"gray"},{text:"(",color:"dark_gray"},{score:{name:"@s",objective:"ec.wtotem_cd"},color:"dark_gray"},{text:" ticks)",color:"dark_gray"}]
execute if score @s ec.wtotem_cd matches 1.. run return 0

# Apply glowing to all non-player entities within 48 blocks for 15s
execute at @s run effect give @e[type=!player,distance=..48] glowing 15 0 false

# Set cooldown
scoreboard players set @s ec.wtotem_cd 45

# Feedback
tellraw @s [{text:"[Warden Totem] ",color:"gold"},{text:"Sculk Sense activated! ",color:"dark_aqua"},{text:"(15s)",color:"gray"}]
execute at @s run particle sculk_soul ~ ~1 ~ 2 2 2 0.02 20
execute at @s run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 0.7 0.8
