# Sculk Heart — Death Harvest (bonus XP on kill)
# Fires on any player_killed_entity; checks for sculk_heart in inventory

# Revoke for re-trigger
advancement revoke @s only evercraft:artifacts/abilities/sculk_heart_kill_trigger

# Early exit if player doesn't have sculk heart
execute unless items entity @s container.* *[custom_data~{artifact:"sculk_heart"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"sculk_heart"}] run return 0

# Bonus XP orbs (simulates 2x XP — spawns extra XP at player)
summon experience_orb ~ ~0.5 ~ {Value:7}

# Visual feedback
particle sculk_soul ~ ~0.5 ~ 0.5 0.3 0.5 0.02 8
playsound minecraft:block.sculk.spread player @s ~ ~ ~ 0.8 1.2
