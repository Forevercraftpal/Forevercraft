# Prestige Ability: Veteran's Instinct — +2 Dream Rate + quest completion buff
scoreboard players set @s adv.pa_task3 1
attribute @s luck modifier remove evercraft:adv_pres_task3
attribute @s luck modifier add evercraft:adv_pres_task3 2.0 add_value
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Taskmaster ★★★] ",color:"dark_purple",bold:true},{text:"Veteran's Instinct",color:"green"},{text:" — Permanent +2 Dream Rate + completion buffs!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
