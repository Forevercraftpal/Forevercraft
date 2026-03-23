# Consume Crumb of Dreams - Grants +1 Dream Rate for 30 minutes
# Triggered by advancement: evercraft:items/consume_crumb

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:items/consume_crumb

# Apply +1 luck effect for 30 minutes (1800 seconds)
effect give @s minecraft:luck 1800 0 true

# Visual and audio feedback
particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.03 20 force @s
particle minecraft:witch ~ ~1 ~ 0.2 0.3 0.2 0.01 10 force @s
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.4
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.0

# Notify the player
tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Crumb of Dreams consumed! ","color":"light_purple"},{"text":"+1 Dream Rate","color":"aqua","bold":true},{"text":" for 30 minutes.","color":"gray"}]
