# The Mossheart Warden — Gate Break
# Called as the gate interaction entity

# Clear interaction
data remove entity @s interaction

# Check if boss is nearby (within 4 blocks) — if so, stun it
execute at @s if entity @e[type=iron_golem,tag=ec.rd_boss,distance=..4] run function evercraft:raids/boss/mossheart_warden/puzzle/gate_stun

# VFX: gate breaking
particle minecraft:dust{color:[0.5,0.5,0.5],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 15
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.2 10
playsound minecraft:block.chain.break master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
playsound minecraft:block.iron_door.close master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.4

# Kill the gate
kill @s
