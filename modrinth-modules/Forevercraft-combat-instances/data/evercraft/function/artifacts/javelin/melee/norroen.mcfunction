# Norroen Trident (Uncommon) — Melee: Frostbite
# Slowness I (2s) on target + snowflake particles
# Cooldown: 8s

scoreboard players set @s ec.jv_cd 8

execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 2 0 true
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle snowflake ~ ~1 ~ 0.3 0.3 0.3 0.02 8
playsound minecraft:block.powder_snow.step player @s ~ ~ ~ 0.8 1.2

scoreboard players add @s ach.weapon_abilities 1
