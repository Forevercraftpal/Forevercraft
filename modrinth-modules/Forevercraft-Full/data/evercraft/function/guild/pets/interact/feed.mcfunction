# Guild Companion — Feed interaction
# Run as: guild member player
# Delegates to existing companion feed system for RP gain

# Skip if this specific companion is on feed cooldown
execute as @e[type=interaction, tag=GC.Interact] if score @s ec.guild_id = #gc_interact_guild ec.guild_id if score @s gc.slot = #gc_interact_slot gc.slot run execute if score @s gc.feedcd matches 1.. run return fail

# Set feed cooldown (10 minutes = 12000 ticks)
execute as @e[type=interaction, tag=GC.Interact] if score @s ec.guild_id = #gc_interact_guild ec.guild_id if score @s gc.slot = #gc_interact_slot gc.slot run scoreboard players set @s gc.feedcd 12000

# Effects
execute as @e[type=chicken, tag=GuildCompanion] if score @s ec.guild_id = #gc_interact_guild ec.guild_id if score @s gc.slot = #gc_interact_slot gc.slot at @s run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 5
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 0.5 1.0

tellraw @s [{text:"[Guild] ",color:"green"},{text:"You fed the guild companion!",color:"white"}]
