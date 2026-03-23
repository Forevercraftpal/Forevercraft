# Shivering Bow — FROSTFANG (Rare)
# Glacial Arrow: 5-block frost zone, Slowness IV + Mining Fatigue II for 6s
# @s = player

# Apply frost zone effects at the hit entity's location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/archer/overcharge/frostfang_aoe
