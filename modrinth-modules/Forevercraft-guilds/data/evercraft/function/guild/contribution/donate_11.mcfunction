# Guild Donation — Structure Crates (Activity 11)
# Items: chain, iron_ingot, gold_ingot (1pt) | diamond, name_tag, saddle (5pt) | enchanted_golden_apple, trident (25pt)

# === Tier 3: 25pt ===

# enchanted_golden_apple (25pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:enchanted_golden_apple 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:enchanted_golden_apple
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# trident (25pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:trident 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:trident
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 5pt ===

# diamond (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:diamond 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:diamond
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# name_tag (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:name_tag 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:name_tag
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# saddle (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:saddle 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:saddle
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# chain (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:iron_chain 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:iron_chain
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# iron_ingot (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:iron_ingot 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:iron_ingot
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# gold_ingot (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:gold_ingot 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:gold_ingot
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold structure loot to donate! (chains, ingots, diamonds, tridents, etc.)",color:"yellow"}]
