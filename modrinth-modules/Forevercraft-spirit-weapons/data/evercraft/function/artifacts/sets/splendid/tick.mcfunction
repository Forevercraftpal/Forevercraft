# Splendid Set - Tick function
# Handle structure locate triggers (cooldown moved to check_tick 1s schedule)

# Check if anyone has used the locate trigger
execute as @a[scores={ec.locate=1..}] run function evercraft:artifacts/sets/splendid/execute_locate
