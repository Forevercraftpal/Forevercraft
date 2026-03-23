# Guild Donation — Lore Discovery (Activity 9)
# Items: paper, ink_sac, feather (1pt) | book, map, compass (5pt) | writable_book, echo_shard (20pt)

# === Tier 3: 20pt ===

# writable_book (20pt) — exclude Message in a Bottle, Guild Charter (custom_data)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:writable_book[!custom_data~{}] 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:writable_book[!custom_data~{}]
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 20
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# echo_shard (20pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:echo_shard 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:echo_shard
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 20
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 5pt ===

# book (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:book 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:book
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# map (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:map 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:map
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# compass (5pt) — exclude artifact compasses (Worn, Dreamcast, Portal Dial)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:compass[!custom_data~{}] 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:compass[!custom_data~{}]
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

# ink_sac (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:ink_sac 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:ink_sac
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# feather (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:feather 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:feather
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold lore materials to donate! (paper, ink, books, echo shards, etc.)",color:"yellow"}]
