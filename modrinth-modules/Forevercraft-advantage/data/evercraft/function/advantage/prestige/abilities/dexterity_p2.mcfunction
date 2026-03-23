# Prestige Ability: Dual Wield — +25% attack speed when dual-wielding
attribute @s attack_speed modifier remove evercraft:adv_pres_dex2
attribute @s attack_speed modifier add evercraft:adv_pres_dex2 0.25 add_multiplied_base
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Dexterity ★★] ",color:"yellow",bold:true},{text:"Dual Wield",color:"green"},{text:" — +25% attack speed when dual-wielding!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
