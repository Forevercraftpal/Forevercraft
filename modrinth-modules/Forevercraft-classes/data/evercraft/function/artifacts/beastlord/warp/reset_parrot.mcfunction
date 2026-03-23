# Beastlord — Reset parrot warp timer based on tier
# Parrots: Common 60s, Uncommon 50s, Rare 40s, Ornate 30s, Exquisite 20s, Mythical 15s

execute if score @s ec.bl_tier matches 1 run scoreboard players set @s ec.bl_warp_p 60
execute if score @s ec.bl_tier matches 2 run scoreboard players set @s ec.bl_warp_p 50
execute if score @s ec.bl_tier matches 3 run scoreboard players set @s ec.bl_warp_p 40
execute if score @s ec.bl_tier matches 4 run scoreboard players set @s ec.bl_warp_p 30
execute if score @s ec.bl_tier matches 5 run scoreboard players set @s ec.bl_warp_p 20
execute if score @s ec.bl_tier matches 6 run scoreboard players set @s ec.bl_warp_p 15
