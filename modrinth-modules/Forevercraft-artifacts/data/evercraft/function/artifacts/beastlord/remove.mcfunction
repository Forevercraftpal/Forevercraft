# Beastlord Spear — Remove (unequipped or switched weapon)
# Runs as player who no longer holds a beastlord spear

tag @s remove ec.bl_active

# Clear Strength from owned tameables within 16 blocks
tag @s add bl.owner
execute at @s as @e[type=wolf,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=cat,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=parrot,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=fox,distance=..16,tag=ec.fox_tamed] run function evercraft:artifacts/beastlord/check_owned
tag @s remove bl.owner
effect clear @e[tag=bl.owned] strength
effect clear @e[tag=bl.owned] speed
tag @e[tag=bl.owned] remove bl.owned

# Clear Speed from mount if riding
execute on vehicle run effect clear @s speed

# Reset beastlord scoreboards
scoreboard players set @s ec.bl_tier 0
scoreboard players set @s ec.bl_spear 0
scoreboard players set @s ec.bl_warp_w 0
scoreboard players set @s ec.bl_warp_c 0
scoreboard players set @s ec.bl_warp_p 0
scoreboard players set @s ec.bl_str_tick 0
scoreboard players set @s ec.bl_warp_sub 0
scoreboard players set @s ec.bl_combo 0
# Keep rally cooldown running even after unequip (prevent exploit)
# Keep save cooldown running too

# Remove lance armor modifier
attribute @s armor modifier remove evercraft:bl_lance_armor

# Clear any marked targets
tag @e[tag=bl.marked] remove bl.marked
