execute as @s[type=#evercraft:mobs/passive_mobs] run function evercraft:mobs/mob_settings/passive_mobs/init
execute as @s[type=#evercraft:mobs/neutral_mobs] run function evercraft:mobs/mob_settings/neutral_mobs/init
execute as @s[type=#evercraft:mobs/hostile_mobs] run function evercraft:mobs/mob_settings/hostile_mobs/init

# DR-based equipment scaling (overwrites mob manager gear for humanoid mobs)
# Skip for Newcomer players (ec.difficulty 1) — mobs near them stay unscaled
execute as @s[type=#evercraft:mobs/hostile_mobs] at @s unless score @p ec.difficulty matches 1 run function evercraft:mobs/dr_scaling/apply

# Mythical gear proximity buff (Strength II + Resistance I if nearest player has mythical items)
# Skip for Newcomer players
execute at @s unless score @p ec.difficulty matches 1 run function evercraft:mobs/mythical_scaling/apply

tag @s add bestiary.settings.applied