# Redstone Trim — Crop tick speed boost per piece

execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_head run tag @s add redstone_head
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_chest run tag @s add redstone_chest
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_legs run tag @s add redstone_legs
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_feet run tag @s add redstone_feet

# Track pieces
scoreboard players set @s te.redstone 0
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_head run scoreboard players add @s te.redstone 1
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_chest run scoreboard players add @s te.redstone 1
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_legs run scoreboard players add @s te.redstone 1
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_feet run scoreboard players add @s te.redstone 1

tag @s add te.redstone_wearing

# Notification — only once
execute unless entity @s[tag=redstone_notified] run tellraw @s [{"text":"[Redstone Trim] ","color":"red"},{"text":"+0.5 Crop Tick Speed","color":"white"},{"text":" per piece (16x16 area)","color":"gray"},{"text":" (Full set = No crop breaking!)","color":"gold"}]
tag @s add redstone_notified
