# H2H Competition — Cleanup

# Remove fishing luck modifier if fishing type
execute if score #h2h_active ec.var matches 6 as @a[tag=h2h.participant] run attribute @s luck modifier remove ec_h2h_fishing

# Remove bossbar
bossbar set evercraft:h2h_competition visible false
bossbar remove evercraft:h2h_competition

# Remove tags
tag @a remove h2h.participant
tag @a remove h2h.winner
tag @a remove h2h.loser
tag @a remove h2h.challenger
tag @a remove h2h.pending_target

# Reset scores
scoreboard players set @a ec.h2h_score 0
scoreboard players set @a ec.h2h_baseline 0
scoreboard players set @a ec.h2h_inv 0
scoreboard players set @a ec.h2h_inv_cd 0

# Reset global state
scoreboard players set #h2h_active ec.var 0
scoreboard players set #h2h_timer ec.var 0
