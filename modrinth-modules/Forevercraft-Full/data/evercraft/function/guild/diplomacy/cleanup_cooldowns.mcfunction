# Guild Diplomacy — Clean up expired cooldown entries from all guild markers

execute store result score #gd_now ec.temp run time query gametime
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2] if data entity @s data.cooldowns[0] run function evercraft:guild/diplomacy/cleanup_cooldowns_step
