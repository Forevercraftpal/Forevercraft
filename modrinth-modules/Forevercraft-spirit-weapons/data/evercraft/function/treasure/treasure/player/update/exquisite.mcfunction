scoreboard players add @s ec.mythical_count 1

# Achievement tracking
scoreboard players add @s ach.crates_mining 1
scoreboard players add @s ach.crates_opened 1

# Anecdote: Miner's (once per player)
execute unless score @s ec.anec_miner matches 1 run function evercraft:anecdotes/give_miners

scoreboard players set @s ec.total 0

scoreboard players operation @s ec.total += @s ec.break_stone
scoreboard players operation @s ec.total += @s ec.break_diorite
scoreboard players operation @s ec.total += @s ec.break_andesite
scoreboard players operation @s ec.total += @s ec.break_granite
scoreboard players operation @s ec.total += @s ec.break_iron_ore
scoreboard players operation @s ec.total += @s ec.break_diamond_ore
scoreboard players operation @s ec.total += @s ec.break_coal_ore
scoreboard players operation @s ec.total += @s ec.break_redstone_ore
scoreboard players operation @s ec.total += @s ec.break_emerald_ore
scoreboard players operation @s ec.total += @s ec.break_lapis_ore
scoreboard players operation @s ec.total += @s ec.break_gold_ore
scoreboard players operation @s ec.total += @s ec.break_deepslate
scoreboard players operation @s ec.total += @s ec.break_copper_ore
scoreboard players operation @s ec.total += @s ec.break_amethyst
scoreboard players operation @s ec.total += @s ec.break_calcite
scoreboard players operation @s ec.total += @s ec.break_d_coal_ore
scoreboard players operation @s ec.total += @s ec.break_d_iron_ore
scoreboard players operation @s ec.total += @s ec.break_d_gold_ore
scoreboard players operation @s ec.total += @s ec.break_d_copper_ore
scoreboard players operation @s ec.total += @s ec.break_d_redstone_ore
scoreboard players operation @s ec.total += @s ec.break_d_lapis_ore
scoreboard players operation @s ec.total += @s ec.break_d_emerald_ore
scoreboard players operation @s ec.total += @s ec.break_d_diamond_ore
scoreboard players operation @s ec.total += @s ec.break_tuff
scoreboard players operation @s ec.total += @s ec.break_dripstone
scoreboard players operation @s ec.total += @s ec.break_sandstone
scoreboard players operation @s ec.total += @s ec.break_terracotta
scoreboard players operation @s ec.total += @s ec.break_brown_terracotta
scoreboard players operation @s ec.total += @s ec.break_light_gray_terracotta
scoreboard players operation @s ec.total += @s ec.break_orange_terracotta
scoreboard players operation @s ec.total += @s ec.break_red_terracotta
scoreboard players operation @s ec.total += @s ec.break_white_terracotta
scoreboard players operation @s ec.total += @s ec.break_yellow_terracotta
scoreboard players operation @s ec.total += @s ec.break_blackstone
scoreboard players operation @s ec.total += @s ec.break_netherrack
scoreboard players operation @s ec.total += @s ec.break_magma_block
scoreboard players operation @s ec.total += @s ec.break_basalt
scoreboard players operation @s ec.total += @s ec.break_smooth_basalt
scoreboard players operation @s ec.total += @s ec.break_nether_gold_ore
scoreboard players operation @s ec.total += @s ec.break_nether_quartz_ore
scoreboard players operation @s ec.total += @s ec.break_end_stone

recipe give @s evercraft:treasure/advancement

scoreboard players operation @s ec.total += #progression ec.var

# Artisan XP: Mining (+15 per exquisite crate)
scoreboard players set #cf_xp_amount ec.cf_temp 15
scoreboard players set #cf_xp_cat ec.cf_temp 0
function evercraft:craftforever/artisan/add_xp