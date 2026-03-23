# Villager Death Detection — Scheduled Tick (S69)
# Runs every 5s, checks all village markers for population drops

execute unless data storage eden:settings bestiary.villager_settings{death_msg:"disabled"} as @e[type=armor_stand,tag=bestiary.village.name] at @s run function evercraft:mobs/village/death/check

schedule function evercraft:mobs/village/death/tick 5s
