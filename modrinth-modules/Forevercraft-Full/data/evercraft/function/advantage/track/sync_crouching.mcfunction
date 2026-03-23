# Convert crouch_one_cm to blocks (divide by 100), subtract baseline for reset support
scoreboard players operation @s adv.stat_crouch = @s adv.crouch_cm
scoreboard players operation @s adv.stat_crouch -= @s adv.base_crouch
scoreboard players operation @s adv.stat_crouch /= #100 adv.temp
