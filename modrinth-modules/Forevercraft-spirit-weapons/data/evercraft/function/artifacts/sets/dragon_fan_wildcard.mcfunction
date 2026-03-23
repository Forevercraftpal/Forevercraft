# Dragon Fan Wildcard — adds +1 to the player's highest mythical set
# Called when Dragon Fan is equipped in mainhand or offhand
# Runs BEFORE mythical_bonuses.mcfunction applies bonuses
# Run as player at player

# Find the highest mythical set count
scoreboard players set @s ec.df_best 0
execute if score @s ec.dragonmaster > @s ec.df_best run scoreboard players operation @s ec.df_best = @s ec.dragonmaster
execute if score @s ec.titan > @s ec.df_best run scoreboard players operation @s ec.df_best = @s ec.titan
execute if score @s ec.verdant > @s ec.df_best run scoreboard players operation @s ec.df_best = @s ec.verdant
execute if score @s ec.splendid > @s ec.df_best run scoreboard players operation @s ec.df_best = @s ec.splendid
execute if score @s ec.infernal > @s ec.df_best run scoreboard players operation @s ec.df_best = @s ec.infernal
execute if score @s ec.ender_dragon > @s ec.df_best run scoreboard players operation @s ec.df_best = @s ec.ender_dragon
execute if score @s ec.journey > @s ec.df_best run scoreboard players operation @s ec.df_best = @s ec.journey

# No set has any pieces — wildcard does nothing
execute if score @s ec.df_best matches 0 run return 0

# Add +1 to the first set matching the highest count (priority tiebreaker)
# Uses return run to add AND stop in one command (prevents double-counting)
# Bonus application is handled by mythical_bonuses.mcfunction afterward
execute if score @s ec.dragonmaster = @s ec.df_best run return run scoreboard players add @s ec.dragonmaster 1
execute if score @s ec.titan = @s ec.df_best run return run scoreboard players add @s ec.titan 1
execute if score @s ec.splendid = @s ec.df_best run return run scoreboard players add @s ec.splendid 1
execute if score @s ec.ender_dragon = @s ec.df_best run return run scoreboard players add @s ec.ender_dragon 1
execute if score @s ec.infernal = @s ec.df_best run return run scoreboard players add @s ec.infernal 1
execute if score @s ec.journey = @s ec.df_best run return run scoreboard players add @s ec.journey 1
execute if score @s ec.verdant = @s ec.df_best run return run scoreboard players add @s ec.verdant 1
