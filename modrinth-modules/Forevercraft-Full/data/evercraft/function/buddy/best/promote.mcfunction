# Best Buddy — Promote (Spiritbound buddy → Best Buddy)
# @s = player who wants to promote their buddy
# Called from GUI (Phase 5) or via command for testing

# Verify buddy is Spiritbound (tier 6)
execute unless score @s ec.bd_tier matches 6 run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy must reach Spiritbound (10,000 points) first!",color:"red"}]
execute unless score @s ec.bd_tier matches 6 run return fail

# Check if already has a best buddy
execute if score @s ec.bd_best_type matches 1.. run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"You already have a Best Buddy! Release your current one first.",color:"red"}]
execute if score @s ec.bd_best_type matches 1.. run return fail

# Promote: copy buddy data to best buddy slots
scoreboard players operation @s ec.bd_best_uuid0 = @s ec.bd_uuid0
scoreboard players operation @s ec.bd_best_uuid1 = @s ec.bd_uuid1
scoreboard players operation @s ec.bd_best_type = @s ec.bd_type_id
scoreboard players set @s ec.bd_best_active 1
scoreboard players set @s ec.bd_best_dead 0

# Tag the entity as best buddy
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..64,limit=1] run tag @s add ec.bd_best

# Announcement
tellraw @s [{text:"\n"},{text:"  ★ ",color:"#FF4500"},{text:"BEST BUDDY",color:"#FF4500",bold:true},{text:" ★",color:"#FF4500"},{text:"\n"},{text:"  Your buddy has been promoted to your ",color:"yellow"},{text:"Best Buddy",color:"#FF4500",bold:true},{text:"!",color:"yellow"},{text:"\n"},{text:"  It will now fight by your side, equip artifacts,",color:"gray"},{text:"\n"},{text:"  and earn double friendship points.",color:"gray"},{text:"\n"}]

# Effects
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 1.5
execute as @e[tag=ec.bd_best,distance=..64,limit=1] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 80
