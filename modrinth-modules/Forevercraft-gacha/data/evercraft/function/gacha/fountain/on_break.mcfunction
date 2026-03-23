# Fountain of Eternal Dreams — Break Detection & Cleanup
# Runs as: marker (ec.fountain) at marker position
# Triggered when the player_head block is no longer present

# Drop the fountain item for the player to pick up
loot spawn ~ ~0.5 ~ loot evercraft:gacha/fountain_item

# Decrement fountain counter for nearest player
scoreboard players remove @p[distance=..8] ec.fountains 1

# Particles and sound
particle reverse_portal ~ ~0.5 ~ 0.3 0.3 0.3 0.05 30
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 0.8

# Kill associated entities (interaction + label within 2 blocks of marker)
execute as @e[type=interaction,tag=ec.fountain_click,distance=..2] run kill @s
execute as @e[type=text_display,tag=ec.fountain_label,distance=..2] run kill @s

# Kill self (marker)
kill @s
