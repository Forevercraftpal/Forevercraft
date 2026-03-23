# Raiser Trim - Villager Restock (runs every 20 ticks via schedule)
# Only restocks villagers near players with raiser trim

# Check if any player has raiser trim
execute unless entity @a[tag=single_raiser,limit=1] run return 0

# Restock villagers near raiser trim players
execute at @a[tag=single_raiser] as @e[type=villager,distance=..32] run function evercraft:trim/single/raiser/restock

# Reschedule
schedule function evercraft:trim/single/raiser/restock_scheduled 20t
