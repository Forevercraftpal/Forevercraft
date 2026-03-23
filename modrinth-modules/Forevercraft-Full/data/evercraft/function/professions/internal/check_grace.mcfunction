# Profession Grace Check — run as each verified villager
# OPT: Single entity pass instead of 2 deep NBT scans on all villagers
# Villagers WITH job_site get grace reset; WITHOUT + Xp:0 get grace incremented

# Has job site → reset grace and exit
execute if data entity @s Brain.memories."minecraft:job_site" run scoreboard players set @s mp.grace 0
execute if data entity @s Brain.memories."minecraft:job_site" run return 0

# No job site + legacy (Xp:0) → increment grace
execute if entity @s[nbt={Xp:0}] run scoreboard players add @s mp.grace 1
