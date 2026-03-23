# Shatter — Frostmourne Enhancement (Exquisite)
# On kill: AoE frost damage (3) + Slowness I to all mobs within 4 blocks
# Represents the frozen target shattering and sending ice shards outward
advancement revoke @s only evercraft:artifacts/abilities/frost_drain_kill_trigger

# AoE frost shatter — 3 damage + Slowness I (5s) to all nearby mobs
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run damage @s 3 minecraft:freeze
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run effect give @s slowness 5 0 false

# Visual/audio feedback — ice shatter
execute at @s run particle snowflake ~ ~1 ~ 1 0.5 1 0.1 30
execute at @s run particle block{block_state:{Name:"minecraft:blue_ice"}} ~ ~0.5 ~ 0.8 0.3 0.8 0.5 20
playsound minecraft:block.glass.break player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.player.hurt_freeze player @a[distance=..16] ~ ~ ~ 0.6 1.2
title @s actionbar {text:"Shatter!",color:"aqua",bold:true}

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
