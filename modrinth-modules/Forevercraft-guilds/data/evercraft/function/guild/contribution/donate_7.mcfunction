# Guild Donation — Quests (Activity 7)
# Items: paper, book, emerald (1pt) | name_tag, experience_bottle (5pt) | emerald_block, totem_of_undying (25pt)

# === Tier 3: 25pt ===

# emerald_block (25pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:emerald_block 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:emerald_block
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# totem_of_undying (25pt) — exclude artifact totems (custom_data)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:totem_of_undying[!custom_data~{}] 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:totem_of_undying[!custom_data~{}]
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 5pt ===

# name_tag (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:name_tag 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:name_tag
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# experience_bottle (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:experience_bottle 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:experience_bottle
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# paper (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:paper 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:paper
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# book (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:book 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:book
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# emerald (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:emerald 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:emerald
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold quest supplies to donate! (paper, books, name tags, etc.)",color:"yellow"}]
