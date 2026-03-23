# Rend — Axeblade (Rare Berserker)
# On critical hit (falling = not on ground): target bleeds
# Bleed = 1 damage every 2 seconds for 6 seconds (3 ticks total)
# Uses entity tag + scheduled function for DoT

advancement revoke @s only evercraft:artifacts/abilities/rend_trigger

# Tag the target as bleeding
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run tag @s add ec.bleeding

# Visual feedback
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle damage_indicator ~ ~1 ~ 0.2 0.3 0.2 0.1 5
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 0.6 0.8

# Start bleed ticks (3 ticks: 0s, 2s, 4s — then cleanup at 6s)
schedule function evercraft:artifacts/abilities/rend_tick_1 40t
schedule function evercraft:artifacts/abilities/rend_tick_2 80t
schedule function evercraft:artifacts/abilities/rend_cleanup 120t

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
