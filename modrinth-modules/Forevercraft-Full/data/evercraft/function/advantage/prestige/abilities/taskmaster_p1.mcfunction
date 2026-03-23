# Prestige Ability: Quest Mastery — quest rewards +25%
# Flag checked by quest reward system to apply bonus
scoreboard players set @s adv.pa_task1 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Taskmaster ★] ",color:"dark_purple",bold:true},{text:"Quest Mastery",color:"green"},{text:" — Quest rewards increased by 25%!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
