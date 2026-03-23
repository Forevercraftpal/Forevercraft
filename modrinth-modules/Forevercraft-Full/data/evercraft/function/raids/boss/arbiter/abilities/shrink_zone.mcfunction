# Arbiter — Shrink Safe Zone (Phase 2)
# Reduces safe zone radius by 2 blocks (minimum 5)

execute if score #rd_arb_zone_radius ec.var matches ..5 run return 0

scoreboard players remove #rd_arb_zone_radius ec.var 2

# Warning
tellraw @a[tag=ec.rd_participant] [{"text":"  ⚠ ","color":"aqua"},{"text":"The safe zone shrinks! Stay close to the center!","color":"white"}]

# VFX
execute at @e[type=marker,tag=rd.center,limit=1] run playsound minecraft:entity.wind_charge.wind_burst hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.0
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:cloud ~ ~1 ~ 8 0.5 8 0.1 20
