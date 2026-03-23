# Competition — Cleanup (reset state after competition ends)

# Remove fishing luck modifier if fishing competition
execute if score #comp_active ec.var matches 6 run function evercraft:competition/modifiers/fishing_luck_remove

# Reset global state
scoreboard players set #comp_active ec.var 0
scoreboard players set #comp_day_type ec.var 0
scoreboard players set #comp_timer ec.var 0

# Hide bossbar
bossbar set minecraft:competition visible false

# Reset per-player scores
scoreboard players set @a ec.comp_score 0
scoreboard players set @a ec.comp_today 0
scoreboard players set @a ec.comp_place 0
scoreboard players set @a ec.comp_baseline 0
