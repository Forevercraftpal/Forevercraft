# Enchanted Monocle — Mob Vision Activation (right-click spyglass)
# Ornate: 24 blocks, 10s glow, 30s cooldown (600 ticks)

# Revoke advancement so it can re-trigger
advancement revoke @s only evercraft:artifacts/accessories/monocle_use

# Check cooldown
execute if score @s ec.monocle_cd matches 1.. run tellraw @s [{text:"[Enchanted Monocle] ",color:"dark_purple"},{text:"Recharging... ",color:"gray"},{text:"(",color:"dark_gray"},{score:{name:"@s",objective:"ec.monocle_cd"},color:"dark_gray"},{text:" ticks)",color:"dark_gray"}]
execute if score @s ec.monocle_cd matches 1.. run return 0

# Apply glowing to all non-player entities within 24 blocks for 10s (200 ticks)
execute at @s run effect give @e[type=!player,distance=..24] glowing 10 0 false

# Set cooldown (30s — tick runs every 1s so value = seconds)
scoreboard players set @s ec.monocle_cd 30

# Feedback
tellraw @s [{text:"[Enchanted Monocle] ",color:"dark_purple"},{text:"Mob Vision activated! ",color:"aqua"},{text:"(10s)",color:"gray"}]
execute at @s run particle witch ~ ~1 ~ 1 1 1 0.05 15
execute at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.5 1.5
