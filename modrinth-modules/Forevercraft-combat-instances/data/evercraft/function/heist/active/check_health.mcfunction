# Black Market Heist — Health Check (runs as active heist player)
# Last-resort backup: if health somehow drops to 2 HP or below, trigger totem save.
# Primary death prevention is absorption effect (granted at GO), which absorbs
# overflow damage so HurtTime detection always fires before actual death.

execute store result score @s ec.temp run data get entity @s Health 1
execute if score @s ec.temp matches ..2 run function evercraft:heist/active/totem_save
