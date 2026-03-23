# Guild Companion — Sync interaction entity position to chicken
# Run as: GuildCompanion chicken, at chicken position

scoreboard players operation #gc_sync_guild ec.guild_id = @s ec.guild_id
scoreboard players operation #gc_sync_slot gc.slot = @s gc.slot
# Offset Y+0.5 so interaction hitbox sits above chicken
execute as @e[type=interaction, tag=GC.Interact] if score @s ec.guild_id = #gc_sync_guild ec.guild_id if score @s gc.slot = #gc_sync_slot gc.slot run tp @s ~ ~0.5 ~
