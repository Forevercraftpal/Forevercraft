# Tab 3: Try Teleport — Check UUID match then teleport
# @s = candidate tamed entity
# #bd_summon_uuid0/1 ec.temp = target UUID

execute store result score #bd_check_u0 ec.temp run data get entity @s UUID[0]
execute unless score #bd_check_u0 ec.temp = #bd_summon_uuid0 ec.temp run return fail

execute store result score #bd_check_u1 ec.temp run data get entity @s UUID[1]
execute unless score #bd_check_u1 ec.temp = #bd_summon_uuid1 ec.temp run return fail

# UUID matches — teleport to player
execute as @a[tag=companion.inmenuv2,limit=1,sort=nearest] at @s run tp @e[type=#evercraft:tameable_companions,tag=ec.tame_protected,limit=1,sort=nearest] ~ ~ ~
