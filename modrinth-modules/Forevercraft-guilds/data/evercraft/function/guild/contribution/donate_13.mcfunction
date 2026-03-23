# Guild Donation — Cooking (Activity 13)
# Items: wheat, sugar, egg (1pt) | cooked_beef, cooked_porkchop, pumpkin_pie (3pt) | golden_carrot, cake (10pt)

# === Tier 3: 10pt ===

# golden_carrot (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:golden_carrot 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:golden_carrot
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# cake (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:cake 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:cake
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 3pt ===

# cooked_beef (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:cooked_beef 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:cooked_beef
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# cooked_porkchop (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:cooked_porkchop 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:cooked_porkchop
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# pumpkin_pie (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:pumpkin_pie 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:pumpkin_pie
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# wheat (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:wheat 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:wheat
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# sugar (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:sugar 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:sugar
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# egg (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:egg 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:egg
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold cooking ingredients to donate! (wheat, sugar, cooked meats, etc.)",color:"yellow"}]
