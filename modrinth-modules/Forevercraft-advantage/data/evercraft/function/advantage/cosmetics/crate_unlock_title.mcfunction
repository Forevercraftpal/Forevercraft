# Unlock a crate title — @s adv.temp = 19-36, convert to title ID 1-18
# Uses safe bitfield set

# Convert 20-37 to 1-18
scoreboard players remove @s adv.temp 19

# Save roll result
scoreboard players operation #cc_roll adv.temp = @s adv.temp

# Get power-of-2 for this title ID (stored in #cc_pow)
scoreboard players set #cc_pow adv.temp 0
execute if score @s adv.temp matches 1 run scoreboard players set #cc_pow adv.temp 1
execute if score @s adv.temp matches 2 run scoreboard players set #cc_pow adv.temp 2
execute if score @s adv.temp matches 3 run scoreboard players set #cc_pow adv.temp 4
execute if score @s adv.temp matches 4 run scoreboard players set #cc_pow adv.temp 8
execute if score @s adv.temp matches 5 run scoreboard players set #cc_pow adv.temp 16
execute if score @s adv.temp matches 6 run scoreboard players set #cc_pow adv.temp 32
execute if score @s adv.temp matches 7 run scoreboard players set #cc_pow adv.temp 64
execute if score @s adv.temp matches 8 run scoreboard players set #cc_pow adv.temp 128
execute if score @s adv.temp matches 9 run scoreboard players set #cc_pow adv.temp 256
execute if score @s adv.temp matches 10 run scoreboard players set #cc_pow adv.temp 512
execute if score @s adv.temp matches 11 run scoreboard players set #cc_pow adv.temp 1024
execute if score @s adv.temp matches 12 run scoreboard players set #cc_pow adv.temp 2048
execute if score @s adv.temp matches 13 run scoreboard players set #cc_pow adv.temp 4096
execute if score @s adv.temp matches 14 run scoreboard players set #cc_pow adv.temp 8192
execute if score @s adv.temp matches 15 run scoreboard players set #cc_pow adv.temp 16384
execute if score @s adv.temp matches 16 run scoreboard players set #cc_pow adv.temp 32768
execute if score @s adv.temp matches 17 run scoreboard players set #cc_pow adv.temp 65536
execute if score @s adv.temp matches 18 run scoreboard players set #cc_pow adv.temp 131072

# Check if bit already set: (cc_titles / pow) % 2
scoreboard players operation #cc_check adv.temp = @s adv.cc_titles
scoreboard players operation #cc_check adv.temp /= #cc_pow adv.temp
scoreboard players operation #cc_check adv.temp %= #2 adv.temp

# Only add if not already set
execute if score #cc_check adv.temp matches 0 run scoreboard players operation @s adv.cc_titles += #cc_pow adv.temp

# Check if duplicate — give Tree Shard as compensation
execute if score #cc_check adv.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Duplicate! ","color":"gray"},{text:"Tree Shard","color":"aqua"},{text:" received instead.","color":"gray"}]
execute if score #cc_check adv.temp matches 1 run give @s minecraft:prismarine_shard[custom_name={"text":"Tree Shard","color":"aqua","italic":false},custom_data={tree_shard:1b},enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"Splintered from the deepest roots of the","color":"gray","italic":true},{"text":"Advantage Tree, it pulses with distilled wisdom.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Grants 50 XP levels","color":"aqua","italic":false}]] 1
execute if score #cc_check adv.temp matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute if score #cc_check adv.temp matches 1 run return 0

# Announce new unlock
execute if score @s adv.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Dreamwalker",color:"light_purple",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 2 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stargazer",color:"blue",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 3 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"The Ancient",color:"dark_green",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 4 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Moonblessed",color:"aqua",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 5 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Nightborn",color:"dark_gray",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 6 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Sunforged",color:"gold",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 7 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"The Eternal",color:"dark_purple",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 8 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormchaser",color:"yellow",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 9 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Frostbitten",color:"white",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 10 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Flameheart",color:"dark_red",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 11 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Tidecaller",color:"dark_aqua",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 12 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Earthshaker",color:"green",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 13 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Voidtouched",color:"dark_blue",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 14 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Wyrmborn",color:"red",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 15 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"The Undying",color:"dark_gray",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 16 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Spiritbound",color:"aqua",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 17 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Dawnbringer",color:"gold",bold:true},{text:" (Title)",color:"gray"}]
execute if score @s adv.temp matches 18 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"The Forsaken",color:"dark_red",bold:true},{text:" (Title)",color:"gray"}]

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
