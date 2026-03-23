# World Boss — Heal to full (runs 2 ticks after spawn)

# Primary: instant effects heal through the game engine (most reliable)
execute as @e[type=!player,tag=wb.boss,limit=1] if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute as @e[type=!player,tag=wb.boss,limit=1] unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true

# Backup: two-step data modify via storage (lesson 53 — execute store into Health is broken)
execute as @e[type=!player,tag=wb.boss,limit=1] store result storage evercraft:bosses temp.max_hp float 1 run attribute @s max_health get
execute as @e[type=!player,tag=wb.boss,limit=1] run data modify entity @s Health set from storage evercraft:bosses temp.max_hp

# Remove initializing tag — phase and ability checks can now begin
tag @e[tag=wb.boss,tag=wb.initializing] remove wb.initializing
