# Infinite Castle — Select & Build Room (random size)
# Run positioned at arena base (172 blocks above start)

# Roll random room size (1=small, 2=medium, 3=large)
execute store result score #ic_room_size ec.var run random value 1..3

# Build the selected room
execute if score #ic_room_size ec.var matches 1 run function evercraft:castle/build/small
execute if score #ic_room_size ec.var matches 2 run function evercraft:castle/build/medium
execute if score #ic_room_size ec.var matches 3 run function evercraft:castle/build/large
