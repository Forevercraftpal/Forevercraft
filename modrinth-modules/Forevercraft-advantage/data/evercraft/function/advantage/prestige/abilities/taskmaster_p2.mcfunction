# Prestige Ability: Renowned — permanent +1 Dream Rate
scoreboard players set @s adv.pa_task2 1
attribute @s luck modifier remove evercraft:adv_pres_task2
attribute @s luck modifier add evercraft:adv_pres_task2 1.0 add_value
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Taskmaster ★★] ",color:"dark_purple",bold:true},{text:"Renowned",color:"green"},{text:" — Permanent +1 Dream Rate! Your reputation precedes you.",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
