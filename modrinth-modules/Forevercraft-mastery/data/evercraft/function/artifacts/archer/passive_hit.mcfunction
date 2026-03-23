# Archer Bow — Passive Hit Effects
# Applied on every arrow hit (not overcharged), based on equipped bow
# @s = player, position = player location

# === FROSTBITE BOW (5): Slowness I 2s on hit ===
execute if score @s ec.ar_bow_id matches 5 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s slowness 40 0 false

# === STORMCALLER BOW (6): Levitation I 4s on hit ===
execute if score @s ec.ar_bow_id matches 6 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s levitation 80 0 false

# === ANCIENT BOW (7): Ignite target 3s on hit ===
execute if score @s ec.ar_bow_id matches 7 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run data modify entity @s Fire set value 60s

# === CALL OF THE VOID (10): Killing blows restore 1 heart ===
execute if score @s ec.ar_bow_id matches 10 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s,Health:0.0f}] run effect give @p instant_health 1 0 false
