# Test spawn all fishing crates - gives directly to player
# Uses: /function evercraft:treasure/test/spawn_fishing_crates

tellraw @s ["",{text:"Spawning all fishing crates...",color:"aqua"}]

# All 6 fishing crate tiers
loot give @s loot evercraft:fishing/gameplay/fishing/crates/common/1
loot give @s loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
loot give @s loot evercraft:fishing/gameplay/fishing/crates/rare/1
loot give @s loot evercraft:fishing/gameplay/fishing/crates/ornate/1
loot give @s loot evercraft:fishing/gameplay/fishing/crates/exquisite/1
loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1

tellraw @s ["",{text:"Gave all 6 fishing crates!",color:"aqua"}]
tellraw @s ["",{text:"Right-click to open each crate.",color:"gray"}]
