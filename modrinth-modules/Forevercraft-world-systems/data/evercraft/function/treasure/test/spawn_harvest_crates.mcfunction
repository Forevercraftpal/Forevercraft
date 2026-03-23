# Spawn all 6 harvest crate tiers for testing
# Uses: /function evercraft:treasure/test/spawn_harvest_crates

tellraw @s {text:"Spawning all 6 Harvest Crate tiers...",color:"green"}

loot give @s loot evercraft:harvest/gameplay/harvest/crates/common/dummy
loot give @s loot evercraft:harvest/gameplay/harvest/crates/uncommon/dummy
loot give @s loot evercraft:harvest/gameplay/harvest/crates/rare/dummy
loot give @s loot evercraft:harvest/gameplay/harvest/crates/ornate/dummy
loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/dummy
loot give @s loot evercraft:harvest/gameplay/harvest/crates/mythical/dummy

tellraw @s {text:"Gave all 6 Harvest Crates! (Common → Mythical)",color:"green"}
