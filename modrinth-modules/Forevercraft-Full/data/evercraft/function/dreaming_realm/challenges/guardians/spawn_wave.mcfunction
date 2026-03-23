# Dream Guardians — Spawn Wave
# Spawns mobs based on current wave number (ec.dream_wave)
# Context: as @s = dreaming player
# NE Island center: ~14, 302, ~-14 relative to dr.center

# Wave 1: 3 Dream Wisps (small phantoms, Glowing)
execute if score @s ec.dream_wave matches 1 at @e[type=marker,tag=dr.center,limit=1] run summon phantom ~14 305 ~-14 {size:0,Glowing:1b,CustomName:{text:"Dream Wisp",color:"#9B59B6"},Tags:["ec.dream_mob"]}
execute if score @s ec.dream_wave matches 1 at @e[type=marker,tag=dr.center,limit=1] run summon phantom ~12 306 ~-16 {size:0,Glowing:1b,CustomName:{text:"Dream Wisp",color:"#9B59B6"},Tags:["ec.dream_mob"]}
execute if score @s ec.dream_wave matches 1 at @e[type=marker,tag=dr.center,limit=1] run summon phantom ~16 305 ~-12 {size:0,Glowing:1b,CustomName:{text:"Dream Wisp",color:"#9B59B6"},Tags:["ec.dream_mob"]}

# Wave 2: 4 Dream Wisps + 1 Dream Shade (enderman)
execute if score @s ec.dream_wave matches 2 at @e[type=marker,tag=dr.center,limit=1] run summon phantom ~13 305 ~-13 {size:0,Glowing:1b,CustomName:{text:"Dream Wisp",color:"#9B59B6"},Tags:["ec.dream_mob"]}
execute if score @s ec.dream_wave matches 2 at @e[type=marker,tag=dr.center,limit=1] run summon phantom ~15 306 ~-15 {size:0,Glowing:1b,CustomName:{text:"Dream Wisp",color:"#9B59B6"},Tags:["ec.dream_mob"]}
execute if score @s ec.dream_wave matches 2 at @e[type=marker,tag=dr.center,limit=1] run summon phantom ~11 305 ~-17 {size:0,Glowing:1b,CustomName:{text:"Dream Wisp",color:"#9B59B6"},Tags:["ec.dream_mob"]}
execute if score @s ec.dream_wave matches 2 at @e[type=marker,tag=dr.center,limit=1] run summon phantom ~17 305 ~-11 {size:0,Glowing:1b,CustomName:{text:"Dream Wisp",color:"#9B59B6"},Tags:["ec.dream_mob"]}
execute if score @s ec.dream_wave matches 2 at @e[type=marker,tag=dr.center,limit=1] run summon enderman ~14 302 ~-14 {CustomName:{text:"Dream Shade",color:"#8E44AD"},Tags:["ec.dream_mob"]}

# Wave 3: Dream Warden (wither skeleton, 200 HP, enhanced)
execute if score @s ec.dream_wave matches 3 at @e[type=marker,tag=dr.center,limit=1] run summon wither_skeleton ~14 302 ~-14 {CustomName:{text:"Dream Warden",color:"#E74C3C","bold":true},Tags:["ec.dream_mob"],equipment:{mainhand:{id:"minecraft:netherite_sword"}},attributes:[{id:"max_health",base:200.0d},{id:"attack_damage",base:12.0d},{id:"movement_speed",base:0.3d},{id:"knockback_resistance",base:0.8d}],Glowing:1b}

# Sync Dream Warden health to max_health (two-step pattern — lesson 53)
execute if score @s ec.dream_wave matches 3 as @e[type=wither_skeleton,tag=ec.dream_mob,limit=1,sort=nearest] store result storage evercraft:dreaming temp.max_hp float 1 run attribute @s max_health get
execute if score @s ec.dream_wave matches 3 as @e[type=wither_skeleton,tag=ec.dream_mob,limit=1,sort=nearest] run data modify entity @s Health set from storage evercraft:dreaming temp.max_hp

# Announce wave
execute if score @s ec.dream_wave matches 1 run tellraw @s [{text:""},{"text":"  ","color":"gray"},{"text":"Wave 1","color":"#E74C3C","bold":true},{"text":" — Dream Wisps emerge!","color":"#D4A574"}]
execute if score @s ec.dream_wave matches 2 run tellraw @s [{text:""},{"text":"  ","color":"gray"},{"text":"Wave 2","color":"#E74C3C","bold":true},{"text":" — A Dream Shade joins the wisps!","color":"#D4A574"}]
execute if score @s ec.dream_wave matches 3 run tellraw @s [{text:""},{"text":"  ","color":"gray"},{"text":"Wave 3","color":"#E74C3C","bold":true},{"text":" — The Dream Warden awakens!","color":"#D4A574"}]

playsound entity.evoker.prepare_attack master @s ~ ~ ~ 1.0 0.8
