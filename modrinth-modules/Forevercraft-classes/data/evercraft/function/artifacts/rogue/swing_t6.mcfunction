# Rogue Tier 6 (Mythical) — 5 damage, 10 targets (Zantetsuken: unlimited) + per-dagger bonuses
# Daggers: Ender Dragon Blade (dragon's edge), Zantetsuken (iai strike)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === TAG TARGETS: per-dagger ===
# Ender Dragon Blade: 10 targets, massive cleave
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ender_dragon_sword"}] positioned ^ ^ ^1.5 run tag @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2.5,limit=10,sort=nearest] add ec.rg_target

# Zantetsuken — Iai Strike: hits ALL enemies in range (no limit)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] positioned ^ ^ ^1.5 run tag @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2.5,sort=nearest] add ec.rg_target

# === APPLY DAMAGE (with affinity boost) ===
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 5
function evercraft:affinity/boost_damage
execute as @e[tag=ec.rg_target] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp
tag @s remove ec.aff_attacker

# === VISUAL EFFECTS ===
execute as @e[tag=ec.rg_target] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# Ender Dragon Blade — Dragon's Edge: Weakness I 3s on hit + dragon breath particles
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ender_dragon_sword"}] run function evercraft:artifacts/rogue/bonus/dragons_edge

# Zantetsuken — Iai Strike particles (wind slash visual)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] positioned ^ ^ ^1.5 run particle sweep_attack ~ ~0.8 ~ 1.0 0.5 1.0 0 8
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] positioned ^ ^ ^1.5 run particle enchanted_hit ~ ~1.0 ~ 0.8 0.4 0.8 0.5 10

# Zantetsuken — Dimensional Cut: every 10th swing teleports behind nearest target
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] run scoreboard players add @s ec.zant_hits 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] if score @s ec.zant_hits matches 10.. run function evercraft:artifacts/abilities/dimensional_cut
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] if score @s ec.zant_hits matches 10.. run scoreboard players set @s ec.zant_hits 0

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 1.0 1.0
playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 0.4 1.6

# === CLEANUP ===
tag @e[tag=ec.rg_target] remove ec.rg_target
