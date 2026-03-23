# Coral Growth — Prismarine Shovel
# On hit: Regeneration burst + coral particles
advancement revoke @s only evercraft:artifacts/abilities/coral_growth_trigger
effect give @s regeneration 5 1 false
execute at @s run particle bubble ~ ~0.5 ~ 1 0.5 1 0.05 15
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 5
playsound minecraft:block.coral_block.place player @s ~ ~ ~ 0.8 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
