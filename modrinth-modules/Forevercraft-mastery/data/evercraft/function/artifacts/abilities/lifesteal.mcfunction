# Lifesteal - Heal on hit
# Restores 1 heart (2 health) per hit

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/lifesteal_trigger

# Heal the player
effect give @s instant_health 1 0 false

# Visual/audio feedback
particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0 3
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.3 2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
