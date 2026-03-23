# Vex Ally AI — Attack, pursue, age, and despawn (OPT-10, Session 9)
# Only called when vex allies exist (gated in tick2.mcfunction)

# Remove attack cooldown every 10 ticks
execute if score #vex_cooldown_timer trim_flag matches 0 as @e[type=vex,tag=vex_ally,tag=vex_attack_cooldown] run tag @s remove vex_attack_cooldown

# Attack nearby hostiles (sound + damage + add cooldown)
execute as @e[type=vex,tag=vex_ally,tag=!vex_attack_cooldown] at @s if entity @e[type=#minecraft:hostile,distance=..3,limit=1,tag=!vex_ally] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 0.3 1.5
execute as @e[type=vex,tag=vex_ally,tag=!vex_attack_cooldown] at @s run damage @e[type=#minecraft:hostile,distance=..3,limit=1,sort=nearest,tag=!vex_ally] 6 minecraft:mob_attack by @s
execute as @e[type=vex,tag=vex_ally,tag=!vex_attack_cooldown] at @s if entity @e[type=#minecraft:hostile,distance=..3,limit=1,tag=!vex_ally] run tag @s add vex_attack_cooldown

# Pursue nearest hostile if none in melee range
execute as @e[type=vex,tag=vex_ally] at @s unless entity @e[type=#minecraft:hostile,distance=..5,tag=!vex_ally] at @e[type=#minecraft:hostile,distance=..16,limit=1,sort=nearest,tag=!vex_ally] run tp @s ~ ~1 ~

# Age tracking and despawn at 100 ticks (5 seconds)
scoreboard players add @e[type=vex,tag=vex_ally] vex_ally_age 1
execute as @e[type=vex,tag=vex_ally,scores={vex_ally_age=100..}] at @s run particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0.05 10
execute as @e[type=vex,tag=vex_ally,scores={vex_ally_age=100..}] at @s run playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 0.5 1.2
kill @e[type=vex,tag=vex_ally,scores={vex_ally_age=100..}]
