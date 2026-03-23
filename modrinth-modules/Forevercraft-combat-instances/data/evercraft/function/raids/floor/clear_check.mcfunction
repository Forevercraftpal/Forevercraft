# Spirit Raids — Floor Clear Check
# Called when wave 5 is cleared (all mobs dead)

# Floor cleared announcement
execute store result storage evercraft:raids floor.current int 1 run scoreboard players get #rd_floor ec.var
function evercraft:raids/floor/announce_clear with storage evercraft:raids floor

# Heal all raid players
effect give @a[tag=rd.player] instant_health 1 2 true

# Start floor vote (continue or evacuate)
function evercraft:raids/vote/start_floor_vote
