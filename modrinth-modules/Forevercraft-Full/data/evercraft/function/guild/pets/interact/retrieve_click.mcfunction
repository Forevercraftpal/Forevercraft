# Guild Companion — Retrieve via sneak + right-click (owner only)
# Run as: owner player

# Copy interact slot to retrieve slot
scoreboard players operation #gc_retrieve_slot gc.slot = #gc_interact_slot gc.slot
scoreboard players operation #gc_retrieve_guild ec.guild_id = #gc_interact_guild ec.guild_id

# Call the retrieve function
function evercraft:guild/pets/retrieve
