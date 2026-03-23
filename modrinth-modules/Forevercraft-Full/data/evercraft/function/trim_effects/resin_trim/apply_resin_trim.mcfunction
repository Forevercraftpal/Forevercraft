# Resin Trim — +2 Absorption Hearts per piece

scoreboard players set @s resin_trim 0
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_head run scoreboard players add @s resin_trim 1
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_chest run scoreboard players add @s resin_trim 1
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_legs run scoreboard players add @s resin_trim 1
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_feet run scoreboard players add @s resin_trim 1

# Give absorption based on piece count (2 hearts = 4hp per piece)
execute if score @s resin_trim matches 1 run effect give @s absorption 2 0 true
execute if score @s resin_trim matches 2 run effect give @s absorption 2 1 true
execute if score @s resin_trim matches 3 run effect give @s absorption 2 2 true

execute if predicate evercraft:trim_effects/trim/resin_trim/resin_head run tag @s add resin_head
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_chest run tag @s add resin_chest
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_legs run tag @s add resin_legs
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_feet run tag @s add resin_feet

# Notification — only once
execute unless entity @s[tag=resin_notified] run tellraw @s [{"text":"[Resin Trim] ","color":"#D2691E"},{"text":"+2 Absorption Hearts","color":"yellow"},{"text":" per piece","color":"gray"},{"text":" (Full set = All 10 Absorption Hearts!)","color":"gold"}]
tag @s add resin_notified
