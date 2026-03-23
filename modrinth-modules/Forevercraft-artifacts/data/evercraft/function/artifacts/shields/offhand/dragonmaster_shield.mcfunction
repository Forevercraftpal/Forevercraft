# Dragonmaster Shield — "Paladin's Grace"
# Heal self 4 hearts + allies 2 hearts within 6 blocks, Weakness 2 for 7s, 20s CD

# Heal self (instant_health amplifier 1 = ~4 hearts)
effect give @s instant_health 1 1 false

# Heal nearby party allies (instant_health amplifier 0 = ~2 hearts)
execute at @s as @a[distance=0.1..6,tag=ec.in_party] run effect give @s instant_health 1 0 false

# Weakness debuff (tradeoff)
effect give @s weakness 7 1 false

# Particles + sound
execute at @s run particle end_rod ~ ~1 ~ 0.6 0.8 0.6 0.05 20
execute at @s run particle heart ~ ~1.5 ~ 0.4 0.3 0.4 0.1 5
execute at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 1.5
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1.2

# Set cooldown
scoreboard players set @s ec.tk_off_cd 20

# Actionbar feedback
title @s actionbar {"text":"Paladin's Grace!","color":"light_purple","bold":true}
