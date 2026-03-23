# Spawn evoker fangs in a line from the player's facing direction
playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 0.5 1.2

# Spawn fangs in a line in front of the player (using ^ ^ ^ for local coordinates)
summon evoker_fangs ^ ^ ^1 {Warmup:0}
summon evoker_fangs ^ ^ ^2 {Warmup:2}
summon evoker_fangs ^ ^ ^3 {Warmup:4}
summon evoker_fangs ^ ^ ^4 {Warmup:6}
summon evoker_fangs ^ ^ ^5 {Warmup:8}
