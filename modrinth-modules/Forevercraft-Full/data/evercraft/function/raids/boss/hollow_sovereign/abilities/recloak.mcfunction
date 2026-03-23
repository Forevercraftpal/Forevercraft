# Hollow Sovereign — Re-cloak (return to invisible state)
# Only applies during Phase 1

# Only re-cloak in Phase 1
execute unless score #rd_boss_phase ec.var matches 1 run return 0

# Apply invisibility
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s invisibility infinite 0 true
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s glowing
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s speed

# Reset
scoreboard players set #rd_hs_vis_timer ec.var 0
scoreboard players set #rd_hs_hits ec.var 0

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 20
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.enderman.teleport hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 0.4

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The Sovereign vanishes once more...","color":"dark_gray","italic":true}]
