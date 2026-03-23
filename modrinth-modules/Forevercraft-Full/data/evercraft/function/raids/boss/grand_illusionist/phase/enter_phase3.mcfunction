# Grand Illusionist — Enter Phase 3: The Ravager
# Clear maze, make boss visible, summon ravager

# Kill totems
kill @e[tag=ec.rd_gi_totem]
kill @e[tag=ec.rd_gi_vex]

# Make boss visible
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s invisibility

# Reset cooldowns
scoreboard players set #rd_gi_fang_cd ec.var 0
scoreboard players set #rd_gi_vex_cd ec.var 0
scoreboard players set #rd_gi_ravager_dead ec.var 0

# Summon ravager
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon ravager ~5 ~ ~0 {Tags:["ec.rd_gi_ravager","ec.rd_minion"],PersistenceRequired:1b}

# Buff the ravager
execute as @e[tag=ec.rd_gi_ravager,limit=1] run attribute @s max_health base set 200
execute as @e[tag=ec.rd_gi_ravager,limit=1] run effect give @s instant_health 1 10 true
execute as @e[tag=ec.rd_gi_ravager,limit=1] run attribute @s attack_damage modifier add evercraft:raid_boss/ravager 6.0 add_value

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"ENOUGH GAMES. FACE THE BEAST!\"","color":"red","bold":true}]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~1 ~ 2 1 2 0.1 5
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ravager.roar hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.8
