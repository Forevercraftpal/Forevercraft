# Guild Companion — Pet interaction
# Run as: guild member player
# +5 RP, 5 minute cooldown (per-pet via gc.petcd on GC.Interact entity)

# Skip if this specific companion is on cooldown
execute as @e[type=interaction, tag=GC.Interact] if score @s ec.guild_id = #gc_interact_guild ec.guild_id if score @s gc.slot = #gc_interact_slot gc.slot run execute if score @s gc.petcd matches 1.. run return fail

# Set cooldown on this companion's interact entity (5 minutes = 6000 ticks)
execute as @e[type=interaction, tag=GC.Interact] if score @s ec.guild_id = #gc_interact_guild ec.guild_id if score @s gc.slot = #gc_interact_slot gc.slot run scoreboard players set @s gc.petcd 6000

# Effects — particles at the guild companion's position
execute as @e[type=chicken, tag=GuildCompanion] if score @s ec.guild_id = #gc_interact_guild ec.guild_id if score @s gc.slot = #gc_interact_slot gc.slot at @s run particle heart ~ ~0.5 ~ 0.2 0.2 0.2 0 3
playsound minecraft:entity.wolf.whine master @s ~ ~ ~ 0.5 1.5

tellraw @s [{text:"[Guild] ",color:"green"},{text:"You pet the guild companion! ",color:"white"},{text:"(+5 RP)",color:"yellow"}]
