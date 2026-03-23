# Chrono Shard — check clicks on GUI buttons
# @s = player with ec.cs_active=1, at @s (position context for distance)

# === Selection mode (ec.cs_confirm = 0) ===
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit1,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_1
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit2,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_2
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit3,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_3
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit4,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_4
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit5,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_5
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit6,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_6
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit7,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_7
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit8,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_8
execute if score @s ec.cs_confirm matches 0 as @e[tag=ec.cs_hit9,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/on_select_9

# Cancel button (works in both modes)
execute as @e[tag=ec.cs_hit_cancel,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/cancel
execute as @e[tag=ec.cs_hit_cancel,distance=..5,limit=1] run data remove entity @s interaction

# === Confirmation mode (ec.cs_confirm = 1) ===
execute if score @s ec.cs_confirm matches 1 as @e[tag=ec.cs_hit_yes,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/do_confirm
execute if score @s ec.cs_confirm matches 1 as @e[tag=ec.cs_hit_no,distance=..5,limit=1] if data entity @s interaction run function evercraft:chrono_shard/gui/go_back
