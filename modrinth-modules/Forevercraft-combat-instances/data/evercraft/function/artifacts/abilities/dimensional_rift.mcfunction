# Dimensional Rift — Portal Staff Enhancement (Mythical)
# Sneak + hit creates a portal trap at target location
# Summons a marker with portal particles for 5s. Mobs that enter take 5 damage + Levitation III (2s)

# Summon rift marker at target location (with gametime tag for init)
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon marker ~ ~ ~ {Tags:["ec.rift","ec.rift_new","ec.rift_init"]}
# Store spawn gametime for chunk-safe expiry
execute as @e[tag=ec.rift_init] store result entity @s data.spawn_time int 1 run time query gametime
execute as @e[tag=ec.rift_init] run tag @s remove ec.rift_init

# Apply immediate damage + levitation to the hit target
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s levitation 2 2 false

# Visual/audio feedback
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run particle portal ~ ~1 ~ 1 1 1 0.5 40
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run particle reverse_portal ~ ~0.5 ~ 0.8 0.2 0.8 0.3 25
title @s actionbar {text:"Dimensional Rift!",color:"#8B00FF",bold:true}
playsound minecraft:block.end_portal.spawn player @a[distance=..16] ~ ~ ~ 0.3 2
playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 0.5 0.5
