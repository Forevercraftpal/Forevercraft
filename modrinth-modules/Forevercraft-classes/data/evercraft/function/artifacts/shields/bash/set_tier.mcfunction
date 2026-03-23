# Shield Bash — Set Tier Values
# Sets #tk_bash_dmg, #tk_bash_kb, #tk_bash_cd_val in ec.var based on mainhand shield tier

# Default (common): 3 dmg, 10 KB (x10 scale for tp), 15s CD
scoreboard players set #tk_bash_dmg ec.var 3
scoreboard players set #tk_bash_kb ec.var 10
scoreboard players set #tk_bash_cd_val ec.var 15

# Uncommon: 4 dmg, 13 KB, 13s CD
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"uncommon"}] run scoreboard players set #tk_bash_dmg ec.var 4
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"uncommon"}] run scoreboard players set #tk_bash_kb ec.var 13
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"uncommon"}] run scoreboard players set #tk_bash_cd_val ec.var 13

# Rare: 5 dmg, 16 KB, 11s CD
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"rare"}] run scoreboard players set #tk_bash_dmg ec.var 5
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"rare"}] run scoreboard players set #tk_bash_kb ec.var 16
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"rare"}] run scoreboard players set #tk_bash_cd_val ec.var 11

# Ornate: 6 dmg, 19 KB, 9s CD
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"ornate"}] run scoreboard players set #tk_bash_dmg ec.var 6
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"ornate"}] run scoreboard players set #tk_bash_kb ec.var 19
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"ornate"}] run scoreboard players set #tk_bash_cd_val ec.var 9

# Exquisite: 8 dmg, 22 KB, 7s CD
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"exquisite"}] run scoreboard players set #tk_bash_dmg ec.var 8
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"exquisite"}] run scoreboard players set #tk_bash_kb ec.var 22
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"exquisite"}] run scoreboard players set #tk_bash_cd_val ec.var 7

# Mythical: 10 dmg, 28 KB, 5s CD
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run scoreboard players set #tk_bash_dmg ec.var 10
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run scoreboard players set #tk_bash_kb ec.var 28
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run scoreboard players set #tk_bash_cd_val ec.var 5
