# Adjust Well-Fed timer by Culinary tree bonus + Master Chef
# Called after setting base Well-Fed timer in apply functions
# P3 Master Chef: doubles all cooking timers
# Culinary level bonus: extends by ec.ck_bonus_pct %
# Also tracks Vitality stat (adv.stat_food) with meal variety bonus

# Vitality progress: eating a cooked meal grants +5
scoreboard players add @s adv.stat_food 5

# Meal variety bonus: +2 if this meal wasn't in the last 5 eaten
scoreboard players set #meal_variety adv.temp 1
execute if score @s ec.meal_h1 = @s ec.meal_ate run scoreboard players set #meal_variety adv.temp 0
execute if score @s ec.meal_h2 = @s ec.meal_ate run scoreboard players set #meal_variety adv.temp 0
execute if score @s ec.meal_h3 = @s ec.meal_ate run scoreboard players set #meal_variety adv.temp 0
execute if score @s ec.meal_h4 = @s ec.meal_ate run scoreboard players set #meal_variety adv.temp 0
execute if score @s ec.meal_h5 = @s ec.meal_ate run scoreboard players set #meal_variety adv.temp 0
execute if score #meal_variety adv.temp matches 1 run scoreboard players add @s adv.stat_food 2

# Shift meal history (newest → h1, oldest → h5)
scoreboard players operation @s ec.meal_h5 = @s ec.meal_h4
scoreboard players operation @s ec.meal_h4 = @s ec.meal_h3
scoreboard players operation @s ec.meal_h3 = @s ec.meal_h2
scoreboard players operation @s ec.meal_h2 = @s ec.meal_h1
scoreboard players operation @s ec.meal_h1 = @s ec.meal_ate

# Master Chef (P3): Double all cooking timers
execute if score @s adv.pa_culi3 matches 1 run scoreboard players operation @s ec.ck_wellfed *= #2 adv.temp
execute if score @s adv.pa_culi3 matches 1 if score @s ec.ck_fortune matches 1.. run scoreboard players operation @s ec.ck_fortune *= #2 adv.temp

# Chef's Touch quality scaling (before percentage bonus early return)
function evercraft:cooking/buff/apply_quality_scaling

# Skip percentage bonus if no bonus_pct
execute unless score @s ec.ck_bonus_pct matches 1.. run return 0

# Extend Well-Fed timer: wellfed += wellfed * bonus_pct / 100
scoreboard players operation #bonus_ticks adv.temp = @s ec.ck_wellfed
scoreboard players operation #bonus_ticks adv.temp *= @s ec.ck_bonus_pct
scoreboard players operation #bonus_ticks adv.temp /= #100 adv.temp
scoreboard players operation @s ec.ck_wellfed += #bonus_ticks adv.temp

# Extend Fortune timer if active
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation #bonus_ft adv.temp = @s ec.ck_fortune
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation #bonus_ft adv.temp *= @s ec.ck_bonus_pct
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation #bonus_ft adv.temp /= #100 adv.temp
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation @s ec.ck_fortune += #bonus_ft adv.temp
