# Undead Slayer 2 - +5 damage vs undead mobs
# Replaces Smite 2

advancement revoke @s only evercraft:artifacts/abilities/melee/undead_slayer_2_trigger

# Deal bonus damage to undead target
execute at @s as @e[type=#minecraft:undead,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 5 minecraft:player_attack

# Visual feedback (holy/light themed)
execute at @s if entity @e[type=#minecraft:undead,distance=..5,limit=1,nbt={HurtTime:10s}] run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 16
execute at @s if entity @e[type=#minecraft:undead,distance=..5,limit=1,nbt={HurtTime:10s}] run playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 0.4 1.8
