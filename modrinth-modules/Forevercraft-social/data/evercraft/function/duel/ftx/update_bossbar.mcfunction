# First-to-X — Update Bossbar
# Show the leading player's kill count on the bossbar

# Find highest kill count
scoreboard players set #ftx_top ec.temp 0
execute as @a[tag=ec.duel_active_tag] if score @s ec.duel_kills > #ftx_top ec.temp run scoreboard players operation #ftx_top ec.temp = @s ec.duel_kills
execute store result bossbar evercraft:ftx_duel value run scoreboard players get #ftx_top ec.temp
