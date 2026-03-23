# Tracker's Mark — Hunting Bow (Common Archer)
# Ranged hit: target glows for 5 seconds, revealing them through walls

advancement revoke @s only evercraft:artifacts/abilities/trackers_mark_trigger

# Apply Glowing to the hit target
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s glowing 5 0 false

# Visual feedback
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 10
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.4 1.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
