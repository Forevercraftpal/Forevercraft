# Calculate XP refund: level * (level + 1) * 2
# #respec_level adv.temp = the tree's current level
# Result stored in #refund adv.temp AND storage evercraft:advantage refund_xp

scoreboard players operation #refund adv.temp = #respec_level adv.temp
scoreboard players add #refund adv.temp 1
scoreboard players operation #refund adv.temp *= #respec_level adv.temp
scoreboard players operation #refund adv.temp *= #2 adv.temp

# Store for macro
execute store result storage evercraft:advantage refund_xp int 1 run scoreboard players get #refund adv.temp
