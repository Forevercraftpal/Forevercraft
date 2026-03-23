# Death Save — auto-heal when below 2 hearts
# Called from tick/main when adv.pres_vita=2+ and adv.pa_vita2_cd=0 and is_critical_hp
effect give @s minecraft:regeneration 5 4 true
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:absorption 10 1 true
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 50 force
title @s actionbar [{text:"Death Save!",color:"red",bold:true}]
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Vitality] ",color:"red"},{text:"Death Save triggered! 5min cooldown.",color:"yellow"}]
# 5 minute cooldown (6000 ticks)
scoreboard players set @s adv.pa_vita2_cd 6000
