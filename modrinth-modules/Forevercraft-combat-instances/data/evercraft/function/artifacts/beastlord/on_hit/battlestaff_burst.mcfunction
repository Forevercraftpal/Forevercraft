# Battlestaff — Combo burst on 3rd hit
# Runs as the hurt entity

# Bonus burst damage
damage @s 3 minecraft:mob_attack

# Visual: sweep + crit burst
execute at @s run particle sweep_attack ~ ~0.5 ~ 0.5 0.3 0.5 0.5 3
execute at @s run particle crit ~ ~1 ~ 0.3 0.5 0.3 0.5 12

# Sound: combo finisher
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.0 1.2
