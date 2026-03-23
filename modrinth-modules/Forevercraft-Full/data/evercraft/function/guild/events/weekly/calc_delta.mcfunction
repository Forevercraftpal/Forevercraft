# Guild Event — Weekly: Calculate this player's contribution delta
# @s = guilded player

# Delta = current contrib - snapshot
scoreboard players operation #ge_delta ec.temp = @s ec.guild_contrib
scoreboard players operation #ge_delta ec.temp -= @s ec.ge_weekly_contrib

# Skip if no contribution this period
execute if score #ge_delta ec.temp matches ..0 run return 0

# Check if this player has the highest delta
execute if score #ge_delta ec.temp > #ge_top_score ec.temp run scoreboard players operation #ge_top_score ec.temp = #ge_delta ec.temp
execute if score #ge_delta ec.temp >= #ge_top_score ec.temp run tag @a remove ge.top_contributor
execute if score #ge_delta ec.temp >= #ge_top_score ec.temp run tag @s add ge.top_contributor
execute if score #ge_delta ec.temp >= #ge_top_score ec.temp run scoreboard players set #ge_top_found ec.temp 1
