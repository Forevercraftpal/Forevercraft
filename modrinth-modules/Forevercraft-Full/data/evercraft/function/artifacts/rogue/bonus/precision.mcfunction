# Heartstealer — Precision Strike: 25% chance for bonus 4 damage
# Run as the swinging player, anchored eyes
# ec.rg_target tag is set on hit targets by swing_t3

# Roll once
tag @s remove ec.rg_proc
execute if predicate evercraft:random/chance_25 run tag @s add ec.rg_proc

# Apply bonus damage to all tagged targets + effects if proc'd
execute if entity @s[tag=ec.rg_proc] as @e[tag=ec.rg_target] run damage @s 4 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]
execute if entity @s[tag=ec.rg_proc] positioned ^ ^ ^1.5 run particle crit ~ ~1 ~ 0.3 0.4 0.3 0.2 8
execute if entity @s[tag=ec.rg_proc] run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 0.6 1.5

tag @s remove ec.rg_proc
