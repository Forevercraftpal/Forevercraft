# Guild Companion — Handle right-click interaction
# Run as: GC.Interact interaction entity, at its position

# Clear interaction data to prevent re-triggering
data remove entity @s interaction

# Store interaction slot and guild ID for routing
execute store result score #gc_interact_slot gc.slot run scoreboard players get @s gc.slot
scoreboard players operation #gc_interact_guild ec.guild_id = @s ec.guild_id
scoreboard players operation #gc_interact_owner companion.id = @s companion.id

# Route to nearest guild member in range (any guild member can interact, not just owner)
execute as @a[distance=..10,scores={ec.guild_in_zone=1},limit=1,sort=nearest] if score @s ec.guild_id = #gc_interact_guild ec.guild_id at @s run function evercraft:guild/pets/interact/route
