# Quartz Trim — +10% XP Gain per piece
# XP orbs nearby get multiplied per tick

execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_head run tag @s add quartz_head
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_chest run tag @s add quartz_chest
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_legs run tag @s add quartz_legs
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_feet run tag @s add quartz_feet

# Track pieces for XP multiplier
scoreboard players set @s te.quartz 0
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_head run scoreboard players add @s te.quartz 1
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_chest run scoreboard players add @s te.quartz 1
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_legs run scoreboard players add @s te.quartz 1
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_feet run scoreboard players add @s te.quartz 1

tag @s add te.quartz_wearing

# Notification — only once
execute unless entity @s[tag=quartz_notified] run tellraw @s [{"text":"[Quartz Trim] ","color":"white"},{"text":"+10% XP Gain","color":"yellow"},{"text":" per piece","color":"gray"},{"text":" (Full set = +10% XP from crates & quests!)","color":"gold"}]
tag @s add quartz_notified
