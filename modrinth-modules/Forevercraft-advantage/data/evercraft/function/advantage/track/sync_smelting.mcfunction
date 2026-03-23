# Sum all furnace types for smelting stat, subtract baseline for reset support
scoreboard players operation @s adv.stat_smelt = @s adv.furnace_ct
scoreboard players operation @s adv.stat_smelt += @s adv.blast_ct
scoreboard players operation @s adv.stat_smelt += @s adv.smoker_ct
scoreboard players operation @s adv.stat_smelt -= @s adv.base_smelt
