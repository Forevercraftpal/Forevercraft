# Apply mythical proximity buffs to mob
effect give @s strength infinite 2 true
effect give @s resistance infinite 0 true

# Creepers: Speed I (blast scaling handled separately in creeper_blast)
execute if entity @s[type=creeper] run effect give @s speed infinite 0 true
