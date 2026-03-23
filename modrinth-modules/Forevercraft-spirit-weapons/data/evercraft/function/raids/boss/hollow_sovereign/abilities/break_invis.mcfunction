# Hollow Sovereign — Invisibility Broken! (3 hits reached)
# Boss becomes visible for 200 ticks (10 seconds) with normal melee combat

# Clear invisibility
effect clear @s invisibility

# Apply Glowing so players can see clearly
effect give @s glowing 10 0 true

# Reset hit counter
scoreboard players set #rd_hs_hits ec.var 0

# Set visibility window timer (200 ticks = 10 seconds)
scoreboard players set #rd_hs_vis_timer ec.var 200

# Dramatic reveal
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The Sovereign is exposed! ATTACK NOW!","color":"green","bold":true}]

# VFX burst
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1
particle minecraft:sculk_soul ~ ~1 ~ 2 1 2 0.1 40
playsound minecraft:entity.warden.emerge hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.0
playsound minecraft:block.sculk_shrieker.shriek hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6

# Boss becomes aggressive during visibility — Speed II for melee
effect give @s speed 10 1 true
