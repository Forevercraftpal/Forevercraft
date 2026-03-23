# Grand Forge — FAILED
# Time ran out on a phase

# Show feedback BEFORE resetting phase (so score displays correctly)
title @s times 10 60 20
title @s title [{"text":"FORGE FAILED","color":"red","bold":true}]
title @s subtitle [{"text":"Time ran out","color":"gray"}]

tellraw @s [{"text":""},{"text":"  [Grand Forge] ","color":"red","bold":true},{"text":"The forge's flame dies out...","color":"gray"}]
tellraw @s [{"text":"  "},{"text":"Phase ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_phase"},"color":"red"},{"text":" was not completed in time.","color":"gray"}]
tellraw @s [{"text":"  "},{"text":"Resonance: ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_reson"},"color":"gold"},{"text":" — Strengthen your passive systems for better results.","color":"gray"}]

# NOW deactivate (after feedback uses the scores)
scoreboard players set @s ec.gf_active 0
scoreboard players set @s ec.gf_phase 0
scoreboard players set @s ec.gf_score 0

# Clear effects
effect clear @s minecraft:glowing
effect clear @s minecraft:regeneration
effect clear @s minecraft:resistance

# Kill any forge mobs
kill @e[tag=gf.mob,distance=..50]

# Consolation: small XP
experience add @s 5 levels

playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 0.8 0.5
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 0.5 0.5
