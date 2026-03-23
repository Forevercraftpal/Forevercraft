# ============================================================
# Apply quality scaling to Well-Fed timer
# Called from adjust_wellfed_bonus after Master Chef multiplier
# Scales the timer based on ec.ck_quality_mod:
#   0 (Charred):    ×0.5 (halved)
#   1 (Bland/Quick): ×1.0 (unchanged)
#   2 (Flavorful):   ×1.25
#   3 (Masterwork):  ×1.5
# ============================================================

# Skip if quality_mod is 1 (standard — no change needed)
# Also treat unset/out-of-range as standard (fixes stale values from non-Kitchen meals)
execute unless score @s ec.ck_quality_mod matches 0..3 run scoreboard players set @s ec.ck_quality_mod 1
execute if score @s ec.ck_quality_mod matches 1 run return 0

# Charred: divide by 2 (halve)
execute if score @s ec.ck_quality_mod matches 0 run scoreboard players operation @s ec.ck_wellfed /= #2 adv.temp

# Flavorful: ×5/4 = ×1.25
scoreboard players set #ck_scale ec.temp 5
execute if score @s ec.ck_quality_mod matches 2 run scoreboard players operation @s ec.ck_wellfed *= #ck_scale ec.temp
execute if score @s ec.ck_quality_mod matches 2 run scoreboard players operation @s ec.ck_wellfed /= #4 adv.temp

# Masterwork: ×3/2 = ×1.5
scoreboard players set #ck_scale ec.temp 3
execute if score @s ec.ck_quality_mod matches 3 run scoreboard players operation @s ec.ck_wellfed *= #ck_scale ec.temp
execute if score @s ec.ck_quality_mod matches 3 run scoreboard players operation @s ec.ck_wellfed /= #2 adv.temp

# Reset quality_mod after applying (prevents stale values affecting future non-Kitchen meals)
scoreboard players set @s ec.ck_quality_mod 1
