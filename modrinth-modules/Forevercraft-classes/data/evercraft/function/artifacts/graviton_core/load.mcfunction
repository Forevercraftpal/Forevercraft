# Graviton Core - Mythical Artifact
# A powerful gravity-manipulating artifact
#
# Abilities:
# - Item Magnet: Attracts items within 8 blocks
# - XP Magnet: Attracts XP orbs within 16 blocks
# - Void Pull: Deflects incoming projectiles
# - Gravity Well: Slows nearby hostile mobs

# Scoreboards
scoreboard objectives add gc.active dummy
scoreboard objectives add gc.cooldown dummy

# Schedule the tick function
schedule function evercraft:artifacts/graviton_core/tick 5t
