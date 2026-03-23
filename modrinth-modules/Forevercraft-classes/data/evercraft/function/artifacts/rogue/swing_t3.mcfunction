# Rogue Tier 3 (Rare) — 4 damage, 5 targets + per-dagger bonuses
# Daggers: Fang of Frost (freeze), Heartstealer (precision strike)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === TAG TARGETS: 1.5b forward, 2b sphere, 5 targets ===
execute positioned ^ ^ ^1.5 run tag @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2,limit=5,sort=nearest] add ec.rg_target

# === APPLY DAMAGE (with affinity boost) ===
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 4
function evercraft:affinity/boost_damage
execute as @e[tag=ec.rg_target] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp
tag @s remove ec.aff_attacker

# === VISUAL EFFECTS ===
execute as @e[tag=ec.rg_target] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# Fang of Frost — Freeze: Slowness III for 2s on hit targets
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"glacial_edge"}] as @e[tag=ec.rg_target] run effect give @s slowness 2 2
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"glacial_edge"}] positioned ^ ^ ^1.5 run particle snowflake ~ ~1 ~ 0.3 0.3 0.3 0.02 5

# Heartstealer — Precision Strike: 25% chance for bonus 4 damage (doubles the hit)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"heartstealer"}] run function evercraft:artifacts/rogue/bonus/precision

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.7 1.3

# === CLEANUP ===
tag @e[tag=ec.rg_target] remove ec.rg_target
