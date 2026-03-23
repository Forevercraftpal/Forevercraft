# Villager Death — Player Kill Fast Path (S69)
# Fires via advancement when a player kills a villager
# Run as: the player who killed the villager

# Revoke for re-trigger
advancement revoke @s only evercraft:mobs/village/villager_killed

# Notify if player is near a village
execute at @s if entity @e[type=armor_stand,tag=bestiary.village.name,distance=..96] run function evercraft:mobs/village/death/notify with entity @n[type=armor_stand,tag=bestiary.village.name]
