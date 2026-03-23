# Spirit Tools — Detect held spirit tool in mainhand
# Run as: player WITHOUT ec.st_held tag
# Early-exit chain: first match wins

execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"earthsong"}] run tag @s add ec.st_held
execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"earthsong"}] run scoreboard players set @s ec.st_tool 1
execute if entity @s[tag=ec.st_held] run return 0

execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"bloomweaver"}] run tag @s add ec.st_held
execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"bloomweaver"}] run scoreboard players set @s ec.st_tool 2
execute if entity @s[tag=ec.st_held] run return 0

execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"tidecaller"}] run tag @s add ec.st_held
execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"tidecaller"}] run scoreboard players set @s ec.st_tool 3
execute if entity @s[tag=ec.st_held] run return 0

execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"dustwalker"}] run tag @s add ec.st_held
execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"dustwalker"}] run scoreboard players set @s ec.st_tool 4
execute if entity @s[tag=ec.st_held] run return 0

execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"heartwood"}] run tag @s add ec.st_held
execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"heartwood"}] run scoreboard players set @s ec.st_tool 5
execute if entity @s[tag=ec.st_held] run return 0

execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"silkgrasp"}] run tag @s add ec.st_held
execute if items entity @s weapon.mainhand *[custom_data~{spirit_tool:"silkgrasp"}] run scoreboard players set @s ec.st_tool 6

# === Read tier from item custom_data ===
execute if entity @s[tag=ec.st_held] store result score @s ec.st_tier run data get entity @s SelectedItem.components."minecraft:custom_data".st_tier

# === Check boost status ===
scoreboard players set @s ec.st_boosted 0
execute if entity @s[tag=ec.st_held] if items entity @s weapon.mainhand *[custom_data~{st_boosted:true}] run scoreboard players set @s ec.st_boosted 1

# === Calculate effectiveness from tier ===
execute if entity @s[tag=ec.st_held] run scoreboard players set @s ec.st_eff 50
execute if entity @s[tag=ec.st_held] if score @s ec.st_tier matches 2 run scoreboard players set @s ec.st_eff 60
execute if entity @s[tag=ec.st_held] if score @s ec.st_tier matches 3 run scoreboard players set @s ec.st_eff 70
execute if entity @s[tag=ec.st_held] if score @s ec.st_tier matches 4 run scoreboard players set @s ec.st_eff 80
execute if entity @s[tag=ec.st_held] if score @s ec.st_tier matches 5 run scoreboard players set @s ec.st_eff 90
execute if entity @s[tag=ec.st_held] if score @s ec.st_tier matches 6 run scoreboard players set @s ec.st_eff 100
execute if entity @s[tag=ec.st_held] if score @s ec.st_tier matches 7 run scoreboard players set @s ec.st_eff 125
execute if entity @s[tag=ec.st_held] if score @s ec.st_boosted matches 1 run scoreboard players operation @s ec.st_eff += #25 ec.const

# === Artisan Tome: give tome if player doesn't have one yet ===
execute if entity @s[tag=ec.st_held] unless score @s ec.tq_has_tome matches 1.. run function evercraft:craftforever/spirit_tools/tome/give
