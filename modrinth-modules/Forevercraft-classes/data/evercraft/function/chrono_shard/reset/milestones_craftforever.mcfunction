# Chrono Shard — Reset Craftforever Milestones
# Zeros artisan rank, XP, activity XP, discovery tracking, and trade trial bests

# === Artisan Rank & XP ===
scoreboard players set @s ec.cf_rank 0
scoreboard players set @s ec.cf_xp 0
scoreboard players set @s ec.cf_xp_next 0

# === Activity XP ===
scoreboard players set @s ec.cf_axp_mine 0
scoreboard players set @s ec.cf_axp_cook 0
scoreboard players set @s ec.cf_axp_build 0
scoreboard players set @s ec.cf_axp_fish 0
scoreboard players set @s ec.cf_axp_forage 0
scoreboard players set @s ec.cf_axp_forge 0

# === Discovery Tracking ===
scoreboard players set @s ec.cf_nodes_found 0
scoreboard players set @s ec.cf_recipes_found 0
scoreboard players set @s ec.cf_meals_found 0
scoreboard players set @s ec.cf_trophies 0
scoreboard players set @s ec.cf_materials 0
scoreboard players set @s ec.cf_node_mined 0

# === Trade Trial Best Scores ===
scoreboard players set @s ec.tt_m_best 0
scoreboard players set @s ec.tt_farm_best 0
scoreboard players set @s ec.tt_fish_best 0
scoreboard players set @s ec.tt_build_best 0
scoreboard players set @s ec.tt_lumb_best 0
scoreboard players set @s ec.tt_art_best 0

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"Craftforever Milestones","color":"#FF8800"},{"text":" have been reset to zero.","color":"white"}]
