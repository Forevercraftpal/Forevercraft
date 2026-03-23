# Coaching Tip — Show a helpful tip for low DR players (< 5.0)
# @s = joining player with DR whole part in ec.var (0-4)
# Picks 1 random tip per login

execute store result score #tip ec.temp run random value 1..8

execute if score #tip ec.temp matches 1 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Break blocks in different biomes to discover treasure crates.",color:"gray",italic:true}]
execute if score #tip ec.temp matches 2 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Visit villages to find custom professions and quests.",color:"gray",italic:true}]
execute if score #tip ec.temp matches 3 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Craft a Guidestone for fast travel between locations.",color:"gray",italic:true}]
execute if score #tip ec.temp matches 4 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Feed your companion to build a relationship and boost abilities.",color:"gray",italic:true}]
execute if score #tip ec.temp matches 5 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Complete advantage tree challenges for tokens and XP.",color:"gray",italic:true}]
execute if score #tip ec.temp matches 6 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Fish during rain or at night for better Dream Rate bonuses.",color:"gray",italic:true}]
execute if score #tip ec.temp matches 7 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Look for glowing sparkles — they mark lore discoveries.",color:"gray",italic:true}]
execute if score #tip ec.temp matches 8 run tellraw @s [{text:"  Tip: ",color:"gold",italic:true},{text:"Use the Codex to browse all artifacts you've found.",color:"gray",italic:true}]
