# Dawn Chorus — Ambient bird sounds at dawn
# Called once per dawn after the day title displays
# Uses schedule delays for a natural staggered effect

# Immediate chirp
execute as @a at @s run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 0.4 1.8
execute as @a at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.3 2.0

# Staggered follow-up sounds
schedule function evercraft:day_counter/dawn_chorus_2 8t
schedule function evercraft:day_counter/dawn_chorus_3 20t
schedule function evercraft:day_counter/dawn_chorus_4 35t
