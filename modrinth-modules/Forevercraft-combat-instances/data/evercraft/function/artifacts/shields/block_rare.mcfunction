# Shield Block — Rare: Counter Stance
# Empowers counter-attack after blocking
effect give @s strength 3 0 false
execute at @s run particle crit ~ ~1 ~ 0.3 0.5 0.3 0.1 10
playsound minecraft:item.shield.block master @s ~ ~ ~ 0.8 1.2
playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 0.4 0.8
