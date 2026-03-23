# Black Market Heist — Build Arena (Dispatcher)
# Runs positioned at barrel X, barrel Y + 172, barrel Z
# Builds shared shell then picks a random variant

# Build common structure (walls, floor, ceiling, start/end rooms)
function evercraft:heist/arena/common_shell

# Pick random variant 1-10
execute store result score #heist_variant ec.var run random value 1..10

# Dispatch to variant-specific interior (z=9 to z=50)
execute if score #heist_variant ec.var matches 1 run function evercraft:heist/arena/build_1
execute if score #heist_variant ec.var matches 2 run function evercraft:heist/arena/build_2
execute if score #heist_variant ec.var matches 3 run function evercraft:heist/arena/build_3
execute if score #heist_variant ec.var matches 4 run function evercraft:heist/arena/build_4
execute if score #heist_variant ec.var matches 5 run function evercraft:heist/arena/build_5
execute if score #heist_variant ec.var matches 6 run function evercraft:heist/arena/build_6
execute if score #heist_variant ec.var matches 7 run function evercraft:heist/arena/build_7
execute if score #heist_variant ec.var matches 8 run function evercraft:heist/arena/build_8
execute if score #heist_variant ec.var matches 9 run function evercraft:heist/arena/build_9
execute if score #heist_variant ec.var matches 10 run function evercraft:heist/arena/build_10
