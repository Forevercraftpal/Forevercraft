# Mob Crates - Regular Mob Kill Drop
# Macro function — called with {chance: <float>} from per-mob kill functions
# Debug mode (#debug_mob_drops ec.debug 1) bypasses the random chance roll

# Artifact kill tracking
function evercraft:artifacts/kill_track

# Roll chance — skip if debug mode is on (100% drop in debug)
# Charm 2x: first roll — if fails AND no charm active, return 0
$execute unless score #debug_mob_drops ec.debug matches 1 unless predicate {"condition":"minecraft:random_chance","chance":$(chance)} unless score @s ec.charm_timer matches 1.. run return 0
# Charm 2x: second roll — only reached if charm is active and first roll failed
$execute unless score #debug_mob_drops ec.debug matches 1 unless predicate {"condition":"minecraft:random_chance","chance":$(chance)} run return 0

# Tier roll: Common 58%, Uncommon 25%, Rare 10%, Ornate 5%, Exquisite 1.5%, Mythical 0.5%
execute store result score #mob_tier ec.var run random value 1..1000
execute if score #mob_tier ec.var matches 996..1000 run function evercraft:mob_crates/spawn/mythical
execute if score #mob_tier ec.var matches 981..995 run function evercraft:mob_crates/spawn/exquisite
execute if score #mob_tier ec.var matches 931..980 run function evercraft:mob_crates/spawn/ornate
execute if score #mob_tier ec.var matches 831..930 run function evercraft:mob_crates/spawn/rare
execute if score #mob_tier ec.var matches 581..830 run function evercraft:mob_crates/spawn/uncommon
execute if score #mob_tier ec.var matches 1..580 run function evercraft:mob_crates/spawn/common

# Newcomer bonus: 10% chance for an extra common crate
execute if score @s ec.difficulty matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.1} at @s run function evercraft:mob_crates/spawn/common

# Bestiary — record which crate tier dropped for this mob
# Only runs if dscore was set by the per-mob kill function (bestiary-hooked mobs)
execute unless data storage evercraft:mob_crates dscore run return 0
execute if score #mob_tier ec.var matches 1..580 run scoreboard players set #bs_tier_bit bs.temp 1
execute if score #mob_tier ec.var matches 581..830 run scoreboard players set #bs_tier_bit bs.temp 2
execute if score #mob_tier ec.var matches 831..930 run scoreboard players set #bs_tier_bit bs.temp 4
execute if score #mob_tier ec.var matches 931..980 run scoreboard players set #bs_tier_bit bs.temp 8
execute if score #mob_tier ec.var matches 981..995 run scoreboard players set #bs_tier_bit bs.temp 16
execute if score #mob_tier ec.var matches 996..1000 run scoreboard players set #bs_tier_bit bs.temp 32
function evercraft:bestiary/track/on_drop with storage evercraft:mob_crates
data remove storage evercraft:mob_crates dscore
