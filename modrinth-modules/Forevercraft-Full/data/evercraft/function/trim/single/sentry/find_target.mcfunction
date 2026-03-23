scoreboard players add @s trim_math1 1
execute as @e[type=#minecraft:hostile,tag=!sentry_trim,distance=..2,limit=1] run tag @s add sentry_target
execute if entity @e[type=#minecraft:hostile,tag=sentry_target,limit=1] run scoreboard players set @s trim_math1 100
execute if score @s trim_math1 matches 1..20 unless entity @e[type=#minecraft:hostile,tag=sentry_target,limit=1] positioned ^ ^ ^1 run function evercraft:trim/single/sentry/find_target
execute if score @s trim_math1 matches 21.. run scoreboard players set @s trim_math1 0
execute if score @s trim_math1 matches 100 run scoreboard players set @s trim_math1 0
