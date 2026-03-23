# Battle Tempo — Mauler (Common Dancer)
# Each hit increments tempo counter (max 5). At 5 stacks: AoE burst +4 damage in 3 blocks, reset.
# Stacks decay if no hit within 3 seconds (handled by battle_tempo_decay schedule).

advancement revoke @s only evercraft:artifacts/abilities/battle_tempo_trigger

# Increment tempo counter
scoreboard players add @s ec.battle_tempo 1

# Schedule decay (resets after 3s of no hits)
schedule function evercraft:artifacts/abilities/battle_tempo_decay 60t

# Feedback per stack (note particle trail building)
execute if score @s ec.battle_tempo matches 1..4 at @s run particle crit ~ ~1 ~ 0.2 0.2 0.2 0.1 3
execute if score @s ec.battle_tempo matches 1..4 run playsound minecraft:entity.player.attack.weak player @s ~ ~ ~ 0.3 1.5

# At 5 stacks: AoE burst!
execute if score @s ec.battle_tempo matches 5.. at @s as @e[type=!player,distance=..3,limit=10] run damage @s 4 minecraft:generic
execute if score @s ec.battle_tempo matches 5.. at @s run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute if score @s ec.battle_tempo matches 5.. at @s run particle crit ~ ~1 ~ 1 0.5 1 0.2 20
execute if score @s ec.battle_tempo matches 5.. run playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 1.0 0.8
execute if score @s ec.battle_tempo matches 5.. run playsound minecraft:entity.generic.explode player @a[distance=..16] ~ ~ ~ 0.4 1.5

# Reset on burst
execute if score @s ec.battle_tempo matches 5.. run scoreboard players set @s ec.battle_tempo 0

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
