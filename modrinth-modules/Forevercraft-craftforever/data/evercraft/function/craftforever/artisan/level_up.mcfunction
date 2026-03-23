# Artisan Rank — Level Up Effects

# Sounds
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.8 1.0
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 0.8

# Particles
execute at @s run particle minecraft:enchant ~ ~1.5 ~ 1 1 1 0.5 50

# Display title with rank name
execute store result storage evercraft:craftforever rank_val int 1 run scoreboard players get @s ec.cf_rank
function evercraft:craftforever/artisan/get_title with storage evercraft:craftforever

# Milestone announcements
execute if score @s ec.cf_rank matches 10 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"Laborer slot unlocked!",color:"yellow"}]
execute if score @s ec.cf_rank matches 20 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"Rare forging unlocked!",color:"aqua"}]
execute if score @s ec.cf_rank matches 30 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"Ornate forging unlocked!",color:"light_purple"}]
execute if score @s ec.cf_rank matches 40 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"Exquisite forging unlocked!",color:"yellow"}]
execute if score @s ec.cf_rank matches 50 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"Mythical forging unlocked! +0.5 DR bonus!",color:"gold"}]
execute if score @s ec.cf_rank matches 60 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"Spirit forging unlocked!",color:"white",bold:true}]

# Rank 50 — Crafter Glowies
execute if score @s ec.cf_rank matches 50 run function evercraft:craftforever/artisan/glowies/check
execute if score @s ec.cf_rank matches 50 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"MASTER CRAFTER! ",color:"gold",bold:true},{text:"Crafter Glowie unlocked!",color:"yellow"}]
execute if score @s ec.cf_rank matches 50 at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.5 0.5 0.3 100
execute if score @s ec.cf_rank matches 50 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# Rank 100 — Eternal Crafter
execute if score @s ec.cf_rank matches 100 run tellraw @s [{text:"[Artisan] ",color:"gold"},{text:"ETERNAL CRAFTER! ",color:"gold",bold:true},{text:"All spirit tool metamorphosis unlocked!",color:"yellow"}]
execute if score @s ec.cf_rank matches 100 at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.5 0.5 0.3 100
execute if score @s ec.cf_rank matches 100 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# Class Affinity bonus at milestone ranks — rewards player's current spirit tool class
# ec.caff_class is already set on @s from the spirit tool tick. Call internal_grant directly.
# Notification only fires once per milestone (rank matches exact value, not recursive)
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 10 run scoreboard players set #delta ec.temp 50000
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 10 run function evercraft:craft_affinity/internal_grant
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 20 run scoreboard players set #delta ec.temp 100000
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 20 run function evercraft:craft_affinity/internal_grant
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 30 run scoreboard players set #delta ec.temp 200000
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 30 run function evercraft:craft_affinity/internal_grant
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 40 run scoreboard players set #delta ec.temp 350000
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 40 run function evercraft:craft_affinity/internal_grant
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 50 run scoreboard players set #delta ec.temp 500000
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 50 run function evercraft:craft_affinity/internal_grant
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 75 run scoreboard players set #delta ec.temp 750000
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 75 run function evercraft:craft_affinity/internal_grant
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 100 run scoreboard players set #delta ec.temp 1000000
execute if score @s ec.caff_class matches 1.. if score @s ec.cf_rank matches 100 run function evercraft:craft_affinity/internal_grant
