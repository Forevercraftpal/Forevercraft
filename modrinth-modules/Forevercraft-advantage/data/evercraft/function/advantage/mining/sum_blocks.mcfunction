# Mining — Sum all ec.break_* scoreboards into real-time total
# Result stored in #mine_rt adv.temp
# Called every tick for players with mining levels

scoreboard players set #mine_rt adv.temp 0

scoreboard players operation #mine_rt adv.temp += @s ec.break_stone
scoreboard players operation #mine_rt adv.temp += @s ec.break_diorite
scoreboard players operation #mine_rt adv.temp += @s ec.break_andesite
scoreboard players operation #mine_rt adv.temp += @s ec.break_granite
scoreboard players operation #mine_rt adv.temp += @s ec.break_iron_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_diamond_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_coal_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_redstone_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_emerald_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_lapis_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_gold_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_deepslate
scoreboard players operation #mine_rt adv.temp += @s ec.break_copper_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_amethyst
scoreboard players operation #mine_rt adv.temp += @s ec.break_calcite
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_coal_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_iron_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_gold_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_copper_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_redstone_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_lapis_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_emerald_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_d_diamond_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_tuff
scoreboard players operation #mine_rt adv.temp += @s ec.break_dripstone
scoreboard players operation #mine_rt adv.temp += @s ec.break_sandstone
scoreboard players operation #mine_rt adv.temp += @s ec.break_terracotta
scoreboard players operation #mine_rt adv.temp += @s ec.break_brown_terracotta
scoreboard players operation #mine_rt adv.temp += @s ec.break_light_gray_terracotta
scoreboard players operation #mine_rt adv.temp += @s ec.break_orange_terracotta
scoreboard players operation #mine_rt adv.temp += @s ec.break_red_terracotta
scoreboard players operation #mine_rt adv.temp += @s ec.break_white_terracotta
scoreboard players operation #mine_rt adv.temp += @s ec.break_yellow_terracotta
scoreboard players operation #mine_rt adv.temp += @s ec.break_blackstone
scoreboard players operation #mine_rt adv.temp += @s ec.break_netherrack
scoreboard players operation #mine_rt adv.temp += @s ec.break_magma_block
scoreboard players operation #mine_rt adv.temp += @s ec.break_basalt
scoreboard players operation #mine_rt adv.temp += @s ec.break_smooth_basalt
scoreboard players operation #mine_rt adv.temp += @s ec.break_nether_gold_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_nether_quartz_ore
scoreboard players operation #mine_rt adv.temp += @s ec.break_end_stone
