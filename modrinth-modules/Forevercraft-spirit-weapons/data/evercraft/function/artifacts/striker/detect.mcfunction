# Striker Detection — Identify tier and apply passives
# Run as player who just equipped a striker mace (no ec.sk_active tag yet)

tag @s add ec.sk_active

# === TIER DETECTION ===
scoreboard players set @s ec.sk_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.sk_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.sk_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.sk_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.sk_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.sk_tier 6

# === PASSIVE: HEAVY HANDED ===
# +knockback resistance per tier (capped at 1.0 = full immunity)
execute if score @s ec.sk_tier matches 1 run attribute @s knockback_resistance modifier add evercraft:striker_kb_resist 0.3 add_value
execute if score @s ec.sk_tier matches 2 run attribute @s knockback_resistance modifier add evercraft:striker_kb_resist 0.6 add_value
execute if score @s ec.sk_tier matches 3 run attribute @s knockback_resistance modifier add evercraft:striker_kb_resist 0.9 add_value
execute if score @s ec.sk_tier matches 4 run attribute @s knockback_resistance modifier add evercraft:striker_kb_resist 1.0 add_value
execute if score @s ec.sk_tier matches 5 run attribute @s knockback_resistance modifier add evercraft:striker_kb_resist 1.0 add_value
execute if score @s ec.sk_tier matches 6 run attribute @s knockback_resistance modifier add evercraft:striker_kb_resist 1.0 add_value

# Initialize Impact at 0 (preserve if re-equipping same session)
execute unless score @s ec.sk_impact matches 0.. run scoreboard players set @s ec.sk_impact 0

# Initialize combat timer
scoreboard players set @s ec.sk_combat 0

# Initialize cooldowns to ready (-1 = ready)
execute unless score @s ec.sk_cd matches 0.. run scoreboard players set @s ec.sk_cd -1
execute unless score @s ec.sk_fort_cd matches 0.. run scoreboard players set @s ec.sk_fort_cd -1

# === SENTINEL CHECK ===
execute if items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/striker/sentinel_detect

# === FEEDBACK ===
playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 0.6 0.5
execute if entity @s[tag=ec.sk_sentinel] run title @s actionbar [{"text":"Sentinel Mode","color":"aqua","bold":true},{"text":" — mace readied","color":"white","bold":false}]
execute unless entity @s[tag=ec.sk_sentinel] run title @s actionbar [{"text":"Striker Mode","color":"gold","bold":true},{"text":" — mace readied","color":"yellow","bold":false}]
