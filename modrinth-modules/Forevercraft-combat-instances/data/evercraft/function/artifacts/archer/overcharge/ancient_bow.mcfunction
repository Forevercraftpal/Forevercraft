# Ancient Bow — KINDLESTRIKE (Ornate)
# Inferno Arrow: 4-block fire burst, 8s burn + lingering flame zone
# @s = player

# Apply fire burst at the hit entity's location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/archer/overcharge/kindlestrike_aoe
