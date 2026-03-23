# Calculate expedition duration in ticks
# Base: 432,000 (6 real hours)
# Comfort: -10% per housing tier (T5 = -50%)
# Rank bonus: -1% per rank above 50 (max -50%)
# Minimum: 108,000 (1.5 real hours)

# Start with base duration
scoreboard players set @s ec.lb_exp_dur 432000

# Comfort reduction: housing tier * 10% of base (43200 per tier)
scoreboard players set #lb_reduce ec.lb_temp 0
execute as @a[tag=ec.lb_owner,limit=1] store result score #lb_reduce ec.lb_temp run scoreboard players get @s hs.tier
scoreboard players operation #lb_reduce ec.lb_temp *= #lb_base_dur ec.lb_temp
scoreboard players operation #lb_reduce ec.lb_temp /= #lb_10 ec.lb_temp
scoreboard players operation @s ec.lb_exp_dur -= #lb_reduce ec.lb_temp

# Rank reduction: (rank - 50) * 1% of base = (rank - 50) * 4320
# Only if rank > 50
scoreboard players set #lb_rank_red ec.lb_temp 0
execute as @a[tag=ec.lb_owner,limit=1] if score @s ec.cf_rank matches 51.. store result score #lb_rank_red ec.lb_temp run scoreboard players get @s ec.cf_rank
execute if score #lb_rank_red ec.lb_temp matches 1.. run scoreboard players remove #lb_rank_red ec.lb_temp 50
execute if score #lb_rank_red ec.lb_temp matches 51.. run scoreboard players set #lb_rank_red ec.lb_temp 50
# Multiply by 4320 (1% of 432000)
scoreboard players set #lb_pct ec.lb_temp 4320
scoreboard players operation #lb_rank_red ec.lb_temp *= #lb_pct ec.lb_temp
scoreboard players operation @s ec.lb_exp_dur -= #lb_rank_red ec.lb_temp

# Enforce minimum
execute if score @s ec.lb_exp_dur matches ..107999 run scoreboard players set @s ec.lb_exp_dur 108000
