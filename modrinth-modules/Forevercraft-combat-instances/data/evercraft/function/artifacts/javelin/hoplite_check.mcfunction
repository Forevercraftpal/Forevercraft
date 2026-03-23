# Javelin Class — Hoplite Sub-Class Check
# Sets ec.jv_hoplite=1 if player has a tank shield in offhand
# Notifies on state transitions (equip/unequip shield)

# Save previous state
scoreboard players operation @s ec.jv_hoplite_prev = @s ec.jv_hoplite

# Update current state
scoreboard players set @s ec.jv_hoplite 0
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run scoreboard players set @s ec.jv_hoplite 1

# Notify on transition: 0 → 1 (entered Hoplite mode)
execute if score @s ec.jv_hoplite matches 1 unless score @s ec.jv_hoplite_prev matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 0.6 1.5
execute if score @s ec.jv_hoplite matches 1 unless score @s ec.jv_hoplite_prev matches 1 run title @s actionbar [{"text":"Hoplite Mode","color":"blue","bold":true},{"text":" — active","color":"white","bold":false}]

# Notify on transition: 1 → 0 (returned to Javelin mode)
execute if score @s ec.jv_hoplite matches 0 if score @s ec.jv_hoplite_prev matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 0.6 0.8
execute if score @s ec.jv_hoplite matches 0 if score @s ec.jv_hoplite_prev matches 1 run title @s actionbar [{"text":"Javelin Mode","color":"aqua","bold":true},{"text":" — active","color":"white","bold":false}]
