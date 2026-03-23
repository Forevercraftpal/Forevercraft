# Message in a Bottle System — Init
# Note: ec.bottle trigger removed — signing detection via advancement now

# Initialize storage pool if it doesn't exist
execute unless data storage evercraft:bottles pool run data modify storage evercraft:bottles pool set value []
