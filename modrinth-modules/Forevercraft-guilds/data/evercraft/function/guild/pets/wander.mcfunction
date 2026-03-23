# Guild Companion — Wander containment check
# Run as: GuildCompanion chicken, at its position
# If too far from guild stone, teleport back

execute unless entity @e[type=marker, tag=ec.guildstone, distance=..64] at @e[type=marker, tag=ec.guildstone, sort=nearest, limit=1] run tp @s ~1 ~1 ~
