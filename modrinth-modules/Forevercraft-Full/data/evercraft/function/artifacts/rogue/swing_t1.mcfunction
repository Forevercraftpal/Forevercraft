# Rogue Tier 1 (Common) — 3 damage, 3 targets
# Daggers: Dagger, Hellenic Sword
# Run as player, anchored eyes, ec.rg_swinger tag set

# === TAG TARGETS: 1.5b forward, 2b sphere, 3 targets ===
execute positioned ^ ^ ^1.5 run tag @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2,limit=3,sort=nearest] add ec.rg_target

# === APPLY DAMAGE (with affinity boost) ===
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 3
function evercraft:affinity/boost_damage
execute as @e[tag=ec.rg_target] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp
tag @s remove ec.aff_attacker

# === VISUAL EFFECTS ===
execute as @e[tag=ec.rg_target] at @s run function evercraft:artifacts/rogue/effects

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.5 1.5

# === CLEANUP ===
tag @e[tag=ec.rg_target] remove ec.rg_target
