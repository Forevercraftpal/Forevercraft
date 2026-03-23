# Test: Spawn All Permanent Dream Rate Items
# Gives player one of each permanent DR consumable (18 total)

tellraw @s [{text:"[Test] ",color:"gold"},{text:"Spawning all permanent Dream Rate items...",color:"gray"}]

# DR Items from loot tables
loot give @s loot evercraft:items/crystal_of_dreams
loot give @s loot evercraft:items/dream_inducing_mushroom
loot give @s loot evercraft:items/chorus_dreaming_fruit
loot give @s loot evercraft:items/crystalized_dream_droppings
loot give @s loot evercraft:items/patrons_dream_essence
loot give @s loot evercraft:items/dreamers_quill
loot give @s loot evercraft:items/dreamweavers_thread
loot give @s loot evercraft:items/tome_of_lucid_visions
loot give @s loot evercraft:items/astral_codex_page
loot give @s loot evercraft:items/fishermans_dozing_lure
loot give @s loot evercraft:items/miners_slumbering_geode
loot give @s loot evercraft:items/harvesters_dreamy_seed
loot give @s loot evercraft:items/blacksmiths_dreaming_ember
loot give @s loot evercraft:items/wanderers_dream_map
loot give @s loot evercraft:items/prospectors_dream_ore
loot give @s loot evercraft:items/collectors_dream_relic
loot give @s loot evercraft:items/tillers_dream_petal
loot give @s loot evercraft:artifacts/common/rabbits_dreaming_foot

tellraw @s [{text:"[Test] ",color:"gold"},{text:"18 Permanent DR Items ",color:"yellow"},{text:"given!",color:"green"}]
