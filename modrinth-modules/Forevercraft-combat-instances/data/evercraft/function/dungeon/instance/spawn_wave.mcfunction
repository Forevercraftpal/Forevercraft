# Dungeon Instance — Wave Spawn Dispatcher
# Reads #dg_instance (1-16) and #dg_wave (1-5), spawns appropriate mobs
# Run at: dg.center marker position

# Route to instance-specific wave spawner
execute if score #dg_instance ec.var matches 1 run function evercraft:dungeon/instance/i1
execute if score #dg_instance ec.var matches 2 run function evercraft:dungeon/instance/i2
execute if score #dg_instance ec.var matches 3 run function evercraft:dungeon/instance/i3
execute if score #dg_instance ec.var matches 4 run function evercraft:dungeon/instance/i4
execute if score #dg_instance ec.var matches 5 run function evercraft:dungeon/instance/i5
execute if score #dg_instance ec.var matches 6 run function evercraft:dungeon/instance/i6
execute if score #dg_instance ec.var matches 7 run function evercraft:dungeon/instance/i7
execute if score #dg_instance ec.var matches 8 run function evercraft:dungeon/instance/i8
execute if score #dg_instance ec.var matches 9 run function evercraft:dungeon/instance/i9
execute if score #dg_instance ec.var matches 10 run function evercraft:dungeon/instance/i10
execute if score #dg_instance ec.var matches 11 run function evercraft:dungeon/instance/i11
execute if score #dg_instance ec.var matches 12 run function evercraft:dungeon/instance/i12
execute if score #dg_instance ec.var matches 13 run function evercraft:dungeon/instance/i13
execute if score #dg_instance ec.var matches 14 run function evercraft:dungeon/instance/i14
execute if score #dg_instance ec.var matches 15 run function evercraft:dungeon/instance/i15
execute if score #dg_instance ec.var matches 16 run function evercraft:dungeon/instance/i16

# Spawn bonus mobs for party members (2+ players)
function evercraft:dungeon/spawn_party_bonus

# Party Affix: Reinforcements (8) — spawn 3 extra zombies per wave
execute if score #dg_afx1 ec.var matches 8 run function evercraft:dungeon/affix/reinforcements
execute if score #dg_afx2 ec.var matches 8 run function evercraft:dungeon/affix/reinforcements
execute if score #dg_afx3 ec.var matches 8 run function evercraft:dungeon/affix/reinforcements

# Apply difficulty + DR scaling to all freshly spawned mobs (tagged dg.mob but not dg.scaled)
function evercraft:dungeon/instance/apply_scaling

# Wave announcement
function evercraft:dungeon/instance/wave_announce
