# Hunter — Passive On-Hit Effects

# Firebolt Thrower (ID 2): Ignite target 2s
execute if score @s ec.ht_bow_id matches 2 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run data merge entity @s {Fire:40s}

# Corrupted Crossbow (ID 4): Wither I on hit 3s
execute if score @s ec.ht_bow_id matches 4 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s wither 3 0 false

# Echo Shot (ID 5): Glowing on hit 5s
execute if score @s ec.ht_bow_id matches 5 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s glowing 5 0 false

# Voidcaller (ID 6): Weakness I on hit 3s
execute if score @s ec.ht_bow_id matches 6 as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s weakness 3 0 false
