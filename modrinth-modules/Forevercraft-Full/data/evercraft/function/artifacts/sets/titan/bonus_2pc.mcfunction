# Tempest 2-Piece Bonus: Poseidon's Blessing — Conduit Power + Fishing Dream Rate
execute unless entity @s[tag=titan_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 2pc: ",color:"light_purple"},{text:"Poseidon's Blessing — Conduit Power + Fishing Dream Rate",color:"gray"}]
tag @s add titan_2pc
effect give @s conduit_power 3 0 false
# Add +1.0 Fishing Dream Rate (from merged Angler set)
attribute @s luck modifier add titan_2pc_luck 1.0 add_value

# Class bonus: Javelin (mainhand trident, no offhand shield) — +1 Attack Damage
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] unless entity @s[tag=ttn_jav_2pc] run attribute @s attack_damage modifier add evercraft:ttn_jav_2pc_dmg 1 add_value
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] run tag @s add ttn_jav_2pc
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_jav_2pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_2pc_dmg
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_jav_2pc] run tag @s remove ttn_jav_2pc
execute unless items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] if entity @s[tag=ttn_jav_2pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_2pc_dmg
execute unless items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] if entity @s[tag=ttn_jav_2pc] run tag @s remove ttn_jav_2pc

# Class bonus: Hoplite (offhand shield) — +4 Max Health
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless entity @s[tag=ttn_hop_2pc] run attribute @s max_health modifier add evercraft:ttn_hop_2pc_hp 4 add_value
execute if items entity @s weapon.offhand shield[custom_data~{tank:1b}] run tag @s add ttn_hop_2pc
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_hop_2pc] run attribute @s max_health modifier remove evercraft:ttn_hop_2pc_hp
execute unless items entity @s weapon.offhand shield[custom_data~{tank:1b}] if entity @s[tag=ttn_hop_2pc] run tag @s remove ttn_hop_2pc
