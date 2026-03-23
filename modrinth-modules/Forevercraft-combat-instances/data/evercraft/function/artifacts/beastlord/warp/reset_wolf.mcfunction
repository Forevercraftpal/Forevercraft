# Beastlord — Reset wolf warp timer based on tier
# Wolves: Common 18s, Uncommon 15s, Rare 12s, Ornate 9s, Exquisite 6s, Mythical 3s

execute if score @s ec.bl_tier matches 1 run scoreboard players set @s ec.bl_warp_w 18
execute if score @s ec.bl_tier matches 2 run scoreboard players set @s ec.bl_warp_w 15
execute if score @s ec.bl_tier matches 3 run scoreboard players set @s ec.bl_warp_w 12
execute if score @s ec.bl_tier matches 4 run scoreboard players set @s ec.bl_warp_w 9
execute if score @s ec.bl_tier matches 5 run scoreboard players set @s ec.bl_warp_w 6
execute if score @s ec.bl_tier matches 6 run scoreboard players set @s ec.bl_warp_w 3
