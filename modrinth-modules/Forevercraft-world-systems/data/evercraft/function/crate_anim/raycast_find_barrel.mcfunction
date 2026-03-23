# Raycast forward to find a placed crate barrel (max 7 blocks, 35 steps at 0.2)
# Macro args: $(tier), $(system_tag), $(plot_start), $(skin), $(nbt_key), $(nbt_val)
# Run as: player with tag ec.searching, positioned along look direction
scoreboard players add @s cf.temp 1

# Check if we hit the correct barrel at current position
$execute if block ~ ~ ~ minecraft:barrel if data block ~ ~ ~ {components:{"minecraft:custom_data":{$(nbt_key):"$(nbt_val)"}}} align xyz unless entity @n[type=armor_stand,tag=ec.crate_anim,distance=..0.5] run function evercraft:crate_anim/lock_and_animate {tier:"$(tier)",system_tag:"$(system_tag)",plot_start:$(plot_start),skin:"$(skin)"}

# Continue raycast if not found and under limit
$execute if entity @s[tag=ec.searching] if score @s cf.temp matches ..35 positioned ^ ^ ^0.2 run function evercraft:crate_anim/raycast_find_barrel {tier:"$(tier)",system_tag:"$(system_tag)",plot_start:$(plot_start),skin:"$(skin)",nbt_key:"$(nbt_key)",nbt_val:"$(nbt_val)"}

# Reset counter when done
execute if score @s cf.temp matches 36.. run scoreboard players set @s cf.temp 0
