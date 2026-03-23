# Culinary Effect — Calculate Well-Fed bonus percentage
# Every 5 levels → +10% Well-Fed duration
# Level 5=10%, 10=20%, 15=30%, 20=40%, 25=50%

scoreboard players operation #ck_bonus adv.temp = @s adv.culinary
scoreboard players operation #ck_bonus adv.temp /= #5 adv.temp
scoreboard players operation #ck_bonus adv.temp *= #10 adv.temp
scoreboard players operation @s ec.ck_bonus_pct = #ck_bonus adv.temp
