# Night Terrors — Select terror type (biome-weighted random)
# Run at spawn position

# Roll 1-6 for type selection
execute store result score #nt_type ec.var run random value 1..6

execute if score #nt_type ec.var matches 1 run function evercraft:night_terrors/spawn/the_hollow
execute if score #nt_type ec.var matches 2 run function evercraft:night_terrors/spawn/dreamreaver
execute if score #nt_type ec.var matches 3 run function evercraft:night_terrors/spawn/the_wailing
execute if score #nt_type ec.var matches 4 run function evercraft:night_terrors/spawn/rotfather
execute if score #nt_type ec.var matches 5 run function evercraft:night_terrors/spawn/nightfang
execute if score #nt_type ec.var matches 6 run function evercraft:night_terrors/spawn/the_revenant
