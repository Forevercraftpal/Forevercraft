# Remove temporary loot container
# Run as the marker entity at the barrel position

# Remove the barrel block (replace with air)
execute if block ~ ~ ~ minecraft:barrel run setblock ~ ~ ~ minecraft:air

# Play vanish sound
playsound minecraft:block.amethyst_block.break master @a[distance=..16] ~ ~ ~ 0.5 1.5

# Kill the marker
kill @s
