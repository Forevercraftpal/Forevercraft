# Dancer Detection — Identify tier and apply evasion bonus
# Run as player with dancer gauntlet in mainhand, no ec.dn_active tag

tag @s add ec.dn_active

# === TIER DETECTION (mainhand) ===
scoreboard players set @s ec.dn_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.dn_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.dn_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.dn_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.dn_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.dn_tier 6

# === DUAL WIELD CHECK ===
scoreboard players set @s ec.dn_dual 0
execute if items entity @s weapon.offhand #minecraft:swords[custom_data~{dancer:true}] run scoreboard players set @s ec.dn_dual 1

# Upgrade tier if offhand is higher
execute if items entity @s weapon.offhand *[custom_data~{tier:"uncommon",dancer:true}] if score @s ec.dn_tier matches ..1 run scoreboard players set @s ec.dn_tier 2
execute if items entity @s weapon.offhand *[custom_data~{tier:"rare",dancer:true}] if score @s ec.dn_tier matches ..2 run scoreboard players set @s ec.dn_tier 3
execute if items entity @s weapon.offhand *[custom_data~{tier:"ornate",dancer:true}] if score @s ec.dn_tier matches ..3 run scoreboard players set @s ec.dn_tier 4
execute if items entity @s weapon.offhand *[custom_data~{tier:"exquisite",dancer:true}] if score @s ec.dn_tier matches ..4 run scoreboard players set @s ec.dn_tier 5
execute if items entity @s weapon.offhand *[custom_data~{tier:"mythical",dancer:true}] if score @s ec.dn_tier matches ..5 run scoreboard players set @s ec.dn_tier 6

# === EVASION BONUS (applied in evasion_check, not to adv.evasion) ===
# +20 per gauntlet (5% = 20 × 0.25% per evasion level)
scoreboard players set @s ec.dn_evasion_add 20
execute if score @s ec.dn_dual matches 1 run scoreboard players set @s ec.dn_evasion_add 40

# === DANCER PENALTY — trade armor and health for evasion and speed ===
attribute @s armor modifier remove evercraft:dancer_penalty
attribute @s armor modifier add evercraft:dancer_penalty -5 add_value
attribute @s max_health modifier remove evercraft:dancer_penalty
attribute @s max_health modifier add evercraft:dancer_penalty -5 add_value

# === FEEDBACK ===
playsound minecraft:entity.breeze.wind_burst player @s ~ ~ ~ 0.6 1.5
execute if score @s ec.dn_dual matches 1 run title @s actionbar [{"text":"Dual Gauntlets","color":"light_purple","bold":true},{"text":" — gauntlets ready","color":"white","bold":false}]
execute unless score @s ec.dn_dual matches 1 run title @s actionbar [{"text":"Dancer Mode","color":"light_purple","bold":true},{"text":" — gauntlet ready","color":"white","bold":false}]
