# Chrono Shard — per-tick handler

# === Delayed Restore (1 tick after consume) ===
execute as @a[tag=ec.cs_restore] at @s run function evercraft:chrono_shard/restore_item
tag @a[tag=ec.cs_restore] remove ec.cs_restore

# === Open GUI for players who just used shard ===
execute as @a[scores={ec.cs_use=1}] unless score @s ec.cs_active matches 1 at @s run function evercraft:chrono_shard/open_gui
scoreboard players set @a[scores={ec.cs_use=1}] ec.cs_use 0

# === GUI tick — check clicks for open GUIs ===
execute as @a[scores={ec.cs_active=1}] at @s run function evercraft:chrono_shard/gui/check_clicks

# === Distance check — auto-close if player walks away ===
execute as @a[scores={ec.cs_active=1}] at @s unless entity @e[tag=ec.cs_gui,distance=..8,limit=1] run function evercraft:chrono_shard/gui/close

# === Sneak to close (need at @s for close to have position context) ===
execute as @a[scores={ec.cs_active=1},predicate=evercraft:companions/is_sneaking] at @s run function evercraft:chrono_shard/gui/close
