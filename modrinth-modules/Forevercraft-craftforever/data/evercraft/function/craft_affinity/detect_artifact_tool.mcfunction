# Craft Affinity — Detect artifact tool in mainhand (non-spirit tool players)
# Sets ec.caff_class and copies boost % for players holding artifact tools
# Run as: player WITHOUT ec.st_held tag

# Early exit if not holding an artifact tool with craft_class
execute unless items entity @s weapon.mainhand *[custom_data~{craft_class:1}] unless items entity @s weapon.mainhand *[custom_data~{craft_class:2}] unless items entity @s weapon.mainhand *[custom_data~{craft_class:3}] unless items entity @s weapon.mainhand *[custom_data~{craft_class:4}] unless items entity @s weapon.mainhand *[custom_data~{craft_class:5}] run return 0

# Detect craft_class and set ec.caff_class
execute if items entity @s weapon.mainhand *[custom_data~{craft_class:1}] run scoreboard players set @s ec.caff_class 1
execute if items entity @s weapon.mainhand *[custom_data~{craft_class:2}] run scoreboard players set @s ec.caff_class 2
execute if items entity @s weapon.mainhand *[custom_data~{craft_class:3}] run scoreboard players set @s ec.caff_class 3
execute if items entity @s weapon.mainhand *[custom_data~{craft_class:4}] run scoreboard players set @s ec.caff_class 4
execute if items entity @s weapon.mainhand *[custom_data~{craft_class:5}] run scoreboard players set @s ec.caff_class 5

# Copy current class boost to generic (same logic as spirit tool tick)
execute if score @s ec.caff_class matches 1 run scoreboard players operation @s ec.caff_boost = @s ec.caffb_ss
execute if score @s ec.caff_class matches 2 run scoreboard players operation @s ec.caff_boost = @s ec.caffb_lf
execute if score @s ec.caff_class matches 3 run scoreboard players operation @s ec.caff_boost = @s ec.caffb_gs
execute if score @s ec.caff_class matches 4 run scoreboard players operation @s ec.caff_boost = @s ec.caffb_tw
execute if score @s ec.caff_class matches 5 run scoreboard players operation @s ec.caff_boost = @s ec.caffb_sc

# Passive XP drip: grant 1 class XP every 40 ticks (2s) while holding artifact tool
# Uses the same permanent tick timer from spirit_tools/tick (caff_ptimer)
execute if score #caff_ptimer ec.var matches 0 run scoreboard players set #delta ec.temp 1
execute if score #caff_ptimer ec.var matches 0 run function evercraft:craft_affinity/internal_grant
