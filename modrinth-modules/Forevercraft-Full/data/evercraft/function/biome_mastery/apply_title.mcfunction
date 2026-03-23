# Biome Mastery — Apply biome-specific title at Level 5 (Master)
# @s = player, ec.biome_id = mastered biome
# Announced to all players on the server
execute if score @s ec.biome_id matches 0 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Meadow Keeper",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 1 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Forestborn",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 2 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Bloomkeeper",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 3 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Shadowstrider",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 4 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Frostpine Warden",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 5 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Peakwalker",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 6 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Canopy Runner",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 7 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Dune Sovereign",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 8 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Sunwatcher",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 9 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Tidecaller",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 10 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Riverguard",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 11 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Bogstrider",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 12 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Sporekeeper",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 13 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Frostbound",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 14 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Mesa Walker",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 15 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Verdant Dweller",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 16 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Stalactite Sage",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 17 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Void Warden",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 18 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Ashborn",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 19 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Crimson Stalker",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 20 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Warped Walker",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 21 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Deltastrider",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 22 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Soulbound",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 23 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Ender Warden",color:"gold",bold:true}]
execute if score @s ec.biome_id matches 24 run tellraw @a [{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Stormchaser",color:"gold",bold:true}]

# ============================================================================
# Unlock title in bitfield (bm.titles) — bit N = 2^N for biome N
# ============================================================================
execute if score @s ec.biome_id matches 0 run scoreboard players add @s bm.titles 1
execute if score @s ec.biome_id matches 1 run scoreboard players add @s bm.titles 2
execute if score @s ec.biome_id matches 2 run scoreboard players add @s bm.titles 4
execute if score @s ec.biome_id matches 3 run scoreboard players add @s bm.titles 8
execute if score @s ec.biome_id matches 4 run scoreboard players add @s bm.titles 16
execute if score @s ec.biome_id matches 5 run scoreboard players add @s bm.titles 32
execute if score @s ec.biome_id matches 6 run scoreboard players add @s bm.titles 64
execute if score @s ec.biome_id matches 7 run scoreboard players add @s bm.titles 128
execute if score @s ec.biome_id matches 8 run scoreboard players add @s bm.titles 256
execute if score @s ec.biome_id matches 9 run scoreboard players add @s bm.titles 512
execute if score @s ec.biome_id matches 10 run scoreboard players add @s bm.titles 1024
execute if score @s ec.biome_id matches 11 run scoreboard players add @s bm.titles 2048
execute if score @s ec.biome_id matches 12 run scoreboard players add @s bm.titles 4096
execute if score @s ec.biome_id matches 13 run scoreboard players add @s bm.titles 8192
execute if score @s ec.biome_id matches 14 run scoreboard players add @s bm.titles 16384
execute if score @s ec.biome_id matches 15 run scoreboard players add @s bm.titles 32768
execute if score @s ec.biome_id matches 16 run scoreboard players add @s bm.titles 65536
execute if score @s ec.biome_id matches 17 run scoreboard players add @s bm.titles 131072
execute if score @s ec.biome_id matches 18 run scoreboard players add @s bm.titles 262144
execute if score @s ec.biome_id matches 19 run scoreboard players add @s bm.titles 524288
execute if score @s ec.biome_id matches 20 run scoreboard players add @s bm.titles 1048576
execute if score @s ec.biome_id matches 21 run scoreboard players add @s bm.titles 2097152
execute if score @s ec.biome_id matches 22 run scoreboard players add @s bm.titles 4194304
execute if score @s ec.biome_id matches 23 run scoreboard players add @s bm.titles 8388608
execute if score @s ec.biome_id matches 24 run scoreboard players add @s bm.titles 16777216
