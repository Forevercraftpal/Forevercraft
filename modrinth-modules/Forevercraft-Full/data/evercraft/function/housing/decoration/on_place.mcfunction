# Housing Decoration — Block Placed
# Fires when a player places any decorative block (advancement reward)
# Only counts if player is in their home zone

# Revoke for reuse
advancement revoke @s only evercraft:housing/place_decoration

# Only count if player is in their home zone
execute unless score @s hs.in_zone matches 1 run return 0

# Increment decoration score
scoreboard players add @s hs.decor 1

# Milestone checks
execute if score @s hs.decor matches 100 run function evercraft:housing/decoration/milestone {count:"100",tier:"Budding Decorator",color:"gray"}
execute if score @s hs.decor matches 500 run function evercraft:housing/decoration/milestone {count:"500",tier:"Novice Decorator",color:"green"}
execute if score @s hs.decor matches 1000 run function evercraft:housing/decoration/milestone {count:"1000",tier:"Interior Designer",color:"aqua"}
execute if score @s hs.decor matches 2500 run function evercraft:housing/decoration/milestone {count:"2500",tier:"Master Architect",color:"gold"}

# Award House Key at Architect comfort + Tier 3
execute if score @s hs.decor matches 2500.. if score @s hs.tier matches 3.. unless entity @s[tag=hs.has_satchel] run function evercraft:housing/satchel/award
execute if score @s hs.decor matches 5000 run function evercraft:housing/decoration/milestone {count:"5000",tier:"Legendary Builder",color:"light_purple"}

# Subtle feedback every 10 blocks
scoreboard players operation #hs_dec_mod hs.temp = @s hs.decor
scoreboard players set #10_temp hs.temp 10
scoreboard players operation #hs_dec_mod hs.temp %= #10_temp hs.temp
execute if score #hs_dec_mod hs.temp matches 0 run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.2 1.8

# Artisan XP: Building (+1 per decoration placed)
scoreboard players set #cf_xp_amount ec.cf_temp 1
scoreboard players set #cf_xp_cat ec.cf_temp 3
function evercraft:craftforever/artisan/add_xp
