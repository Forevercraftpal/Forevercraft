# Grand Forge — Begin the 5-phase craft gauntlet
# Run as: player who activated the catalyst

# === CALCULATE RESONANCE (passive system bonuses) ===
function evercraft:craftforever/grand_forge/resonance/calculate

# === INIT STATE ===
scoreboard players set @s ec.gf_active 1
scoreboard players set @s ec.gf_phase 0
scoreboard players set @s ec.gf_score 0
scoreboard players set @s ec.gf_kills 0

# === OPENING SEQUENCE ===
title @s times 10 60 20
title @s title [{"text":"THE GRAND FORGE","color":"green","bold":true}]
title @s subtitle [{"text":"Five phases. All your craft tested.","color":"dark_green"}]

tellraw @s [{"text":""},{"text":"  ═══════════════════════════════","color":"dark_gray"}]
tellraw @s [{"text":"  "},{"text":"THE GRAND FORGE","color":"green","bold":true}]
tellraw @s [{"text":"  "},{"text":"Five phases of artisan mastery.","color":"dark_green"}]
tellraw @s [{"text":"  "},{"text":"Your passive systems empower you.","color":"gray"}]
tellraw @s [{"text":"  "},{"text":"Resonance: ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_reson"},"color":"gold","bold":true},{"text":" (bonus from all systems)","color":"gray"}]
tellraw @s [{"text":"  ═══════════════════════════════","color":"dark_gray"}]

playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1.0 0.8
playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.3 1.8
particle dust{color:[0.0,0.8,0.2],scale:2.0} ~ ~1.5 ~ 1 1 1 0.05 60

# Server announcement
tellraw @a[distance=1..] [{"text":""},{"text":"[Grand Forge] ","color":"green","bold":true},{"selector":"@s","color":"gold"},{"text":" has ignited the Grand Forge!","color":"gray"}]

# Start Phase 1 after 3-second intro
scoreboard players set @s ec.gf_timer 60
scoreboard players set @s ec.gf_phase 0
