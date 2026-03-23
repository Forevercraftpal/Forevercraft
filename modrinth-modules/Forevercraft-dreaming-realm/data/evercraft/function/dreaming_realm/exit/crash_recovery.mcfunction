# Dreaming Realm — Crash/Disconnect Recovery
# Called when a player with ec.dream_active=1 rejoins
# Context: as @s = reconnecting player (tag !ec.joined)

# Attempt arena destruction (marker may or may not still exist)
function evercraft:dreaming_realm/build/destroy

# Try to return to saved position (marker may or may not exist)
execute if entity @e[type=marker,tag=dr.return,limit=1] run tp @s @e[type=marker,tag=dr.return,limit=1]

# Clear any leftover effects
effect clear @s darkness
effect clear @s night_vision
effect clear @s resistance

# Bossbar cleanup
bossbar set evercraft:dream_timer visible false

# Full state cleanup
function evercraft:dreaming_realm/exit/cleanup

# Notify player
tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"The dream was lost... you awaken disoriented.","color":"#D4A574","italic":true}]
