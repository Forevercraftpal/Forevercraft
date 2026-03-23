# Message in a Bottle — Display caught message
tellraw @s {text:""}
tellraw @s [{text:"=== ",color:"gray"},{text:"Message in a Bottle!",color:"gold",bold:true},{text:" ===",color:"gray"}]

# Day info
tellraw @s [{text:"  Found from Day ",color:"gray"},{score:{name:"#bottle_day",objective:"ec.temp"},color:"white"}]

# Biome context
execute if score #bottle_biome ec.temp matches 0 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Plains",color:"green"}]
execute if score #bottle_biome ec.temp matches 1 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Forest",color:"green"}]
execute if score #bottle_biome ec.temp matches 2 run tellraw @s [{text:"  Cast from a ",color:"gray"},{text:"Flower Forest",color:"green"}]
execute if score #bottle_biome ec.temp matches 3 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Dark Forest",color:"green"}]
execute if score #bottle_biome ec.temp matches 4 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Taiga",color:"green"}]
execute if score #bottle_biome ec.temp matches 5 run tellraw @s [{text:"  Cast from a ",color:"gray"},{text:"Mountain",color:"green"}]
execute if score #bottle_biome ec.temp matches 6 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Jungle",color:"green"}]
execute if score #bottle_biome ec.temp matches 7 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Desert",color:"green"}]
execute if score #bottle_biome ec.temp matches 8 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Savanna",color:"green"}]
execute if score #bottle_biome ec.temp matches 9 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Ocean",color:"green"}]
execute if score #bottle_biome ec.temp matches 10 run tellraw @s [{text:"  Cast from a ",color:"gray"},{text:"River",color:"green"}]
execute if score #bottle_biome ec.temp matches 11 run tellraw @s [{text:"  Cast from a ",color:"gray"},{text:"Swamp",color:"green"}]
execute if score #bottle_biome ec.temp matches 12 run tellraw @s [{text:"  Cast from a ",color:"gray"},{text:"Mushroom Island",color:"green"}]
execute if score #bottle_biome ec.temp matches 13 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Ice Biome",color:"green"}]
execute if score #bottle_biome ec.temp matches 14 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Badlands",color:"green"}]
execute if score #bottle_biome ec.temp matches 15 run tellraw @s [{text:"  Cast from ",color:"gray"},{text:"Lush Caves",color:"green"}]
execute if score #bottle_biome ec.temp matches 16 run tellraw @s [{text:"  Cast from ",color:"gray"},{text:"Dripstone Caves",color:"green"}]
execute if score #bottle_biome ec.temp matches 17 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Deep Dark",color:"green"}]
execute if score #bottle_biome ec.temp matches 18 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Nether Wastes",color:"green"}]
execute if score #bottle_biome ec.temp matches 19 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Crimson Forest",color:"green"}]
execute if score #bottle_biome ec.temp matches 20 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Warped Forest",color:"green"}]
execute if score #bottle_biome ec.temp matches 21 run tellraw @s [{text:"  Cast from the ",color:"gray"},{text:"Basalt Deltas",color:"green"}]
execute if score #bottle_biome ec.temp matches 22 run tellraw @s [{text:"  Cast from ",color:"gray"},{text:"Soul Sand Valley",color:"green"}]
execute if score #bottle_biome ec.temp matches 23 run tellraw @s [{text:"  Cast from ",color:"gray"},{text:"The End",color:"green"}]
execute if score #bottle_biome ec.temp matches 24 run tellraw @s [{text:"  Cast from ",color:"gray"},{text:"Windswept Hills",color:"green"}]
execute if score #bottle_biome ec.temp matches -1 run tellraw @s [{text:"  Cast from ",color:"gray"},{text:"Unknown Lands",color:"green"}]

tellraw @s {text:""}

# === New format: custom text + author ===
execute if data storage evercraft:bottles caught.text run tellraw @s [{text:"  \"",color:"#E8C99B",italic:true},{nbt:"caught.text",storage:"evercraft:bottles",interpret:true,color:"#E8C99B",italic:true},{text:"\"",color:"#E8C99B",italic:true}]
execute if data storage evercraft:bottles caught.author run tellraw @s [{text:"    — ",color:"gray"},{nbt:"caught.author",storage:"evercraft:bottles",color:"yellow"}]

# === Old format: hardcoded message lookup (backward compat) ===
execute if score #bottle_msg ec.temp matches 2 run tellraw @s [{text:"  \"Good luck on your adventures!\"",color:"#E8C99B",italic:true}]
execute if score #bottle_msg ec.temp matches 3 run tellraw @s [{text:"  \"I found treasure here!\"",color:"#E8C99B",italic:true}]
execute if score #bottle_msg ec.temp matches 4 run tellraw @s [{text:"  \"Watch out for patrons at night!\"",color:"#E8C99B",italic:true}]
execute if score #bottle_msg ec.temp matches 5 run tellraw @s [{text:"  \"The fishing is great today!\"",color:"#E8C99B",italic:true}]
execute if score #bottle_msg ec.temp matches 6 run tellraw @s [{text:"  \"May your dreams guide you.\"",color:"#E8C99B",italic:true}]
execute if score #bottle_msg ec.temp matches 7 run tellraw @s [{text:"  \"The air feels lucky today...\"",color:"#E8C99B",italic:true}]
execute if score #bottle_msg ec.temp matches 8 run tellraw @s [{text:"  \"Never dig straight down!\"",color:"#E8C99B",italic:true}]
execute if score #bottle_msg ec.temp matches 9 run tellraw @s [{text:"  \"Somewhere out there, adventure awaits.\"",color:"#E8C99B",italic:true}]

tellraw @s {text:""}
tellraw @s [{text:"===========================",color:"gray"}]

# Sound effects
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.8
playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.7 1.5
