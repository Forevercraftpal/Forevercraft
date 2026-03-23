# Central Title Clearing — Mutual Exclusivity
# Called before any title is applied to ensure only one title active at a time
# Clears all title scores and leaves all cosmetic teams

# Clear all title scores
scoreboard players set @s adv.cc_title 0
scoreboard players set @s wb.title 0
scoreboard players set @s bm.title 0
scoreboard players set @s ec.special_title 0
scoreboard players set @s ec.gd_title 0

# Clear advantage cosmetic tier 2 (title tag) only — preserve particle/trail/glow/crown
execute if score @s adv.cosm_active matches 2 run scoreboard players set @s adv.cosm_active 0

# Leave all cosmetic teams (player can only be on one team, so this is a single operation)
team leave @s
