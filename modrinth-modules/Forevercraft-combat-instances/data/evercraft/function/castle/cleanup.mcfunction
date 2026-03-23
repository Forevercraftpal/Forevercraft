# Infinite Castle — Cleanup
# Kill mobs, destroy room, reset state, teleport back

# Teleport remaining players back FIRST (before destroying room under them)
execute as @a[tag=ic.player] at @e[type=marker,tag=ic.return,limit=1] run tp @s ~ ~ ~
# Fallback: if return marker is unloaded, use stored coordinates
execute if entity @a[tag=ic.player] unless entity @e[type=marker,tag=ic.return] run function evercraft:castle/cleanup_tp_fallback with storage evercraft:castle return

# Destroy arena — try marker-based first (if chunks loaded), then forceload fallback
execute at @e[type=marker,tag=ic.center,limit=1] run function evercraft:castle/build/destroy
# Always run forceload fallback too (handles edge cases, no-ops if already cleared)
function evercraft:castle/cleanup_destroy with storage evercraft:castle arena

# Kill all castle mobs
kill @e[tag=ic.mob]

# Clean up Iron Phalanx entities (spectral spears, scoreboards)
execute if entity @e[tag=ic.phalanx_spear] run function evercraft:castle/iron_phalanx/cleanup

# Remove player tags
tag @a[tag=ic.player] remove ic.player
tag @a remove ic.starter

# Kill markers
kill @e[type=marker,tag=ic.return]
kill @e[type=marker,tag=ic.center]

# Reset death counters
scoreboard players set @a ic.deaths 0

# Reset global state
scoreboard players set #ic_active ec.var 0
scoreboard players set #ic_wave ec.var 0
scoreboard players set #ic_timer ec.var 0
scoreboard players set #ic_floor ec.var 0
scoreboard players set #ic_transition ec.var 0
scoreboard players set #ic_instance ec.var 0
scoreboard players set #ic_mobs ec.var 0
scoreboard players set #ic_players ec.var 0

# Clear skip triggers
scoreboard players set @a ec.ic_skip 0
scoreboard players enable @a ec.ic_skip

# Re-enable mob griefing
gamerule minecraft:mob_griefing true

# Clear actionbar
title @a actionbar {text:""}
