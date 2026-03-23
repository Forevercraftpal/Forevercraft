# Emerald Trim — +2% Dodge Chance per piece
# Dodge is tracked via te.dodge scoreboard, checked on damage taken

scoreboard players set @s emerald_trim 0
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_head run scoreboard players add @s emerald_trim 1
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_chest run scoreboard players add @s emerald_trim 1
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_legs run scoreboard players add @s emerald_trim 1
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_feet run scoreboard players add @s emerald_trim 1

# Set dodge chance (2% per piece)
scoreboard players operation @s te.dodge = @s emerald_trim
scoreboard players operation @s te.dodge *= #two te.const

execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_head run tag @s add emerald_head
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_chest run tag @s add emerald_chest
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_legs run tag @s add emerald_legs
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_feet run tag @s add emerald_feet

# Notification — only once
execute unless entity @s[tag=emerald_notified] run tellraw @s [{"text":"[Emerald Trim] ","color":"green"},{"text":"+2% Dodge Chance","color":"white"},{"text":" per piece","color":"gray"},{"text":" (Full set = Speed I!)","color":"gold"}]
tag @s add emerald_notified
