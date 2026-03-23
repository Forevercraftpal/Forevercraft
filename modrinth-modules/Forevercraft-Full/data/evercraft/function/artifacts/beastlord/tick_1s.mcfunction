# Beastlord — 1-second boundary tick (when ec.bl_warp_sub reaches 20)
# OPT: Consolidates 5 @a scans with same selector into 1 function call
# Run as: player with ec.bl_active tag

scoreboard players set @s ec.bl_warp_sub 0

# Decrement per-animal warp timers
scoreboard players remove @s ec.bl_warp_w 1
scoreboard players remove @s ec.bl_warp_c 1
scoreboard players remove @s ec.bl_warp_p 1

# Rally Cry cooldown decrement
execute if score @s ec.bl_rally_cd matches 1.. run scoreboard players remove @s ec.bl_rally_cd 1

# Death save cooldown decrement
execute if score @s ec.bl_save_cd matches 1.. run scoreboard players remove @s ec.bl_save_cd 1

# OPT: Wolf armor repair (moved from per-tick to 1s — armor doesn't take damage every tick)
execute at @s as @e[type=minecraft:wolf,distance=..64,nbt={Owner:[I;]}] if data entity @s equipment.body on owner if entity @s[tag=ec.bl_active] run data modify entity @s equipment.body.components."minecraft:damage" set value 0

# OPT: Cat phantom hunt (moved from per-tick to 1s — phantoms are rare)
execute at @s if entity @e[type=minecraft:phantom,distance=..24] run function evercraft:artifacts/beastlord/warp/cat_phantom
