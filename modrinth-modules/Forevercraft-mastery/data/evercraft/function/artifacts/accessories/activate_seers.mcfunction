# Seer's Compass — Mob Vision Activation (sneak + mainhand)
# Ornate: 16 blocks hostile only, 10s glow, 30s cooldown (600 ticks)

# Check cooldown
execute if score @s ec.seers_cd matches 1.. run tellraw @s [{text:"[Seer's Compass] ",color:"dark_purple"},{text:"Recharging... ",color:"gray"},{text:"(",color:"dark_gray"},{score:{name:"@s",objective:"ec.seers_cd"},color:"dark_gray"},{text:" ticks)",color:"dark_gray"}]
execute if score @s ec.seers_cd matches 1.. run return 0

# Apply glowing to hostile mobs within 16 blocks for 10s
execute at @s run effect give @e[type=#minecraft:raiders,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=zombie,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=skeleton,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=creeper,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=spider,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=cave_spider,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=enderman,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=witch,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=slime,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=phantom,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=drowned,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=husk,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=stray,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=warden,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=blaze,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=wither_skeleton,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=piglin_brute,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=hoglin,distance=..16] glowing 10 0 false
execute at @s run effect give @e[type=breeze,distance=..16] glowing 10 0 false

# Set cooldown
scoreboard players set @s ec.seers_cd 30

# Feedback
tellraw @s [{text:"[Seer's Compass] ",color:"dark_purple"},{text:"Hostile mobs revealed! ",color:"red"},{text:"(10s)",color:"gray"}]
execute at @s run particle witch ~ ~1 ~ 1 1 1 0.05 15
execute at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.5 1.5
