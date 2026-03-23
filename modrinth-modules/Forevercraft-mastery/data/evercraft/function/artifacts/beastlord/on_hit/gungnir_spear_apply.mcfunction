# Gungnir Spear — Apply true strike to target
# Runs as the hurt entity

# Bonus crit damage
damage @s 4 minecraft:mob_attack

# Weaken target for follow-up advantage
effect give @s weakness 3 0 true

# Visual: crit burst
execute at @s run particle crit ~ ~1 ~ 0.3 0.5 0.3 0.5 15
execute at @s run particle enchanted_hit ~ ~0.5 ~ 0.3 0.3 0.3 0.3 8

# Sound: critical hit
execute at @s run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1.0 1.0
