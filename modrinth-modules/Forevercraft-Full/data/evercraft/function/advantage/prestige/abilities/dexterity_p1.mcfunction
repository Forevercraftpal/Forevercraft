# Prestige Ability: Quick Draw — +15% attack speed permanently
scoreboard players set @s adv.pa_dex1 1
attribute @s attack_speed modifier remove evercraft:adv_pres_dex1
attribute @s attack_speed modifier add evercraft:adv_pres_dex1 0.15 add_multiplied_base
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Dexterity ★] ",color:"yellow",bold:true},{text:"Quick Draw",color:"green"},{text:" — +15% attack speed permanently!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
