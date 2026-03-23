# Meteor Strike — Star Axe + Impact Crater Enhancement
# Base: AoE fire damage on hit + fire particles (falling star impact)
# Enhancement: Targets hit also get Slowness II (3s) — trapped in the crater
advancement revoke @s only evercraft:artifacts/abilities/meteor_strike_trigger
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..3] run damage @s 3 minecraft:on_fire
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..3] run data merge entity @s {Fire:60s}

# Impact Crater: Slowness II to all AoE targets
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] as @e[type=!player,type=!item,distance=..3] run effect give @s slowness 3 1 false

# Visual/audio feedback
execute at @s run particle lava ~ ~2 ~ 1 1 1 0.1 20
execute at @s run particle campfire_cosy_smoke ~ ~0.2 ~ 0.8 0.1 0.8 0.01 10
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
