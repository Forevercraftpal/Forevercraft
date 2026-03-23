# Spirit Raids — Death Intercept
# Called from main tick when a raid player dies (ec.tomb_death=1)
# Respawns player in raid room instead of normal tomb system

# Totem pop visual (death intercepted)
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Increment death counter
scoreboard players add @s ec.rd_deaths 1

# Respawn in raid room
execute in minecraft:overworld run tp @s 0 401 0

# Show death message
tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red"},{"selector":"@s"},{"text":" has fallen!","color":"red"}]
execute at @s run playsound minecraft:entity.wither.hurt master @a[tag=rd.player] ~ ~ ~ 0.5 0.8

# Check if ALL raid players are now dead (everyone has died)
# For raids, we allow respawning — total wipe only if no one is alive
# The tick_active disconnect check handles "no players left" scenario
