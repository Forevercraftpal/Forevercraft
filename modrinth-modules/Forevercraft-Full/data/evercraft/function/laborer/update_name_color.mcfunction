# Update laborer name color based on fed status
# Green = fed, Yellow = low (< 30 min remaining), Red = unfed
# Uses gametime comparison: fed_until - now

# Unfed check (fed score = 0 means never fed)
execute if score @s ec.lb_fed matches 0 run return 0

# Calculate remaining fed time
scoreboard players operation #lb_fed_rem ec.lb_temp = @s ec.lb_fed
scoreboard players operation #lb_fed_rem ec.lb_temp -= #lb_now ec.lb_temp

# If remaining <= 0, laborer is unfed
execute if score #lb_fed_rem ec.lb_temp matches ..0 run scoreboard players set @s ec.lb_fed 0
execute if score #lb_fed_rem ec.lb_temp matches ..0 run scoreboard players set @s ec.lb_food_tier 0
execute if score #lb_fed_rem ec.lb_temp matches ..0 run scoreboard players set @s ec.lb_food_cat 0
