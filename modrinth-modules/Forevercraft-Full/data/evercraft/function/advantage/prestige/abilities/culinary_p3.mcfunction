# Culinary P3: Master Chef — Double all meal buff durations
# Activated on prestige 3, flag checked during buff application
scoreboard players set @s adv.pa_culi3 1
tellraw @s [{text:"  ★★★ ",color:"gold"},{text:"Master Chef",color:"green",bold:true},{text:" unlocked! All cooking buffs last twice as long.",color:"gray"}]
