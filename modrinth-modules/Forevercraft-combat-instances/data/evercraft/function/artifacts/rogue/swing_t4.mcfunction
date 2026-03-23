# Rogue Tier 4 (Ornate) — 5 damage, 6 targets + per-dagger bonuses
# Daggers: Void-Touched Blade (void strike), The Soul Mirror (soul drain)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === TAG TARGETS: 1.5b forward, 2b sphere, 6 targets (cleave) ===
execute positioned ^ ^ ^1.5 run tag @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2,limit=6,sort=nearest] add ec.rg_target

# === APPLY DAMAGE (with affinity boost) ===
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 5
function evercraft:affinity/boost_damage
execute as @e[tag=ec.rg_target] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp
tag @s remove ec.aff_attacker

# === VISUAL EFFECTS (on each target) ===
execute as @e[tag=ec.rg_target] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# Void-Touched Blade — Void Strike: 15% chance to levitate target for 1s
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"voidbane"}] run function evercraft:artifacts/rogue/bonus/void_strike

# The Soul Mirror — Soul Drain: Darkness 1s on targets + Strength I 2s to self
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"soulflame"}] as @e[tag=ec.rg_target] run effect give @s darkness 1 0
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"soulflame"}] run effect give @s strength 2 0
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"soulflame"}] positioned ^ ^ ^1.5 run particle sculk_soul ~ ~1 ~ 0.3 0.3 0.3 0.02 3

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.8 1.2

# === CLEANUP ===
tag @e[tag=ec.rg_target] remove ec.rg_target
