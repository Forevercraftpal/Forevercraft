# Slot was occupied — increment and try next slot (wraparound at 27)
scoreboard players add #slot ec.temp 1
execute if score #slot ec.temp matches 27.. run scoreboard players set #slot ec.temp 0
scoreboard players add #attempts ec.temp 1

# Safety: bail after 27 attempts (barrel is full)
execute if score #attempts ec.temp matches 27.. run return 0

# Store updated slot and retry
execute store result storage evercraft:temp slot int 1.0 run scoreboard players get #slot ec.temp
function evercraft:structures/container/shuffle_set_slot with storage evercraft:temp
