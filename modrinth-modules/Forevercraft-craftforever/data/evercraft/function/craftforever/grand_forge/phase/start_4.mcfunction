# Phase 4: THE TEMPERING — Defend against forge-spawned mobs
# Duration: 90 seconds (1800 ticks)
# Target: 20 kills (reduced by resonance)
# Passive bonuses: Spirit weapons, Combat synergy, Advantage trees, Healer artifacts

scoreboard players set @s ec.gf_phase 4
scoreboard players set @s ec.gf_timer 1800
scoreboard players set @s ec.gf_score 0
scoreboard players set @s ec.gf_kills 0

# Base target 20, reduced by resonance (min 8)
scoreboard players set @s ec.gf_target 20
scoreboard players operation #gf_res_half ec.var = @s ec.gf_reson
scoreboard players operation #gf_res_half ec.var /= #2 adv.temp
scoreboard players operation @s ec.gf_target -= #gf_res_half ec.var
execute if score @s ec.gf_target matches ..8 run scoreboard players set @s ec.gf_target 8

# Snapshot mob kills for delta
execute store result score @s ec.gf_snap run scoreboard players get @s ach.kills_total

tellraw @s [{"text":"  "},{"text":"✓ Phase 3 COMPLETE!","color":"green","bold":true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.1 15

title @s times 5 40 10
title @s title [{"text":"Phase 4","color":"red","bold":true}]
title @s subtitle [{"text":"THE TEMPERING","color":"dark_red"},{"text":" — Defend the Forge!","color":"gray"}]

tellraw @s [{"text":"  "},{"text":"[Phase 4] ","color":"red","bold":true},{"text":"Kill ","color":"white"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"gold","bold":true},{"text":" mobs in 90 seconds!","color":"white"}]

playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.3 1.5
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5 0.9

# Spawn first wave of forge guardians
function evercraft:craftforever/grand_forge/phase/spawn_wave
