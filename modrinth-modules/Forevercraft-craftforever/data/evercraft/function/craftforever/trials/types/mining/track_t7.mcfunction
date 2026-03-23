# T7: Deep Dive — Find and mine 8 hidden ore pockets
# Count total ores mined (any type) — each pocket has 4 ore blocks
# Score = total ore mined delta (target is 8 = simplified as "8 ore blocks mined from pockets")
scoreboard players operation @s ec.tt_score = @s ec.tt_s_iron
scoreboard players operation @s ec.tt_score += @s ec.tt_s_diron
scoreboard players operation @s ec.tt_score += @s ec.tt_s_gold
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dgold
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dia
scoreboard players operation @s ec.tt_score += @s ec.tt_s_ddia
scoreboard players operation @s ec.tt_score += @s ec.tt_s_emer
scoreboard players operation @s ec.tt_score += @s ec.tt_s_lapis
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dlapis
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap
