# Dragonslayer 2pc Bonus - Extra damage to dragons and endermen
# Called when a player with the 2pc bonus deals damage

# Deal 20% bonus damage (2 extra damage) to ender dragon, endermen, and endermites
execute at @s as @e[type=ender_dragon,distance=..10,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 2 minecraft:mob_attack by @p[tag=dragonslayer_2pc,distance=..10,limit=1,sort=nearest]
execute at @s as @e[type=enderman,distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 2 minecraft:mob_attack by @p[tag=dragonslayer_2pc,distance=..6,limit=1,sort=nearest]
execute at @s as @e[type=endermite,distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 2 minecraft:mob_attack by @p[tag=dragonslayer_2pc,distance=..6,limit=1,sort=nearest]

# Purple particle effect when bonus damage is dealt
execute at @s if entity @e[type=ender_dragon,distance=..10,limit=1,nbt={HurtTime:9s}] run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.02 10
execute at @s if entity @e[type=enderman,distance=..6,limit=1,nbt={HurtTime:9s}] run particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.5 0.3 0.02 5
