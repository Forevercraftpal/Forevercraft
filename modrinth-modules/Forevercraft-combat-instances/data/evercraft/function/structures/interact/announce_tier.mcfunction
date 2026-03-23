# Announce the structure tier to the player — only called when loot actually spawns
# Run as player, cf.struct_id and cf.tier already set, cf.base_tier available

# Calculate if we upgraded (for bonus message)
scoreboard players operation #tier_diff cf.temp = @s cf.tier
scoreboard players operation #tier_diff cf.temp -= @s cf.base_tier

# --- ORNATE BASE (struct_id 1, 2, 6) - Ancient City, End City, Bastion ---
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 1 run tellraw @s [{text:"Ancient City cache... ",color:"dark_aqua",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 2 run tellraw @s [{text:"Ancient City cache... ",color:"dark_aqua",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 3 run tellraw @s [{text:"Ancient City cache... ",color:"dark_aqua",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 4 run tellraw @s [{text:"Ancient City cache... ",color:"dark_aqua",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 5 run tellraw @s [{text:"Ancient City cache... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 6 run tellraw @s [{text:"Ancient City cache... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 1 run tellraw @s [{text:"End City treasure... ",color:"dark_purple",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 2 run tellraw @s [{text:"End City treasure... ",color:"dark_purple",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 3 run tellraw @s [{text:"End City treasure... ",color:"dark_purple",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 4 run tellraw @s [{text:"End City treasure... ",color:"dark_purple",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 5 run tellraw @s [{text:"End City treasure... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 6 run tellraw @s [{text:"End City treasure... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 1 run tellraw @s [{text:"Bastion hoard... ",color:"red",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 2 run tellraw @s [{text:"Bastion hoard... ",color:"red",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 3 run tellraw @s [{text:"Bastion hoard... ",color:"red",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 4 run tellraw @s [{text:"Bastion hoard... ",color:"red",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 5 run tellraw @s [{text:"Bastion hoard... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 6 run tellraw @s [{text:"Bastion hoard... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

# --- RARE BASE (struct_id 3, 4, 5, 7, 8) - Trial Chambers, Stronghold, Mansion, Fortress, Monument ---
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 1 run tellraw @s [{text:"Trial reward... ",color:"blue",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 2 run tellraw @s [{text:"Trial reward... ",color:"blue",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 3 run tellraw @s [{text:"Trial reward... ",color:"blue",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 4 run tellraw @s [{text:"Trial reward... ",color:"blue",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 5 run tellraw @s [{text:"Trial reward... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 6 run tellraw @s [{text:"Trial reward... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 1 run tellraw @s [{text:"Stronghold cache... ",color:"dark_green",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 2 run tellraw @s [{text:"Stronghold cache... ",color:"dark_green",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 3 run tellraw @s [{text:"Stronghold cache... ",color:"dark_green",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 4 run tellraw @s [{text:"Stronghold cache... ",color:"dark_green",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 5 run tellraw @s [{text:"Stronghold cache... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 6 run tellraw @s [{text:"Stronghold cache... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 1 run tellraw @s [{text:"Mansion treasure... ",color:"dark_gray",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 2 run tellraw @s [{text:"Mansion treasure... ",color:"dark_gray",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 3 run tellraw @s [{text:"Mansion treasure... ",color:"dark_gray",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 4 run tellraw @s [{text:"Mansion treasure... ",color:"dark_gray",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 5 run tellraw @s [{text:"Mansion treasure... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 6 run tellraw @s [{text:"Mansion treasure... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 1 run tellraw @s [{text:"Fortress spoils... ",color:"dark_red",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 2 run tellraw @s [{text:"Fortress spoils... ",color:"dark_red",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 3 run tellraw @s [{text:"Fortress spoils... ",color:"dark_red",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 4 run tellraw @s [{text:"Fortress spoils... ",color:"dark_red",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 5 run tellraw @s [{text:"Fortress spoils... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 6 run tellraw @s [{text:"Fortress spoils... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 1 run tellraw @s [{text:"Monument treasure... ",color:"dark_aqua",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 2 run tellraw @s [{text:"Monument treasure... ",color:"dark_aqua",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 3 run tellraw @s [{text:"Monument treasure... ",color:"dark_aqua",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 4 run tellraw @s [{text:"Monument treasure... ",color:"dark_aqua",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 5 run tellraw @s [{text:"Monument treasure... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 6 run tellraw @s [{text:"Monument treasure... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

# --- UNCOMMON BASE (struct_id 9, 10, 17, 19) - Desert Pyramid, Jungle Pyramid, Mineshaft, Dungeon ---
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 1 run tellraw @s [{text:"Desert tomb plunder... ",color:"yellow",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 2 run tellraw @s [{text:"Desert tomb plunder... ",color:"yellow",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 3 run tellraw @s [{text:"Desert tomb plunder... ",color:"yellow",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 4 run tellraw @s [{text:"Desert tomb plunder... ",color:"yellow",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 5 run tellraw @s [{text:"Desert tomb plunder... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 6 run tellraw @s [{text:"Desert tomb plunder... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 1 run tellraw @s [{text:"Jungle temple secrets... ",color:"dark_green",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 2 run tellraw @s [{text:"Jungle temple secrets... ",color:"dark_green",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 3 run tellraw @s [{text:"Jungle temple secrets... ",color:"dark_green",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 4 run tellraw @s [{text:"Jungle temple secrets... ",color:"dark_green",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 5 run tellraw @s [{text:"Jungle temple secrets... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 6 run tellraw @s [{text:"Jungle temple secrets... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 1 run tellraw @s [{text:"Mineshaft supplies... ",color:"gray",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 2 run tellraw @s [{text:"Mineshaft supplies... ",color:"gray",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 3 run tellraw @s [{text:"Mineshaft supplies... ",color:"gray",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 4 run tellraw @s [{text:"Mineshaft supplies... ",color:"gray",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 5 run tellraw @s [{text:"Mineshaft supplies... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 6 run tellraw @s [{text:"Mineshaft supplies... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 1 run tellraw @s [{text:"Dungeon spoils... ",color:"dark_gray",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 2 run tellraw @s [{text:"Dungeon spoils... ",color:"dark_gray",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 3 run tellraw @s [{text:"Dungeon spoils... ",color:"dark_gray",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 4 run tellraw @s [{text:"Dungeon spoils... ",color:"dark_gray",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 5 run tellraw @s [{text:"Dungeon spoils... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 6 run tellraw @s [{text:"Dungeon spoils... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

# --- COMMON BASE (struct_id 11-16, 18) - Shipwreck, Ocean Ruins, Igloo, Outpost, Trail Ruins, Village, Ruined Portal ---
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 1 run tellraw @s [{text:"Shipwreck salvage... ",color:"blue",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 2 run tellraw @s [{text:"Shipwreck salvage... ",color:"blue",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 3 run tellraw @s [{text:"Shipwreck salvage... ",color:"blue",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 4 run tellraw @s [{text:"Shipwreck salvage... ",color:"blue",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 5 run tellraw @s [{text:"Shipwreck salvage... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 6 run tellraw @s [{text:"Shipwreck salvage... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 1 run tellraw @s [{text:"Ocean ruins relics... ",color:"aqua",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 2 run tellraw @s [{text:"Ocean ruins relics... ",color:"aqua",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 3 run tellraw @s [{text:"Ocean ruins relics... ",color:"aqua",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 4 run tellraw @s [{text:"Ocean ruins relics... ",color:"aqua",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 5 run tellraw @s [{text:"Ocean ruins relics... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 6 run tellraw @s [{text:"Ocean ruins relics... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 1 run tellraw @s [{text:"Igloo stash... ",color:"white",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 2 run tellraw @s [{text:"Igloo stash... ",color:"white",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 3 run tellraw @s [{text:"Igloo stash... ",color:"white",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 4 run tellraw @s [{text:"Igloo stash... ",color:"white",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 5 run tellraw @s [{text:"Igloo stash... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 6 run tellraw @s [{text:"Igloo stash... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 1 run tellraw @s [{text:"Outpost supplies... ",color:"dark_gray",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 2 run tellraw @s [{text:"Outpost supplies... ",color:"dark_gray",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 3 run tellraw @s [{text:"Outpost supplies... ",color:"dark_gray",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 4 run tellraw @s [{text:"Outpost supplies... ",color:"dark_gray",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 5 run tellraw @s [{text:"Outpost supplies... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 6 run tellraw @s [{text:"Outpost supplies... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 1 run tellraw @s [{text:"Trail ruins artifacts... ",color:"yellow",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 2 run tellraw @s [{text:"Trail ruins artifacts... ",color:"yellow",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 3 run tellraw @s [{text:"Trail ruins artifacts... ",color:"yellow",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 4 run tellraw @s [{text:"Trail ruins artifacts... ",color:"yellow",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 5 run tellraw @s [{text:"Trail ruins artifacts... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 6 run tellraw @s [{text:"Trail ruins artifacts... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 1 run tellraw @s [{text:"Village goods... ",color:"green",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 2 run tellraw @s [{text:"Village goods... ",color:"green",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 3 run tellraw @s [{text:"Village goods... ",color:"green",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 4 run tellraw @s [{text:"Village goods... ",color:"green",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 5 run tellraw @s [{text:"Village goods... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 6 run tellraw @s [{text:"Village goods... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 1 run tellraw @s [{text:"Portal remnants... ",color:"dark_purple",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 2 run tellraw @s [{text:"Portal remnants... ",color:"dark_purple",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 3 run tellraw @s [{text:"Portal remnants... ",color:"dark_purple",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 4 run tellraw @s [{text:"Portal remnants... ",color:"dark_purple",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 5 run tellraw @s [{text:"Portal remnants... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 6 run tellraw @s [{text:"Portal remnants... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

# --- VAULT (struct_id 21=Normal, 22=Ominous) ---
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 1 run tellraw @s [{text:"Vault reward... ",color:"blue",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 2 run tellraw @s [{text:"Vault reward... ",color:"blue",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 3 run tellraw @s [{text:"Vault reward... ",color:"blue",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 4 run tellraw @s [{text:"Vault reward... ",color:"blue",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 5 run tellraw @s [{text:"Vault reward... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 6 run tellraw @s [{text:"Vault reward... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 1 run tellraw @s [{text:"Ominous vault reward... ",color:"dark_purple",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 2 run tellraw @s [{text:"Ominous vault reward... ",color:"dark_purple",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 3 run tellraw @s [{text:"Ominous vault reward... ",color:"dark_purple",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 4 run tellraw @s [{text:"Ominous vault reward... ",color:"dark_purple",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 5 run tellraw @s [{text:"Ominous vault reward... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 6 run tellraw @s [{text:"Ominous vault reward... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

# --- UNKNOWN/CUSTOM (struct_id 20) ---
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 1 run tellraw @s [{text:"Ancient cache discovered... ",color:"gray",italic:true},{text:"[Common]",color:"white"}]
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 2 run tellraw @s [{text:"Ancient cache discovered... ",color:"gray",italic:true},{text:"[Uncommon]",color:"blue"}]
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 3 run tellraw @s [{text:"Ancient cache discovered... ",color:"gray",italic:true},{text:"[Rare]",color:"aqua"}]
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 4 run tellraw @s [{text:"Ancient cache discovered... ",color:"gray",italic:true},{text:"[Ornate]",color:"dark_purple"}]
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 5 run tellraw @s [{text:"Ancient cache discovered... ",color:"light_purple",italic:true},{text:"[Exquisite]",color:"light_purple",bold:true}]
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 6 run tellraw @s [{text:"Ancient cache discovered... ",color:"gold",italic:true},{text:"[MYTHICAL]",color:"gold",bold:true}]

# ============================================================================
# CONSOLIDATED BONUS LINE — combines bonus loot + dream upgrade into one message
# #has_bonus cf.temp = 1 if bonus loot was added (set by spawn_loot_here)
# #has_dream cf.temp = 1 if Dreams upgraded the tier roll
# ============================================================================
scoreboard players set #has_dream cf.temp 0
execute if score #tier_diff cf.temp matches 1.. if score @s cf.luck matches 70.. run scoreboard players set #has_dream cf.temp 1

# Both bonus loot AND dream upgrade
execute if score #has_bonus cf.temp matches 1 if score #has_dream cf.temp matches 1 run tellraw @s [{text:"  ✦ ",color:"gold"},{text:"Someone left extra supplies... and your dreams guided you to a larger fortune!",color:"yellow",italic:true},{text:" ✦",color:"gold"}]

# Bonus loot only (no dream upgrade)
execute if score #has_bonus cf.temp matches 1 if score #has_dream cf.temp matches 0 run tellraw @s [{text:"  ✧ ",color:"light_purple"},{text:"Someone left extra supplies!",color:"yellow",italic:true},{text:" ✧",color:"light_purple"}]

# Dream upgrade only (no bonus loot — unlikely but handled)
execute if score #has_bonus cf.temp matches 0 if score #has_dream cf.temp matches 1 run tellraw @s [{text:"  ✧ ",color:"dark_purple"},{text:"Your dreams guided you to better fortune!",color:"dark_purple",italic:true},{text:" ✧",color:"dark_purple"}]

# Sound effects based on final tier
execute at @s if score @s cf.tier matches 1..2 run playsound minecraft:block.chest.open master @s ~ ~ ~ 0.8 1.0
execute at @s if score @s cf.tier matches 3..4 run playsound minecraft:block.chest.open master @s ~ ~ ~ 0.8 0.8
execute at @s if score @s cf.tier matches 3..4 run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.5 1.2
execute at @s if score @s cf.tier matches 5 run playsound minecraft:block.chest.open master @s ~ ~ ~ 0.8 0.6
execute at @s if score @s cf.tier matches 5 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
execute at @s if score @s cf.tier matches 6 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1.0
execute at @s if score @s cf.tier matches 6 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.5
