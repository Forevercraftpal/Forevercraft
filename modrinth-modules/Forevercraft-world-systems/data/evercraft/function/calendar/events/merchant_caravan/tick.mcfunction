# Merchant Caravan — Tick (1s)
# Keep merchant alive and visible

# Particles around merchant
execute as @e[type=wandering_trader,tag=CAL.Merchant] at @s run particle minecraft:happy_villager ~ ~2.2 ~ 0.3 0.2 0.3 0.02 2

# If merchant somehow died or despawned, respawn near a random player
execute unless entity @e[type=wandering_trader,tag=CAL.Merchant] as @r at @s run function evercraft:calendar/events/merchant_caravan/spawn_merchant
