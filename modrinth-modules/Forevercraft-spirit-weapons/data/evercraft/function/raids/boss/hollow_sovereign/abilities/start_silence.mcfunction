# Hollow Sovereign — Begin Silence (damage reflection period)
# Boss glows for 5 seconds. ALL damage dealt to it is reflected back to the attacker.

scoreboard players set #rd_hs_silence ec.var 1
scoreboard players set #rd_hs_silence_timer ec.var 100

# Apply Glowing as visual cue
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s glowing 5 0 true

# Warning
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The Sovereign goes SILENT — stop attacking!","color":"red","bold":true}]

# Sound cue
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.3
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 1 1 1 0.5 30
