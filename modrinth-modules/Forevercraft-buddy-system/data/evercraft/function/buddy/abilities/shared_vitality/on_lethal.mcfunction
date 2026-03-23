# Buddy Ability — Shared Vitality (Tier 4+)
# When player would take lethal damage, split 50/50 with buddy
# This is complex to detect in vanilla — simplified approach:
# If player drops below 2 hearts and buddy is nearby, heal player for 4 HP
# and damage buddy for 4 HP. 60-second cooldown.

# Check cooldown
execute if score @s ec.bd_vitality_cd matches 1.. run return fail

# Check health is critically low (at or below 4 HP = 2 hearts)
execute store result score #bd_vit_hp ec.temp run data get entity @s Health 1
execute unless score #bd_vit_hp ec.temp matches ..4 run return fail

# Must have buddy within 16 blocks
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

# Heal player for 4 HP
effect give @s instant_health 1 0

# Damage buddy for 4 HP
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run damage @s 4 minecraft:generic

# Set cooldown (60 seconds)
scoreboard players set @s ec.bd_vitality_cd 60

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy shares your pain!",color:"red"}]
execute at @s run playsound minecraft:entity.wolf.whine master @s ~ ~ ~ 0.8 0.8
