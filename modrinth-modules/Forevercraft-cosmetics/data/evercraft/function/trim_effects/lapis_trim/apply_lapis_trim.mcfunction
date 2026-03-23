# Lapis Trim — +0.5 Lure (fishing speed) per piece
# Note: there's no "lure" attribute, but there IS a fishing speed concept. We'll use a scoreboard to hook into fishing crate checks.
# For simplicity, we use a tag-based lure tracking and buff via the built-in level of lure enchant modifier

execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_head run tag @s add lapis_head
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_chest run tag @s add lapis_chest
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_legs run tag @s add lapis_legs
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_feet run tag @s add lapis_feet

# Track pieces for fishing bonus
scoreboard players set @s lapis_trim 0
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_head run scoreboard players add @s lapis_trim 1
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_chest run scoreboard players add @s lapis_trim 1
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_legs run scoreboard players add @s lapis_trim 1
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_feet run scoreboard players add @s lapis_trim 1

# Notification — only once
execute unless entity @s[tag=lapis_notified] run tellraw @s [{"text":"[Lapis Trim] ","color":"blue"},{"text":"+0.5 Lure","color":"white"},{"text":" per piece","color":"gray"},{"text":" (Full set = Water Breathing!)","color":"gold"}]
tag @s add lapis_notified
