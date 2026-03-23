# Infinite Castle — Wave Spawn
# Reuses existing dungeon instance mob compositions (i1-i16)
# Run at: ic.center marker position
# Reads: #ic_instance (1-16), #ic_wave (1-5)

# Temporarily set dungeon globals so instance functions work
# Instance functions read #dg_wave — copy our wave number there
scoreboard players operation #dg_wave ec.var = #ic_wave ec.var

# Route to instance-specific wave spawner (reuses dungeon instances)
execute if score #ic_instance ec.var matches 1 run function evercraft:dungeon/instance/i1
execute if score #ic_instance ec.var matches 2 run function evercraft:dungeon/instance/i2
execute if score #ic_instance ec.var matches 3 run function evercraft:dungeon/instance/i3
execute if score #ic_instance ec.var matches 4 run function evercraft:dungeon/instance/i4
execute if score #ic_instance ec.var matches 5 run function evercraft:dungeon/instance/i5
execute if score #ic_instance ec.var matches 6 run function evercraft:dungeon/instance/i6
execute if score #ic_instance ec.var matches 7 run function evercraft:dungeon/instance/i7
execute if score #ic_instance ec.var matches 8 run function evercraft:dungeon/instance/i8
execute if score #ic_instance ec.var matches 9 run function evercraft:dungeon/instance/i9
execute if score #ic_instance ec.var matches 10 run function evercraft:dungeon/instance/i10
execute if score #ic_instance ec.var matches 11 run function evercraft:dungeon/instance/i11
execute if score #ic_instance ec.var matches 12 run function evercraft:dungeon/instance/i12
execute if score #ic_instance ec.var matches 13 run function evercraft:dungeon/instance/i13
execute if score #ic_instance ec.var matches 14 run function evercraft:dungeon/instance/i14
execute if score #ic_instance ec.var matches 15 run function evercraft:dungeon/instance/i15
execute if score #ic_instance ec.var matches 16 run function evercraft:dungeon/instance/i16

# Retag mobs: dg.mob → ic.mob (instances tag as dg.mob)
tag @e[tag=dg.mob,tag=!dg.scaled] add ic.mob
tag @e[tag=ic.mob] remove dg.mob


# Spawn bosses on boss floors (every 10th floor)
scoreboard players operation #ic_boss_check ec.var = #ic_floor ec.var
scoreboard players operation #ic_boss_check ec.var %= #10 ec.const
execute if score #ic_boss_check ec.var matches 0 run function evercraft:castle/spawn_bosses

# Floor 20: Spawn The Iron Phalanx (Spirit boss #14, Hoplite, wave 1 only)
execute if score #ic_floor ec.var matches 20 if score #ic_wave ec.var matches 1 run function evercraft:castle/spawn_iron_phalanx

# Floor 25: Spawn The Crimson Bulwark (Spirit Raid boss, wave 1 only)
execute if score #ic_floor ec.var matches 25 if score #ic_wave ec.var matches 1 run function evercraft:castle/spawn_crimson_bulwark

# Apply castle scaling (floor + base difficulty + DR)
function evercraft:castle/apply_scaling

# === FURIA / PATRON SPAWNING (floor-gated, per-wave roll) ===
# Floor 5+: 25% chance per wave to convert one mob into a furia
execute if score #ic_floor ec.var matches 5.. run function evercraft:castle/try_spawn_furia
# Floor 15+: 15% chance per wave to convert one mob into a patron
execute if score #ic_floor ec.var matches 15.. run function evercraft:castle/try_spawn_patron

# Wave announcement
execute store result storage evercraft:castle wave.num int 1 run scoreboard players get #ic_wave ec.var
function evercraft:castle/wave_announce with storage evercraft:castle wave
