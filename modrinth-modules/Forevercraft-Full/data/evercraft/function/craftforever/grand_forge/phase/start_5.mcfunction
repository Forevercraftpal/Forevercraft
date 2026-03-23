# Phase 5: THE AWAKENING — Channel resonance from all passive systems
# Duration: 30 seconds (600 ticks)
# This phase auto-completes if resonance is high enough
# Player just needs to survive while the forge charges
# Score accumulates 1 per second + resonance bonus per tick

scoreboard players set @s ec.gf_phase 5
scoreboard players set @s ec.gf_timer 600
scoreboard players set @s ec.gf_score 0

# Target: 30 resonance points (resonance directly contributes)
scoreboard players set @s ec.gf_target 30

tellraw @s [{"text":"  "},{"text":"✓ Phase 4 COMPLETE!","color":"green","bold":true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.1 15

title @s times 5 60 10
title @s title [{"text":"Phase 5","color":"light_purple","bold":true}]
title @s subtitle [{"text":"THE AWAKENING","color":"dark_purple"},{"text":" — Channel the Forge!","color":"gray"}]

tellraw @s [{"text":"  "},{"text":"[Phase 5] ","color":"light_purple","bold":true},{"text":"Stand firm. The forge draws on your mastery.","color":"white"}]
tellraw @s [{"text":"  "},{"text":"Your resonance powers the final phase.","color":"gray"}]

# Dramatic effects
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1.0 0.5
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.5
particle dust{color:[0.6,0.0,0.8],scale:2.0} ~ ~2 ~ 2 2 2 0.03 40

# Apply buffs during awakening
effect give @s minecraft:regeneration 30 1 true
effect give @s minecraft:resistance 30 1 true
effect give @s minecraft:glowing 30 0 true
