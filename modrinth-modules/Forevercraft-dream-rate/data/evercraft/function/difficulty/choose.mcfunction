# Difficulty Selection Handler — Called from tick trigger
# @s = player, ec.diff_trigger = 1 (Newcomer) or 2 (Adventurer)

# If already chosen, check 14-day lock — abort if locked
execute if score @s ec.difficulty matches 1..2 store result score #_diff_now ec.temp run time query day
execute if score @s ec.difficulty matches 1..2 run scoreboard players operation #_diff_now ec.temp -= @s ec.diff_day
execute if score @s ec.difficulty matches 1..2 if score #_diff_now ec.temp matches ..13 run function evercraft:difficulty/locked_msg
execute if score @s ec.difficulty matches 1..2 if score #_diff_now ec.temp matches ..13 run scoreboard players set @s ec.diff_trigger 0
execute if score @s ec.difficulty matches 1..2 if score #_diff_now ec.temp matches ..13 run scoreboard players enable @s ec.diff_trigger
execute if score @s ec.difficulty matches 1..2 if score #_diff_now ec.temp matches ..13 run return 0

# Store chosen day
execute store result score @s ec.diff_day run time query day

# Apply selection
scoreboard players operation @s ec.difficulty = @s ec.diff_trigger

# Confirmation messages
execute if score @s ec.difficulty matches 1 run tellraw @s [{text:"[!] ",color:"gold"},{text:"Difficulty set to ",color:"gray"},{text:"Newcomer",color:"green",bold:true},{text:" \u2014 relaxed mobs, +10% bonus rewards.",color:"gray"}]
execute if score @s ec.difficulty matches 2 run tellraw @s [{text:"[!] ",color:"gold"},{text:"Difficulty set to ",color:"gray"},{text:"Adventurer",color:"red",bold:true},{text:" \u2014 full challenge, standard rates.",color:"gray"}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2

# Show spirit weapon/tool choice for Newcomer players who haven't chosen yet
execute if score @s ec.difficulty matches 1 unless entity @s[tag=ec.spirit_chosen] run function evercraft:newcomer/spirit_weapon_choice

# Reset trigger
scoreboard players set @s ec.diff_trigger 0
scoreboard players enable @s ec.diff_trigger
