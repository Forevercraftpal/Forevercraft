# Trade Trial — Active Tick
# Called from main tick when #tt_active ec.var matches 1

# Process each player in a trial
execute as @a[tag=ec.tt_player] at @s run function evercraft:craftforever/trials/tick_player
