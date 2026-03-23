# Add bonus loot container to the barrel - LUCKY FIND!
# Run at barrel position, as player
# Tier determines the bonus loot table used:
#   Tier 1: 85% common, 12% uncommon, 3% rare
#   Tier 2: 70% uncommon, 22% rare, 6% ornate, 2% exquisite
#   Tier 3: 55% uncommon, 30% rare, 10% ornate, 5% exquisite
#   Tier 4: 80% rare, 15% ornate, 5% exquisite
#   Tier 5: 80% ornate, 20% exquisite

# Insert bonus loot based on tier
execute if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/bonus/tier1
execute if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/bonus/tier2
execute if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/bonus/tier3
execute if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/bonus/tier4
execute if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/bonus/tier5

# Bonus notification is now consolidated in announce_tier.mcfunction

# Extra sparkle sounds for lucky find
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
execute at @s run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1 1.2
execute if score @s cf.tier matches 5 at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
