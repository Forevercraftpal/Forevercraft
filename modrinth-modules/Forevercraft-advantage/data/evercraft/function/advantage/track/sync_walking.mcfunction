# Convert walk_one_cm to blocks (divide by 100), subtract baseline for reset support
scoreboard players operation @s adv.stat_walk = @s adv.walk_cm
scoreboard players operation @s adv.stat_walk -= @s adv.base_walk
scoreboard players operation @s adv.stat_walk /= #100 adv.temp
