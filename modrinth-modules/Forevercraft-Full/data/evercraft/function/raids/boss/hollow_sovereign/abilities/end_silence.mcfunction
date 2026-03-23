# Hollow Sovereign — End Silence
scoreboard players set #rd_hs_silence ec.var 0
scoreboard players set #rd_hs_silence_timer ec.var 0

# Remove glowing
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s glowing

# Feedback
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The silence lifts — resume attacking!","color":"green"}]
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.respawn_anchor.deplete hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 1.2
