# Lightning Strike — Sinister Sword (Mythical) + Voltaic Chains Enhancement
# Base: Guaranteed lightning on hit, 5s cooldown
# Enhancement: Every 3rd hit chains lightning to 2 nearest mobs (3 damage each)

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/lightning_strike_trigger

# Track hits for Voltaic Chains (always increments, even during cooldown)
scoreboard players add @s ec.voltaic_hits 1

# Voltaic Chains: Every 3rd hit
execute if score @s ec.voltaic_hits matches 3.. at @s as @e[type=!player,type=!item,distance=..6,limit=2,sort=nearest] run damage @s 3 minecraft:lightning_bolt
execute if score @s ec.voltaic_hits matches 3.. at @s as @e[type=!player,type=!item,distance=..6,limit=2,sort=nearest] at @s run particle electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.3 15
execute if score @s ec.voltaic_hits matches 3.. run title @s actionbar {text:"Voltaic Chains!",color:"#00BFFF",bold:true}
execute if score @s ec.voltaic_hits matches 3.. run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.3 2
execute if score @s ec.voltaic_hits matches 3.. run scoreboard players set @s ec.voltaic_hits 0

# Cooldown check for base lightning
execute if score @s ec.lightning_cd matches 1.. run return run title @s actionbar [{"text":"Lightning cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"ec.lightning_cd"},"color":"red"},{"text":"s","color":"gray"}]

# Set 5s cooldown
scoreboard players set @s ec.lightning_cd 5

# Summon lightning at target
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~

# Visual/audio feedback
execute at @s run particle electric_spark ~ ~1 ~ 0.5 0.8 0.5 0.2 20
playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.6 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
