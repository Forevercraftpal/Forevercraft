# Spawn ALL crate types at once — Treasure + Fishing + Harvest + Mob
# Uses: /function evercraft:treasure/test/spawn_all_crates

tellraw @s ["",{text:"═══ SPAWNING ALL CRATES ═══",color:gold,bold:true}]

# Treasure chests (6 barrels in a line ahead)
function evercraft:treasure/test/spawn_chests_direct

# Fishing crates (given to inventory)
function evercraft:treasure/test/spawn_fishing_crates

# Harvest crates (given to inventory)
function evercraft:treasure/test/spawn_harvest_crates

# Mob crates (6 barrels beside player)
execute positioned ~14 ~ ~ run function evercraft:treasure/test/spawn_mob_crates

tellraw @s ""
tellraw @s ["",{text:"All 4 crate types spawned!",color:green,bold:true}]
tellraw @s ["",{text:"Treasure: 6 barrels ahead | Fishing+Harvest: in inventory | Mob: 6 barrels to the right",color:gray}]
