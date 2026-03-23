# Warden's Echo — Mob Vision Activation (sneak + mainhand)
# Ornate: 24 blocks all mobs, 10s glow, 30s cooldown (600 ticks)

# Check cooldown
execute if score @s ec.wecho_cd matches 1.. run tellraw @s [{text:"[Warden's Echo] ",color:"dark_purple"},{text:"Recharging... ",color:"gray"},{text:"(",color:"dark_gray"},{score:{name:"@s",objective:"ec.wecho_cd"},color:"dark_gray"},{text:" ticks)",color:"dark_gray"}]
execute if score @s ec.wecho_cd matches 1.. run return 0

# Apply glowing to all non-player entities within 24 blocks for 10s
execute at @s run effect give @e[type=!player,distance=..24] glowing 10 0 false

# Set cooldown
scoreboard players set @s ec.wecho_cd 30

# Feedback
tellraw @s [{text:"[Warden's Echo] ",color:"dark_purple"},{text:"Vibrations sensed! ",color:"dark_aqua"},{text:"(10s)",color:"gray"}]
execute at @s run particle sculk_soul ~ ~1 ~ 1 1 1 0.02 10
execute at @s run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 0.5 1.0
