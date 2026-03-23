# Beastlord — Reset cat warp timer based on tier
# Cats: Common 12s, Uncommon 10s, Rare 8s, Ornate 6s, Exquisite 4s, Mythical 2s

execute if score @s ec.bl_tier matches 1 run scoreboard players set @s ec.bl_warp_c 12
execute if score @s ec.bl_tier matches 2 run scoreboard players set @s ec.bl_warp_c 10
execute if score @s ec.bl_tier matches 3 run scoreboard players set @s ec.bl_warp_c 8
execute if score @s ec.bl_tier matches 4 run scoreboard players set @s ec.bl_warp_c 6
execute if score @s ec.bl_tier matches 5 run scoreboard players set @s ec.bl_warp_c 4
execute if score @s ec.bl_tier matches 6 run scoreboard players set @s ec.bl_warp_c 2
