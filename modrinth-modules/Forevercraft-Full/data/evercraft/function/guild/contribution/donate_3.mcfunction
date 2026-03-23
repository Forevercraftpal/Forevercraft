# Guild Donation — Foraging (Activity 3)
# Items: sweet_berries, glow_berries, brown_mushroom (1pt) | apple, red_mushroom, melon_slice (3pt) | golden_apple, chorus_fruit (10pt)

# === Tier 3: 10pt ===

# golden_apple (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:golden_apple 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:golden_apple
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# chorus_fruit (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:chorus_fruit 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:chorus_fruit
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 3pt ===

# apple (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:apple 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:apple
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# red_mushroom (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:red_mushroom 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:red_mushroom
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# melon_slice (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:melon_slice 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:melon_slice
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# sweet_berries (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:sweet_berries 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:sweet_berries
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# glow_berries (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:glow_berries 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:glow_berries
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# brown_mushroom (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:brown_mushroom 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:brown_mushroom
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold foraged goods to donate! (berries, mushrooms, golden apples, etc.)",color:"yellow"}]
