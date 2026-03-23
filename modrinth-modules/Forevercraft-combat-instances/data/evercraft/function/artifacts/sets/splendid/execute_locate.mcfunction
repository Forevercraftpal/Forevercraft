# Execute structure location based on trigger value
# Set cooldown
scoreboard players set @s ec.compass_cooldown 72000

# Execute locate based on value
execute if score @s ec.locate matches 1 run locate structure minecraft:village
execute if score @s ec.locate matches 2 run locate structure minecraft:pillager_outpost
execute if score @s ec.locate matches 3 run locate structure minecraft:desert_pyramid
execute if score @s ec.locate matches 4 run locate structure minecraft:jungle_pyramid
execute if score @s ec.locate matches 5 run locate structure minecraft:monument
execute if score @s ec.locate matches 6 run locate structure minecraft:shipwreck
execute if score @s ec.locate matches 7 run locate structure minecraft:mansion
execute if score @s ec.locate matches 8 run locate structure minecraft:stronghold
execute if score @s ec.locate matches 9 run locate structure minecraft:fortress
execute if score @s ec.locate matches 10 run locate structure minecraft:bastion_remnant
execute if score @s ec.locate matches 11 run locate structure minecraft:end_city
execute if score @s ec.locate matches 12 run locate structure minecraft:trial_chambers
execute if score @s ec.locate matches 13 if entity @s[tag=splendid_5pc] run locate structure minecraft:ancient_city
execute if score @s ec.locate matches 13 unless entity @s[tag=splendid_5pc] run tellraw @s {text:"You need the full Splendid set to locate Ancient Cities!",color:"red"}

# Reset trigger
scoreboard players set @s ec.locate 0

# Particles and sound
execute at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 30
execute at @s run playsound minecraft:item.lodestone_compass.lock player @s ~ ~ ~ 1 1
tellraw @s {text:"The compass reveals the path...",color:"gold",italic:true}
