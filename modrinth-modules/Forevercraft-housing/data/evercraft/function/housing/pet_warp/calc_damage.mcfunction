# Home Pet Warp Strike — Calculate Damage
# Runs as: player. Sets #hs_warp_dmg ec.var and stores to storage for macro.
# Base 3 + Beastmaster bonus + Wild Trim bonus + Beastlord bonus + Moon bonus

# Base damage
scoreboard players set #hs_warp_dmg ec.var 3

# Beastmaster tree: +1 at 10, +2 at 20, +3 at 25
execute if score @s adv.beastmaster matches 10..19 run scoreboard players add #hs_warp_dmg ec.var 1
execute if score @s adv.beastmaster matches 20..24 run scoreboard players add #hs_warp_dmg ec.var 2
execute if score @s adv.beastmaster matches 25.. run scoreboard players add #hs_warp_dmg ec.var 3

# Wild Trim: single piece +2, full set +4
execute if entity @s[tag=single_wild,tag=!full_set_wild] run scoreboard players add #hs_warp_dmg ec.var 2
execute if entity @s[tag=full_set_wild] run scoreboard players add #hs_warp_dmg ec.var 4

# Beastlord Staff active: +1/+2/+3 by tier pair
execute if entity @s[tag=ec.bl_active] if score @s ec.bl_tier matches 1..2 run scoreboard players add #hs_warp_dmg ec.var 1
execute if entity @s[tag=ec.bl_active] if score @s ec.bl_tier matches 3..4 run scoreboard players add #hs_warp_dmg ec.var 2
execute if entity @s[tag=ec.bl_active] if score @s ec.bl_tier matches 5..6 run scoreboard players add #hs_warp_dmg ec.var 3

# Moon phase: Full moon +1, New moon -1
execute if score #moon_phase ec.var matches 0 run scoreboard players add #hs_warp_dmg ec.var 1
execute if score #moon_phase ec.var matches 4 run scoreboard players remove #hs_warp_dmg ec.var 1

# Minimum 1 damage
execute if score #hs_warp_dmg ec.var matches ..0 run scoreboard players set #hs_warp_dmg ec.var 1

# Store for macro
execute store result storage evercraft:pet_warp damage int 1 run scoreboard players get #hs_warp_dmg ec.var
