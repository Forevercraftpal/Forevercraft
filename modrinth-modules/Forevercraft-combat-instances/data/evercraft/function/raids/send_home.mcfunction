# Spirit Raids — Send Player Home (Loss)
# Called as each player, already in overworld context
# Teleports to bed spawn if available, otherwise world spawn

# Try to teleport to bed spawn using spreadplayers as fallback
# SpawnX/SpawnY/SpawnZ are bed spawn coordinates
execute if data entity @s SpawnX run function evercraft:raids/send_to_bed
execute unless data entity @s SpawnX run tp @s 0 100 0
execute unless data entity @s SpawnX run spreadplayers ~ ~ 0 5 false @s
