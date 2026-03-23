# Javelin Class — Detect new equip
# Run as player who just equipped a javelin trident

tag @s add ec.jv_active

# === TIER DETECTION ===
# Default to uncommon (tier 2) then upgrade
scoreboard players set @s ec.jv_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.jv_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.jv_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.jv_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.jv_tier 6

# === ARTIFACT ID DETECTION ===
# Note: JSON integers ≤127 are stored as bytes in NBT — must use 'b' suffix
scoreboard players set @s ec.jv_id 0
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:1b}] run scoreboard players set @s ec.jv_id 1
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:2b}] run scoreboard players set @s ec.jv_id 2
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:3b}] run scoreboard players set @s ec.jv_id 3
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:4b}] run scoreboard players set @s ec.jv_id 4
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:5b}] run scoreboard players set @s ec.jv_id 5
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:6b}] run scoreboard players set @s ec.jv_id 6
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:7b}] run scoreboard players set @s ec.jv_id 7
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:8b}] run scoreboard players set @s ec.jv_id 8
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:9b}] run scoreboard players set @s ec.jv_id 9
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:10b}] run scoreboard players set @s ec.jv_id 10

# === HOPLITE CHECK (skip transition notify on first equip — we handle it below) ===
scoreboard players set @s ec.jv_hoplite 0
scoreboard players set @s ec.jv_hoplite_prev 0
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run scoreboard players set @s ec.jv_hoplite 1
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run scoreboard players set @s ec.jv_hoplite_prev 1

# === FEEDBACK ===
playsound minecraft:item.trident.return player @s ~ ~ ~ 0.6 1.5
execute if score @s ec.jv_hoplite matches 1 run title @s actionbar [{"text":"Hoplite Mode","color":"blue","bold":true},{"text":" — ready","color":"white","bold":false}]
execute unless score @s ec.jv_hoplite matches 1 run title @s actionbar [{"text":"Javelin Mode","color":"aqua","bold":true},{"text":" — ready","color":"white","bold":false}]
