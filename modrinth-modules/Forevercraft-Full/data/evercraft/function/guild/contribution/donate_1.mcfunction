# Guild Donation — Dungeons (Activity 1)
# Items: arrow, bone, cobweb (1pt) | trial_key, breeze_rod (5pt) | ominous_trial_key, heavy_core (25pt)

# === Tier 3: 25pt ===

# ominous_trial_key (25pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:ominous_trial_key 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:ominous_trial_key
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# heavy_core (25pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:heavy_core 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:heavy_core
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 5pt ===

# trial_key (5pt) — exclude Dungeon Keys (custom_data)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:trial_key[!custom_data~{}] 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:trial_key[!custom_data~{}]
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# breeze_rod (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:breeze_rod 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:breeze_rod
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# arrow (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:arrow 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:arrow
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# bone (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:bone 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:bone
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# cobweb (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:cobweb 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:cobweb
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold dungeon supplies to donate! (arrows, bones, trial keys, etc.)",color:"yellow"}]
