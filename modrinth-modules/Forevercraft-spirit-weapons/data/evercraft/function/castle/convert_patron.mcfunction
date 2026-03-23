# Infinite Castle — Convert mob into a Patron
# Run as: the mob to convert

# Roll rarity: Common(50%), Uncommon(30%), Rare(12%), Ornate(5%), Exquisite(2%), Mythical(1%)
execute store result score #ic_patron_tier ec.var run random value 1..100

# Common (1-50): +50% HP, +70% ATK, +15% Speed, +2 Armor
execute if score #ic_patron_tier ec.var matches 1..50 run attribute @s minecraft:max_health modifier add ic_patron_hp 0.50 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 1..50 run attribute @s minecraft:attack_damage modifier add ic_patron_dmg 0.70 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 1..50 run attribute @s minecraft:movement_speed modifier add ic_patron_spd 0.15 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 1..50 run attribute @s minecraft:armor modifier add ic_patron_arm 2.0 add_value

# Uncommon (51-80): +75% HP, +100% ATK, +20% Speed, +4 Armor
execute if score #ic_patron_tier ec.var matches 51..80 run attribute @s minecraft:max_health modifier add ic_patron_hp 0.75 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 51..80 run attribute @s minecraft:attack_damage modifier add ic_patron_dmg 1.00 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 51..80 run attribute @s minecraft:movement_speed modifier add ic_patron_spd 0.20 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 51..80 run attribute @s minecraft:armor modifier add ic_patron_arm 4.0 add_value

# Rare (81-92): +150% HP, +150% ATK, +35% Speed, +6 Armor, +0.3 KB resist
execute if score #ic_patron_tier ec.var matches 81..92 run attribute @s minecraft:max_health modifier add ic_patron_hp 1.50 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 81..92 run attribute @s minecraft:attack_damage modifier add ic_patron_dmg 1.50 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 81..92 run attribute @s minecraft:movement_speed modifier add ic_patron_spd 0.35 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 81..92 run attribute @s minecraft:armor modifier add ic_patron_arm 6.0 add_value
execute if score #ic_patron_tier ec.var matches 81..92 run attribute @s minecraft:knockback_resistance modifier add ic_patron_kr 0.30 add_value

# Ornate (93-97): +250% HP, +200% ATK, +40% Speed, +8 Armor, +0.5 KB resist
execute if score #ic_patron_tier ec.var matches 93..97 run attribute @s minecraft:max_health modifier add ic_patron_hp 2.50 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 93..97 run attribute @s minecraft:attack_damage modifier add ic_patron_dmg 2.00 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 93..97 run attribute @s minecraft:movement_speed modifier add ic_patron_spd 0.40 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 93..97 run attribute @s minecraft:armor modifier add ic_patron_arm 8.0 add_value
execute if score #ic_patron_tier ec.var matches 93..97 run attribute @s minecraft:knockback_resistance modifier add ic_patron_kr 0.50 add_value

# Exquisite (98-99): +400% HP, +300% ATK, +50% Speed, +12 Armor, +0.7 KB resist
execute if score #ic_patron_tier ec.var matches 98..99 run attribute @s minecraft:max_health modifier add ic_patron_hp 4.00 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 98..99 run attribute @s minecraft:attack_damage modifier add ic_patron_dmg 3.00 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 98..99 run attribute @s minecraft:movement_speed modifier add ic_patron_spd 0.50 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 98..99 run attribute @s minecraft:armor modifier add ic_patron_arm 12.0 add_value
execute if score #ic_patron_tier ec.var matches 98..99 run attribute @s minecraft:knockback_resistance modifier add ic_patron_kr 0.70 add_value

# Mythical (100): +600% HP, +400% ATK, +60% Speed, +16 Armor, +0.9 KB resist
execute if score #ic_patron_tier ec.var matches 100 run attribute @s minecraft:max_health modifier add ic_patron_hp 6.00 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 100 run attribute @s minecraft:attack_damage modifier add ic_patron_dmg 4.00 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 100 run attribute @s minecraft:movement_speed modifier add ic_patron_spd 0.60 add_multiplied_base
execute if score #ic_patron_tier ec.var matches 100 run attribute @s minecraft:armor modifier add ic_patron_arm 16.0 add_value
execute if score #ic_patron_tier ec.var matches 100 run attribute @s minecraft:knockback_resistance modifier add ic_patron_kr 0.90 add_value

# Sync health to new max
execute store result storage evercraft:castle temp.max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:castle temp.max_hp

# Tag and glowing
tag @s add ic.patron
effect give @s glowing infinite 0 true

# Particles + announce by tier
execute if score #ic_patron_tier ec.var matches 1..50 at @s run particle smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 10
execute if score #ic_patron_tier ec.var matches 1..50 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"✣ ",color:"#AAAAAA"},{text:"A Common Patron appears!",color:"gray"}]
execute if score #ic_patron_tier ec.var matches 51..80 at @s run particle dust{color:[0.3,0.3,1.0],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0.02 10
execute if score #ic_patron_tier ec.var matches 51..80 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"✣ ",color:"#5555FF"},{text:"An Uncommon Patron emerges!",color:"blue"}]
execute if score #ic_patron_tier ec.var matches 81..92 at @s run particle dust{color:[0.3,1.0,1.0],scale:1.2} ~ ~1 ~ 0.3 0.5 0.3 0.02 12
execute if score #ic_patron_tier ec.var matches 81..92 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"✲ ",color:"#55FFFF"},{text:"A Rare Patron materializes!",color:"aqua"}]
execute if score #ic_patron_tier ec.var matches 93..97 at @s run particle dust{color:[0.5,0.0,0.8],scale:1.5} ~ ~1 ~ 0.3 0.5 0.3 0.02 15
execute if score #ic_patron_tier ec.var matches 93..97 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"✲ ",color:"#AA00AA"},{text:"An Ornate Patron rises!",color:"dark_purple"}]
execute if score #ic_patron_tier ec.var matches 98..99 at @s run particle dust{color:[1.0,0.8,0.2],scale:2.0} ~ ~1 ~ 0.3 0.5 0.3 0.02 20
execute if score #ic_patron_tier ec.var matches 98..99 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"★ ",color:"#FFAA00"},{text:"An Exquisite Patron manifests!",color:"gold"}]
execute if score #ic_patron_tier ec.var matches 100 at @s run particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.5 25
execute if score #ic_patron_tier ec.var matches 100 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"★ ",color:"#FF55FF"},{text:"A MYTHICAL Patron descends!",color:"light_purple",bold:true}]
