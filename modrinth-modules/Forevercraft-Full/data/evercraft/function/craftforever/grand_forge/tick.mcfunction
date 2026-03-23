# Grand Forge — Main tick (run as player with gf_active=1, at @s)

# Timer countdown
scoreboard players remove @s ec.gf_timer 1

# Phase 0: Intro countdown → Phase 1
execute if score @s ec.gf_phase matches 0 if score @s ec.gf_timer matches ..0 run function evercraft:craftforever/grand_forge/phase/start_1

# Phase 1: The Gathering (mining)
execute if score @s ec.gf_phase matches 1 run function evercraft:craftforever/grand_forge/phase/tick_1

# Phase 2: The Smelting (cooking/crafting)
execute if score @s ec.gf_phase matches 2 run function evercraft:craftforever/grand_forge/phase/tick_2

# Phase 3: The Assembly (building)
execute if score @s ec.gf_phase matches 3 run function evercraft:craftforever/grand_forge/phase/tick_3

# Phase 4: The Tempering (combat defense)
execute if score @s ec.gf_phase matches 4 run function evercraft:craftforever/grand_forge/phase/tick_4

# Phase 5: The Awakening (resonance buildup)
execute if score @s ec.gf_phase matches 5 run function evercraft:craftforever/grand_forge/phase/tick_5

# Ambient particles while forge is active (every 10 ticks)
execute store result score #gf_tick ec.var run time query gametime
execute store result score #gf_mod ec.var run time query gametime
scoreboard players operation #gf_mod ec.var %= #10 adv.temp
execute if score #gf_mod ec.var matches 0 run particle dust{color:[0.2,0.9,0.3],scale:1.0} ~ ~2.5 ~ 0.5 0.5 0.5 0.02 5
