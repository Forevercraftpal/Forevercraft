# Evercraft Harvest Crates - Load
scoreboard objectives add ec.init dummy
scoreboard players add harvest_crates ec.init 0
execute unless score harvest_crates ec.init matches 1 run function evercraft:harvest/ref/init
