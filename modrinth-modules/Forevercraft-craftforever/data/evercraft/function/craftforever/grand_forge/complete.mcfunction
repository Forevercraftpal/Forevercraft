# Grand Forge — VICTORY!
# All 5 phases complete

# Deactivate
scoreboard players set @s ec.gf_active 0
scoreboard players set @s ec.gf_phase 0

# Clear all forge-granted effects
effect clear @s minecraft:glowing
effect clear @s minecraft:regeneration
effect clear @s minecraft:resistance

# Kill any remaining forge mobs
kill @e[tag=gf.mob,distance=..100]

# === FIRST COMPLETION: Forge Crystal ===
execute unless score @s ec.gf_done matches 1.. run function evercraft:craftforever/grand_forge/give_crystal
execute unless score @s ec.gf_done matches 1.. run tellraw @s [{"text":"  "},{"text":"★ FIRST COMPLETION BONUS ★","color":"gold","bold":true}]

# Mark as completed
scoreboard players set @s ec.gf_done 1

# Craftforever milestone tracking
scoreboard players add @s ec.cf_total_forges 1

# === REWARDS ===
# XP
experience add @s 50 levels
tellraw @s [{"text":"  "},{"text":"+50 XP levels","color":"green","bold":true}]

# Coins
scoreboard players add @s ec.coins 50
tellraw @s [{"text":"  ★ ",color:"#E0B0FF"},{"text":"+50 Forever Coins","color":"#E0B0FF","bold":true},{"text":" — Grand Forge Victory!","color":"green"}]

# Guild contribution
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:250}

# === GRAND CELEBRATION ===
title @s times 20 100 40
title @s title [{"text":"FORGE COMPLETE","color":"green","bold":true}]
title @s subtitle [{"text":"The Grand Forge recognizes your mastery","color":"gold"}]

# Massive particle burst
particle end_rod ~ ~1 ~ 2 2 2 0.15 100
particle totem_of_undying ~ ~1 ~ 1 1 1 0.5 80
particle dust{color:[0.0,1.0,0.3],scale:2.0} ~ ~2 ~ 2 2 2 0.05 60

# Sound fanfare
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3 1.5
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.5 1.2

# Server announcement
tellraw @a [{"text":""},{"text":"[Forevercraft] ","color":"gold"},{"selector":"@s","color":"green","bold":true},{"text":" has completed the ","color":"gray"},{"text":"Grand Forge","color":"green","bold":true},{"text":"!","color":"gray"}]

tellraw @s [{"text":""},{"text":"  ═══════════════════════════════","color":"dark_gray"}]
tellraw @s [{"text":"  "},{"text":"GRAND FORGE — COMPLETE","color":"green","bold":true}]
tellraw @s [{"text":"  "},{"text":"Final Resonance: ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_reson"},"color":"gold","bold":true}]
tellraw @s [{"text":"  "},{"text":"All 5 phases mastered.","color":"dark_green"}]
tellraw @s [{"text":"  ═══════════════════════════════","color":"dark_gray"}]
