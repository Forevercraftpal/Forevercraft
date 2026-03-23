# Test: Spawn Awakening Stones
# Gives player one of each tier

tellraw @s [{text:"[Test] ",color:"gold"},{text:"Spawning Awakening Stones...",color:"gray"}]

loot give @s loot evercraft:weapon_mastery/stones/common_stone
loot give @s loot evercraft:weapon_mastery/stones/uncommon_stone
loot give @s loot evercraft:weapon_mastery/stones/rare_stone
loot give @s loot evercraft:weapon_mastery/stones/ornate_stone
loot give @s loot evercraft:weapon_mastery/stones/exquisite_stone
loot give @s loot evercraft:weapon_mastery/stones/mythical_stone

tellraw @s [{text:"[Test] ",color:"gold"},{text:"6 Awakening Stones ",color:"aqua"},{text:"(all tiers) given!",color:"green"}]
