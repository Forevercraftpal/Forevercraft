# Rogue Tier 5 (Exquisite) — 4 damage, 7 targets + per-dagger bonuses
# Daggers: The Beginning and The End (duality), Nameless Blade (shadow strike)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === TAG TARGETS: 1.5b forward, 2.5b sphere, 7 targets (wide cleave) ===
execute positioned ^ ^ ^1.5 run tag @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2.5,limit=7,sort=nearest] add ec.rg_target

# === APPLY DAMAGE (with affinity boost) ===
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 4
function evercraft:affinity/boost_damage
execute as @e[tag=ec.rg_target] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp
tag @s remove ec.aff_attacker

# === VISUAL EFFECTS (on each target) ===
execute as @e[tag=ec.rg_target] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# The Beginning and The End — Duality: alternates fire and frost each swing
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"the_beginning_and_the_end"}] run function evercraft:artifacts/rogue/bonus/duality

# Nameless Blade — Shadow Strike: 20% chance for Invisibility 1s after swing
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"xara_sword"}] run function evercraft:artifacts/rogue/bonus/shadow_strike

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.9 1.1

# === CLEANUP ===
tag @e[tag=ec.rg_target] remove ec.rg_target
