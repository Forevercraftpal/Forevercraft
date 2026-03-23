# The Crimson Bulwark — Banner Pull
# Called as the banner interaction entity

# Clear interaction
data remove entity @s interaction

# Check if boss is doing shield spin (has Glowing effect = post-spin vulnerability)
# During spin: boss has Slowness V — check for that
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] if data entity @s {active_effects:[{id:"minecraft:slowness",amplifier:4b}]} at @s run function evercraft:raids/boss/crimson_bulwark/puzzle/banner_bad_timing
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] unless data entity @s {active_effects:[{id:"minecraft:slowness",amplifier:4b}]} run function evercraft:raids/boss/crimson_bulwark/puzzle/banner_reveal
