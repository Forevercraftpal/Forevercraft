# Showcase — Load
# Register scoreboards and initialize storage

scoreboard objectives add ec.sc_slot dummy "Showcase Edit Slot"

# Init storage namespace
execute unless data storage evercraft:showcase {} run data merge storage evercraft:showcase {}

# Load achievement registry
function evercraft:codex/friends/showcase/data/init_registry
