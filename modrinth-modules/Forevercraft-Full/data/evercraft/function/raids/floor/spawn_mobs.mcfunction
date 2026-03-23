# Spirit Raids — Spawn Mobs for Current Wave
# Called at the raid room center marker position
# Reuses dungeon instance mob compositions with raid-enhanced scaling

# Route to dungeon instance spawner for mob composition variety
# Temporarily set dungeon variables for the spawner to read
scoreboard players operation #dg_instance ec.var = #rd_instance ec.var
scoreboard players operation #dg_wave ec.var = #rd_wave ec.var

# Spawn mobs using dungeon instance system (they get tagged dg.mob)
function evercraft:dungeon/instance/spawn_wave

# Re-tag spawned mobs: dg.mob → rd.mob
# Scoped to raid room area (Y=395+) to avoid retagging mobs from active dungeons elsewhere
tag @e[tag=dg.mob,tag=!dg.scaled,y=395,dy=30] add rd.mob
tag @e[tag=rd.mob] remove dg.mob

# Apply raid-specific scaling on top of the dungeon's DR scaling
# Raid floors are harder: +10% HP and +5% DMG per raid floor
# Use a separate modifier ID so it stacks with dungeon scaling
execute store result score #rd_hp_bonus ec.var run scoreboard players get #rd_floor ec.var
scoreboard players operation #rd_hp_bonus ec.var *= #10 ec.const
execute store result score #rd_dmg_bonus ec.var run scoreboard players get #rd_floor ec.var
scoreboard players operation #rd_dmg_bonus ec.var *= #5 ec.const

# Apply via storage + macro for dynamic values
execute store result storage evercraft:raids scaling.hp_pct double 0.01 run scoreboard players get #rd_hp_bonus ec.var
execute store result storage evercraft:raids scaling.dmg_pct double 0.01 run scoreboard players get #rd_dmg_bonus ec.var
function evercraft:raids/floor/apply_raid_scaling with storage evercraft:raids scaling

# Party scaling: more mobs for more players
execute if score #rd_players ec.var matches 2 run function evercraft:dungeon/spawn_party_bonus
execute if score #rd_players ec.var matches 2 run tag @e[tag=dg.mob,y=395,dy=30] add rd.mob
execute if score #rd_players ec.var matches 2 run tag @e[tag=rd.mob] remove dg.mob

# Apply dungeon DR scaling to all unscaled raid mobs
# The dungeon's apply_scaling expects dg.mob tag, so temporarily re-tag
tag @e[tag=rd.mob,tag=!dg.scaled,y=395,dy=30] add dg.mob
function evercraft:dungeon/instance/apply_scaling
tag @e[tag=rd.mob] remove dg.mob

# Make raid mobs glow red (distinguishing from regular dungeon mobs)
execute as @e[tag=rd.mob,tag=!rd.announced] run data merge entity @s {Glowing:1b}
tag @e[tag=rd.mob] add rd.announced

# Wave announcement
execute store result storage evercraft:raids wave.current int 1 run scoreboard players get #rd_wave ec.var
function evercraft:raids/floor/wave_announce with storage evercraft:raids wave
