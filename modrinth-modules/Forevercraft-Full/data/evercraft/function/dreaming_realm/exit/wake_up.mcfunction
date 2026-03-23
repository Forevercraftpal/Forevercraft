# Dreaming Realm — Wake Up
# Teleport player back, destroy arena, clear effects
# Context: as @s = dreaming player

# Blindness transition
effect give @s blindness 2 0 true

# Destroy the arena and kill all dream entities/mobs
function evercraft:dreaming_realm/build/destroy

# Teleport back to saved return position (marker entity)
execute if entity @e[type=marker,tag=dr.return,limit=1] run tp @s @e[type=marker,tag=dr.return,limit=1]

# Clear dream effects
effect clear @s darkness
effect clear @s night_vision
effect clear @s resistance

# Clear bossbar
bossbar set evercraft:dream_timer visible false

# Wake message
tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"You wake, but the dream lingers...","color":"#D4A574","italic":true}]
playsound block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2

# Check and grant persistent rewards (before cleanup resets scores)
function evercraft:dreaming_realm/rewards/check_rewards

# Dream Journal: record this visit (before cleanup resets challenge scores)
function evercraft:dreaming_realm/journal/entry

# Full state cleanup
function evercraft:dreaming_realm/exit/cleanup
