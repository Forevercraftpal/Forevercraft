# Titan's Momentum — Golden Goliath Sword Enhancement (Mythical)
# Each consecutive hit without taking damage increases knockback
# 3 hits = extra KB (Levitation I 0.5s), 5 hits = big KB (Levitation I 1s) + Slowness II
advancement revoke @s only evercraft:artifacts/abilities/titan_momentum_trigger

# Increment hit chain
scoreboard players add @s ec.titan_hits 1

# Reset per-player decay timer (5 seconds)
scoreboard players set @s ec.titan_cd 5

# 3+ hits: Apply Levitation I briefly (0.5s) — launches target upward
execute if score @s ec.titan_hits matches 3..4 at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s levitation 1 0 false
execute if score @s ec.titan_hits matches 3..4 at @s run particle cloud ~ ~1 ~ 0.5 0.3 0.5 0.05 10

# 5+ hits: Massive launch + Slowness II on landing
execute if score @s ec.titan_hits matches 5.. at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s levitation 1 2 false
execute if score @s ec.titan_hits matches 5.. at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 3 1 false
execute if score @s ec.titan_hits matches 5.. run title @s actionbar {text:"TITAN STRIKE!",color:"#FFD700",bold:true}
execute if score @s ec.titan_hits matches 5.. at @s run particle explosion ~ ~1 ~ 0.5 0.3 0.5 0.1 5
execute if score @s ec.titan_hits matches 5.. run playsound minecraft:entity.iron_golem.attack player @a[distance=..16] ~ ~ ~ 1 0.5
execute if score @s ec.titan_hits matches 5.. run scoreboard players set @s ec.titan_hits 0

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
