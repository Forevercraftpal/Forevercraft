# Rogue — Update dual-wield + shield state (per-player)
# OPT: Consolidates ~8 @a scans into 1 function call

# === Dual wield transition detection ===
# Gained dual wield (was single, now has offhand dagger)
execute if score @s ec.rg_dual matches 0 if items entity @s weapon.offhand *[custom_data~{rogue:true}] run playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.6 2.0
execute if score @s ec.rg_dual matches 0 if items entity @s weapon.offhand *[custom_data~{rogue:true}] run title @s actionbar [{"text":"Dual Daggers","color":"dark_purple","bold":true},{"text":" — active","color":"#9B59B6","bold":false}]
# Lost dual wield (was dual, now lost offhand dagger)
execute if score @s ec.rg_dual matches 1 unless items entity @s weapon.offhand *[custom_data~{rogue:true}] run playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.6 1.2
execute if score @s ec.rg_dual matches 1 unless items entity @s weapon.offhand *[custom_data~{rogue:true}] run title @s actionbar [{"text":"Rogue Mode","color":"dark_purple","bold":true},{"text":" — single dagger","color":"#9B59B6","bold":false}]

# === Update dual wield state ===
execute if items entity @s weapon.offhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_dual 1
execute unless items entity @s weapon.offhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_dual 0

# === Shield check — shield in offhand pauses auto-swing ===
execute if items entity @s weapon.offhand minecraft:shield run tag @s add ec.rg_shielded
execute unless items entity @s weapon.offhand minecraft:shield run tag @s remove ec.rg_shielded
