# Duel End — Destroy Arena
# Clears the arena structure and teleports remaining duelists back

# Teleport winner back to their saved position
# return_a = challenger's pre-duel spot, return_b = accepter's pre-duel spot
# Winner was tagged duel.challenger_confirmed if they were the challenger
execute at @e[type=marker,tag=duel.return_a,limit=1] as @a[tag=duel.winner,tag=duel.challenger_confirmed,limit=1] run tp @s ~ ~ ~
execute at @e[type=marker,tag=duel.return_b,limit=1] as @a[tag=duel.winner,tag=!duel.challenger_confirmed,limit=1] run tp @s ~ ~ ~

# Fallback: if winner tag logic fails, just send any remaining duelist to return_a
execute as @a[tag=ec.duel_active_tag] at @e[type=marker,tag=duel.return_a,limit=1] run tp @s ~ ~ ~

# Fill arena with air (centered on duel.center which is 1 block above floor)
# ~-2 catches foundation layer, ~17 catches above walls
execute at @e[type=marker,tag=duel.center,limit=1] run fill ~-15 ~-2 ~-15 ~15 ~17 ~15 minecraft:air

# Kill center marker
kill @e[type=marker,tag=duel.center]
