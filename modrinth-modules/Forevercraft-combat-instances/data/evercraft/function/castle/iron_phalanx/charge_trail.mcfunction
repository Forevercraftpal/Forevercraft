# The Iron Phalanx — Charge Trail
# Spawn a spectral spear marker at current position (persists 100 ticks = 5 seconds)

summon marker ~ ~0.5 ~ {Tags:["ic.phalanx_spear","ec.entity"]}
execute as @e[tag=ic.phalanx_spear,scores={ec.temp=0}] run scoreboard players set @s ec.temp 100

# Trail VFX
particle dust{color:[0.9,0.9,1.0],scale:1.0} ~ ~0.5 ~ 0.3 0.1 0.3 0.02 8
