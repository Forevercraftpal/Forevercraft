# The Mossheart Warden — Gate Strategy Puzzle Tick
# Gates block boss charges and protect spawner cores
# Click a gate to break it (stuns boss for 40 ticks if boss is within 4 blocks)

# Gate particles
execute as @e[tag=ec.rd_mw_gate] at @s run particle minecraft:dust{color:[0.6,0.6,0.6],scale:0.8} ~ ~1 ~ 0.3 0.8 0.3 0 2

# Check gate clicks
execute as @e[tag=ec.rd_mw_gate] if data entity @s interaction at @s run function evercraft:raids/boss/mossheart_warden/puzzle/gate_break

# Check core clicks (active cores can be damaged)
execute as @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active] if data entity @s interaction at @s run function evercraft:raids/boss/mossheart_warden/puzzle/core_hit
