# Tab 4: Try Recall TP — Match UUID then teleport
# @s = candidate horse entity

execute store result score #bd_rc_u0 ec.temp run data get entity @s UUID[0]
execute unless score #bd_rc_u0 ec.temp = #bd_mt_u0 ec.temp run return fail

execute store result score #bd_rc_u1 ec.temp run data get entity @s UUID[1]
execute unless score #bd_rc_u1 ec.temp = #bd_mt_u1 ec.temp run return fail

# UUID matches — teleport to player
execute as @a[tag=companion.inmenuv2,limit=1,sort=nearest] at @s run tp @e[type=minecraft:horse,limit=1,sort=nearest] ~ ~ ~
