# Chrono Shard — Reset Quest Reputation
# Zeros village rep scoreboards and clears per-village storage

# Zero current rep and rank
scoreboard players set @s ec.village_rep 0
scoreboard players set @s ec.rep_rank 0

# Clear the current village context (force a fresh load next time)
scoreboard players set @s ec.current_village 0

# Clear quest-related reputation tracking
scoreboard players set @s ach.quest_rep 0
scoreboard players set @s ach.villages_quested 0

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"Quest Reputation","color":"yellow"},{"text":" has been reset to zero.","color":"white"}]
tellraw @s [{"text":"  ","color":"gray"},{"text":"Note: Per-village rep will clear as you visit each village.","color":"dark_gray","italic":true}]
