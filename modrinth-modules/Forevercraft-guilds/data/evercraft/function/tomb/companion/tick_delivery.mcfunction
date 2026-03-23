# Tomb System — Tick Delivery Check
# @s = player with ec.tomb_carrier tag, positioned at their location
# Checks if the grave owner is within 1.5 blocks

# First verify carrier still has the bundle
execute store success score #tomb_has_bundle ec.temp run clear @s bundle[custom_data~{soul_bundle:1b}] 0
execute unless score #tomb_has_bundle ec.temp matches 1 run tag @s remove ec.tomb_carrier
execute unless score #tomb_has_bundle ec.temp matches 1 run return 0

# Also check the bundled marker still exists (hasn't shattered)
execute store result score #tomb_carry_id ec.temp run scoreboard players get @s ec.tomb_carry
scoreboard players set #tomb_bundled_alive ec.temp 0
execute as @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_bundled] if score @s ec.tomb_id = #tomb_carry_id ec.temp run scoreboard players set #tomb_bundled_alive ec.temp 1

# Keep the data marker loaded by teleporting it to carrier (position context = carrier from tick dispatch)
execute as @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_bundled] if score @s ec.tomb_id = #tomb_carry_id ec.temp run tp @s ~ ~ ~

# If marker is gone, remove bundle and carrier tag
execute if score #tomb_bundled_alive ec.temp matches 0 run clear @s bundle[custom_data~{soul_bundle:1b}] 1
execute if score #tomb_bundled_alive ec.temp matches 0 run tag @s remove ec.tomb_carrier
execute if score #tomb_bundled_alive ec.temp matches 0 run tellraw @s [{"text":"The soul has faded...","color":"dark_red","italic":true}]
execute if score #tomb_bundled_alive ec.temp matches 0 run return 0

# Check if the owner is within 1.5 blocks of the carrier
# Use the carrier's stored owner UUID scores
scoreboard players operation #tomb_co0 ec.temp = @s ec.tomb_carry_o0
scoreboard players operation #tomb_co1 ec.temp = @s ec.tomb_carry_o1
scoreboard players operation #tomb_co2 ec.temp = @s ec.tomb_carry_o2
scoreboard players operation #tomb_co3 ec.temp = @s ec.tomb_carry_o3

# Find the owner player nearby
execute as @a[distance=..1.5] if score @s ec.tomb_uuid0 = #tomb_co0 ec.temp if score @s ec.tomb_uuid1 = #tomb_co1 ec.temp if score @s ec.tomb_uuid2 = #tomb_co2 ec.temp if score @s ec.tomb_uuid3 = #tomb_co3 ec.temp run function evercraft:tomb/companion/deliver
