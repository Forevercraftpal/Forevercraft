# Water Net — Catch Loop (recursive)
# Run as: WaterNet marker at barrel position
# Uses adv.pa_cage_ct as iteration counter (counts down from 8 or 16)

# Decrement counter
scoreboard players remove @s adv.pa_cage_ct 1
execute if score @s adv.pa_cage_ct matches ..-1 run return 0

# Insert vanilla fishing loot into the barrel
loot insert ~ ~ ~ loot minecraft:gameplay/fishing

# Boosted crate chance: 1/50 (2%) per catch
execute store result score #wn_roll adv.temp run random value 1..50
execute if score #wn_roll adv.temp matches 1 run loot insert ~ ~ ~ loot evercraft:fishing/gameplay/fishing/water_net_crate

# P3 Master Angler: treasure loot chance 1/20 (5%) per catch
execute if data entity @s {data:{master_angler:1b}} store result score #wn_treasure adv.temp run random value 1..20
execute if data entity @s {data:{master_angler:1b}} if score #wn_treasure adv.temp matches 1 run loot insert ~ ~ ~ loot minecraft:gameplay/fishing/treasure

# Recurse
function evercraft:advantage/prestige/abilities/water_net_catch_loop
