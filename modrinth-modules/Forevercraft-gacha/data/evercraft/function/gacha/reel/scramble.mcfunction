# Scroll reel right-to-left: shift each slot one position left, new random enters from right
# Creates conveyor-belt CSGO-style effect — items flow right across the display
# Runs as @s = player, at @s

# === SHIFT ITEMS LEFT (RS1←RS2, RS2←RS3, ... RS6←RS7) ===
# Process left-to-right so we always read from unmodified slots
data modify entity @e[tag=ec.RS1,limit=1,sort=nearest,distance=..20] item set from entity @e[tag=ec.RS2,limit=1,sort=nearest,distance=..20] item
data modify entity @e[tag=ec.RS2,limit=1,sort=nearest,distance=..20] item set from entity @e[tag=ec.RS3,limit=1,sort=nearest,distance=..20] item
data modify entity @e[tag=ec.RS3,limit=1,sort=nearest,distance=..20] item set from entity @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] item
data modify entity @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] item set from entity @e[tag=ec.RS5,limit=1,sort=nearest,distance=..20] item
data modify entity @e[tag=ec.RS5,limit=1,sort=nearest,distance=..20] item set from entity @e[tag=ec.RS6,limit=1,sort=nearest,distance=..20] item
data modify entity @e[tag=ec.RS6,limit=1,sort=nearest,distance=..20] item set from entity @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] item

# === NEW RANDOM ITEM ENTERS FROM LEFT (RS7) ===
execute store result score #reel_rng ec.temp run random value 1..16
execute if score #reel_rng ec.temp matches 1 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:emerald",count:1}
execute if score #reel_rng ec.temp matches 2 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:diamond",count:1}
execute if score #reel_rng ec.temp matches 3 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:bread",count:1}
execute if score #reel_rng ec.temp matches 4 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:copper_nugget",count:1}
execute if score #reel_rng ec.temp matches 5 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:prismarine_shard",count:1}
execute if score #reel_rng ec.temp matches 6 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:trial_key",count:1}
execute if score #reel_rng ec.temp matches 7 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}
execute if score #reel_rng ec.temp matches 8 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:prismarine_crystals",count:1}
execute if score #reel_rng ec.temp matches 9 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:gold_nugget",count:1}
execute if score #reel_rng ec.temp matches 10 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:leather",count:1}
execute if score #reel_rng ec.temp matches 11 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:nether_star",count:1}
execute if score #reel_rng ec.temp matches 12 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:lodestone",count:1}
execute if score #reel_rng ec.temp matches 13 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:stick",count:1,components:{"minecraft:item_model":"minecraft:amethyst_cluster"}}
execute if score #reel_rng ec.temp matches 14 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:amethyst_shard",count:1}
execute if score #reel_rng ec.temp matches 15 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:globe_banner_pattern",count:1}
execute if score #reel_rng ec.temp matches 16 as @e[tag=ec.RS7,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:netherite_scrap",count:1}

# Click sound (hat hi-hat for slot machine feel)
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
