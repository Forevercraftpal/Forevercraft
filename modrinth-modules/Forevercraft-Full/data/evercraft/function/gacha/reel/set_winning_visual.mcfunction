# Pre-roll the sub-reward for the current tier and set RS4 to match
# Called at tick 75 (last scramble) so the winning item is already in place before reveal
# Runs as @s = player, at @s
# Stores pre-roll in @s ec.reel_sub — reveal copies this to #reward_roll before granting

# === PRE-ROLL SUB-REWARD BASED ON TIER ===
execute if score @s ec.reel_tier matches 1 store result score @s ec.reel_sub run random value 1..6
execute if score @s ec.reel_tier matches 2 store result score @s ec.reel_sub run random value 1..6
execute if score @s ec.reel_tier matches 3 store result score @s ec.reel_sub run random value 1..6
execute if score @s ec.reel_tier matches 4 store result score @s ec.reel_sub run random value 1..5
execute if score @s ec.reel_tier matches 5 store result score @s ec.reel_sub run random value 1..7
execute if score @s ec.reel_tier matches 6 store result score @s ec.reel_sub run random value 1..5

# === SET RS4 VISUAL TO MATCH ACTUAL REWARD ===
# Common (tier 1): 1=XP, 2=Awakening Stone, 3=Glyph, 4=Diamonds, 5=Crumb of Dreams, 6=Emeralds
execute if score @s ec.reel_tier matches 1 if score @s ec.reel_sub matches 1 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:experience_bottle",count:1}
execute if score @s ec.reel_tier matches 1 if score @s ec.reel_sub matches 2 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:copper_nugget",count:1}
execute if score @s ec.reel_tier matches 1 if score @s ec.reel_sub matches 3 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:globe_banner_pattern",count:1}
execute if score @s ec.reel_tier matches 1 if score @s ec.reel_sub matches 4 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:diamond",count:1}
execute if score @s ec.reel_tier matches 1 if score @s ec.reel_sub matches 5 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:bread",count:1}
execute if score @s ec.reel_tier matches 1 if score @s ec.reel_sub matches 6 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:emerald",count:1}

# Uncommon (tier 2): 1=Awakening Stone, 2=Essentials Satchel, 3=Dungeon Key, 4=Companion Treat, 5=Netherite, 6=Artifact Crate
execute if score @s ec.reel_tier matches 2 if score @s ec.reel_sub matches 1 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:copper_nugget",count:1}
execute if score @s ec.reel_tier matches 2 if score @s ec.reel_sub matches 2 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:leather",count:1}
execute if score @s ec.reel_tier matches 2 if score @s ec.reel_sub matches 3 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:trial_key",count:1}
execute if score @s ec.reel_tier matches 2 if score @s ec.reel_sub matches 4 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:cookie",count:1}
execute if score @s ec.reel_tier matches 2 if score @s ec.reel_sub matches 5 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:netherite_scrap",count:1}
execute if score @s ec.reel_tier matches 2 if score @s ec.reel_sub matches 6 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}

# Rare (tier 3): 1=Artifact Crate, 2=Tree Token, 3=Tree Shard, 4=Potion of Dreams, 5=Coin of Lucidity, 6=Companion Crate
execute if score @s ec.reel_tier matches 3 if score @s ec.reel_sub matches 1 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}
execute if score @s ec.reel_tier matches 3 if score @s ec.reel_sub matches 2 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:prismarine_crystals",count:1}
execute if score @s ec.reel_tier matches 3 if score @s ec.reel_sub matches 3 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:prismarine_shard",count:1}
execute if score @s ec.reel_tier matches 3 if score @s ec.reel_sub matches 4 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:potion",count:1}
execute if score @s ec.reel_tier matches 3 if score @s ec.reel_sub matches 5 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:gold_nugget",count:1}
execute if score @s ec.reel_tier matches 3 if score @s ec.reel_sub matches 6 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}

# Ornate (tier 4): 1=Artifact Crate, 2=Seed of Forgetting, 3=Particle, 4=Title, 5=Companion Crate
execute if score @s ec.reel_tier matches 4 if score @s ec.reel_sub matches 1 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}
execute if score @s ec.reel_tier matches 4 if score @s ec.reel_sub matches 2 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:torchflower_seeds",count:1}
execute if score @s ec.reel_tier matches 4 if score @s ec.reel_sub matches 3 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:firework_star",count:1}
execute if score @s ec.reel_tier matches 4 if score @s ec.reel_sub matches 4 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:name_tag",count:1}
execute if score @s ec.reel_tier matches 4 if score @s ec.reel_sub matches 5 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}

# Exquisite (tier 5): 1=Artifact Crate, 2=Companion Crate, 3=Lore Piece, 4=Netherite Block, 5=Hearthstone, 6=Guidestone, 7=Glyphforge
execute if score @s ec.reel_tier matches 5 if score @s ec.reel_sub matches 1 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}
execute if score @s ec.reel_tier matches 5 if score @s ec.reel_sub matches 2 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}
execute if score @s ec.reel_tier matches 5 if score @s ec.reel_sub matches 3 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:book",count:1}
execute if score @s ec.reel_tier matches 5 if score @s ec.reel_sub matches 4 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:netherite_block",count:1}
execute if score @s ec.reel_tier matches 5 if score @s ec.reel_sub matches 5 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:lodestone",count:1}
execute if score @s ec.reel_tier matches 5 if score @s ec.reel_sub matches 6 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:lodestone",count:1}
execute if score @s ec.reel_tier matches 5 if score @s ec.reel_sub matches 7 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:lodestone",count:1}

# Mythical (tier 6): 1-2=Artifact, 3=Companion, 4=Dreamdust Crystal, 5=Wishing Star
execute if score @s ec.reel_tier matches 6 if score @s ec.reel_sub matches 1..2 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:netherite_sword",count:1}
execute if score @s ec.reel_tier matches 6 if score @s ec.reel_sub matches 3 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:barrel",count:1}
execute if score @s ec.reel_tier matches 6 if score @s ec.reel_sub matches 4 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:stick",count:1,components:{"minecraft:item_model":"minecraft:amethyst_cluster"}}
execute if score @s ec.reel_tier matches 6 if score @s ec.reel_sub matches 5 as @e[tag=ec.RS4,limit=1,sort=nearest,distance=..20] run data modify entity @s item set value {id:"minecraft:nether_star",count:1}

# Tension-release sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.6 1.0
