# Black Market Heist — Master Cleanup
# Destroys arena, kills entities, clears all heist state

# === DESTROY ARENA ===
execute if entity @e[type=marker,tag=heist.center,limit=1] run function evercraft:heist/arena/destroy

# === RESTORE ELYTRA (if saved before heist) ===
# Use hopper_minecart intermediary to safely write to equipment slot
execute if data storage evercraft:heist_temp saved_elytra run function evercraft:heist/restore_elytra

# === CLEAR PLAYER STATE ===
effect clear @a[tag=ec.heist_active_tag] minecraft:slow_falling
effect clear @a[tag=ec.heist_active_tag] minecraft:resistance
effect clear @a[tag=ec.heist_active_tag] minecraft:blindness
effect clear @a[tag=ec.heist_active_tag] minecraft:absorption
tag @a remove ec.heist_active_tag
scoreboard players set @a ec.heist_active 0
scoreboard players set @a ec.heist_timer 0

# === RESET GLOBAL STATE ===
scoreboard players set #heist_active ec.var 0

# === KILL RETURN MARKER ===
kill @e[type=marker,tag=heist.return]
