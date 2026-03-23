# Spirit Raids — Heal boss to full (runs 2 ticks after spawn)

# Primary: instant effects heal through the game engine (most reliable)
# Raid bosses use wither_skeleton (undead) — instant_damage heals undead
execute as @e[type=!player,tag=ec.rd_boss,tag=ec.rd_initializing] if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute as @e[type=!player,tag=ec.rd_boss,tag=ec.rd_initializing] unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true

# Backup: data modify from storage (execute store into Health is broken)
execute as @e[type=!player,tag=ec.rd_boss,tag=ec.rd_initializing] store result storage evercraft:raids temp.max_hp float 1 run attribute @s max_health get
execute as @e[type=!player,tag=ec.rd_boss,tag=ec.rd_initializing] run data modify entity @s Health set from storage evercraft:raids temp.max_hp

# Remove initializing tag — phase and ability checks can now begin
tag @e[tag=ec.rd_boss,tag=ec.rd_initializing] remove ec.rd_initializing
