# Competition — Start
# Triggered when DayTime reaches 6000 (noon) and #comp_day_type != 0

# Set active type
scoreboard players operation #comp_active ec.var = #comp_day_type ec.var

# Duration: 6000 ticks of game time (= ~15 min real time at slow DayTime)
scoreboard players set #comp_timer ec.var 6000

# Reset all player scores
scoreboard players set @a ec.comp_score 0
scoreboard players set @a ec.comp_place 0
scoreboard players set @a ec.comp_today 0
scoreboard players set @a ec.comp_baseline 0

# Take baseline snapshots for delta-track types
execute if score #comp_active ec.var matches 2 as @a run scoreboard players operation @s ec.comp_baseline = @s adv.stat_mine
execute if score #comp_active ec.var matches 4 as @a run scoreboard players operation @s ec.comp_baseline = @s ach.prospects_done
execute if score #comp_active ec.var matches 5 as @a run scoreboard players operation @s ec.comp_baseline = @s ach.forages_done

# Apply event modifiers (type-specific)
execute if score #comp_active ec.var matches 6 run function evercraft:competition/modifiers/fishing_luck

# Bossbar
bossbar set minecraft:competition visible true
bossbar set minecraft:competition max 6000
bossbar set minecraft:competition value 6000
bossbar set minecraft:competition players @a

# Type-specific bossbar name + announcement
execute if score #comp_active ec.var matches 1 run function evercraft:competition/announce/cooking
execute if score #comp_active ec.var matches 2 run function evercraft:competition/announce/mining
execute if score #comp_active ec.var matches 3 run function evercraft:competition/announce/forging
execute if score #comp_active ec.var matches 4 run function evercraft:competition/announce/prospecting
execute if score #comp_active ec.var matches 5 run function evercraft:competition/announce/foraging
execute if score #comp_active ec.var matches 6 run function evercraft:competition/announce/fishing

# Sound
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.3 1.5
