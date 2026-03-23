# Spawn all 6 mob crate tiers for testing
# Uses: /function evercraft:treasure/test/spawn_mob_crates

tellraw @s {text:"Spawning all 6 Mob Crate tiers...",color:"light_purple"}

# Common - white/gray
setblock ~0 ~1 ~0 barrel[facing=up]{CustomName:{text:"Common Mob Crate",color:"gray",italic:false},LootTable:"evercraft:mob_crates/common"}

# Uncommon - blue
setblock ~2 ~1 ~0 barrel[facing=up]{CustomName:{text:"Uncommon Mob Crate",color:"blue",italic:false},LootTable:"evercraft:mob_crates/uncommon"}

# Rare - aqua
setblock ~4 ~1 ~0 barrel[facing=up]{CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false},LootTable:"evercraft:mob_crates/rare"}

# Ornate - dark_purple
setblock ~6 ~1 ~0 barrel[facing=up]{CustomName:{text:"Ornate Mob Crate",color:"dark_purple",italic:false},LootTable:"evercraft:mob_crates/ornate"}

# Exquisite - light_purple
setblock ~8 ~1 ~0 barrel[facing=up]{CustomName:{text:"Exquisite Mob Crate",color:"light_purple",italic:false},LootTable:"evercraft:mob_crates/exquisite"}

# Mythical - gold
setblock ~10 ~1 ~0 barrel[facing=up]{CustomName:{text:"Mythical Mob Crate",color:"gold",bold:true,italic:false},LootTable:"evercraft:mob_crates/mythical"}

tellraw @s {text:"Spawned 6 Mob Crates! (Common → Mythical)",color:"green"}
