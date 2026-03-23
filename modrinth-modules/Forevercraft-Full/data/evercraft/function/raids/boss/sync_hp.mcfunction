# Spirit Raids — Heal boss to full (runs 2 ticks after spawn)
# Matches world boss pattern: instant effect + data modify backup

# Primary: instant effects heal through the game engine
# Undead mobs heal from instant_damage, living mobs from instant_health
execute as @e[type=!player,tag=ec.rd_boss,limit=1] if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute as @e[type=!player,tag=ec.rd_boss,limit=1] unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true

# Backup: data modify via storage (execute store into Health is broken)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] store result storage evercraft:raids temp.max_hp float 1 run attribute @s max_health get
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run data modify entity @s Health set from storage evercraft:raids temp.max_hp

# Remove initializing tag — phase and ability checks can now begin
tag @e[tag=ec.rd_boss,tag=ec.rd_initializing] remove ec.rd_initializing
