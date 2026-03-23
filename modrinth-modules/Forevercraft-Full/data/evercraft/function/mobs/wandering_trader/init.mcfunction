execute as @s[tag=pk.at_vi] run return fail

# --- Spawn cooldown: 10 minutes (12000 ticks) ---
# Compare current gametime against last recorded spawn time
execute store result score #wt_now bestiary.technical run time query gametime
execute store result score #wt_last bestiary.technical run data get storage eden:settings bestiary.wandering_trader_settings.last_spawn_gametime
scoreboard players operation #wt_now bestiary.technical -= #wt_last bestiary.technical
# If last_spawn was set (>0) and less than 10 min have passed, reject this spawn
execute if score #wt_last bestiary.technical matches 1.. if score #wt_now bestiary.technical matches ..11999 at @s run kill @e[type=trader_llama,distance=..10]
execute if score #wt_last bestiary.technical matches 1.. if score #wt_now bestiary.technical matches ..11999 run kill @s
execute if score #wt_last bestiary.technical matches 1.. if score #wt_now bestiary.technical matches ..11999 run return fail
# Record this spawn time
execute store result storage eden:settings bestiary.wandering_trader_settings.last_spawn_gametime int 1 run time query gametime

# --- Safe spawn: avoid spawning inside walls ---
execute at @s unless block ~ ~ ~ #minecraft:replaceable run spreadplayers ~ ~ 0 5 false @s
execute at @s unless block ~ ~1 ~ #minecraft:replaceable run spreadplayers ~ ~ 0 5 false @s

execute if data storage eden:settings bestiary.wandering_trader_settings{miniblock:"enabled"} at @s run function evercraft:mobs/wandering_trader/trades/miniblock/init
execute if data storage eden:settings bestiary.wandering_trader_settings{plushie:"enabled"} run function evercraft:mobs/wandering_trader/trades/plushie/init
execute if data storage eden:settings bestiary.wandering_trader_settings{treasurebook:"enabled"} at @s run function evercraft:mobs/wandering_trader/trades/treasure_book/init
execute if data storage eden:settings bestiary.wandering_trader_settings{lootcontainer:"enabled"} at @s run function evercraft:mobs/wandering_trader/trades/loot_container/init

execute if data storage eden:settings bestiary.wandering_trader_settings{customname:"enabled"} run function evercraft:mobs/wandering_trader/names/init
execute if data storage eden:settings bestiary.wandering_trader_settings{spawnglow:"enabled"} run function evercraft:mobs/wandering_trader/spawn_glow
execute unless data storage eden:settings bestiary.wandering_trader_settings{spawnmsg:"disabled"} at @s run function evercraft:mobs/wandering_trader/spawn_msg

# Despawn timer - 10 minutes (12000 ticks)
data modify entity @s DespawnDelay set value 12000

# --- 5% chance to spawn a custom profession companion ---
execute at @s run function evercraft:mobs/wandering_trader/companion/spawn
