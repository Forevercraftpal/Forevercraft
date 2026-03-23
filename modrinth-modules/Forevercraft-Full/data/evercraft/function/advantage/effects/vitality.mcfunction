# Vitality Effect — +1 heart per level after level 5 (max +20 hearts at level 25)
# Levels 1-4: no heart bonus (other future benefits possible)
# Level 5: +1 heart, Level 25: +21 hearts (total 41 HP)

attribute @s max_health modifier remove evercraft:adv_vitality

# Only give hearts after level 5
execute if score @s adv.vitality matches ..4 run return 0

# Each level from 5 onward = +2 HP (1 heart)
# Level 5 = 1 heart (2 HP), Level 25 = 21 hearts (42 HP)
scoreboard players operation #hearts adv.temp = @s adv.vitality
scoreboard players remove #hearts adv.temp 4
scoreboard players operation #hearts adv.temp *= #2 adv.temp
execute store result storage evercraft:advantage hearts double 1.0 run scoreboard players get #hearts adv.temp

function evercraft:advantage/effects/apply_vitality with storage evercraft:advantage
