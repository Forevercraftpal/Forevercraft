# Infinite Castle — Convert mob into a Furia
# Run as: the mob to convert

# Roll tier: Minor(60%), Standard(30%), Greater(10%)
execute store result score #ic_furia_tier ec.var run random value 1..100

# Minor Furia (1-60)
execute if score #ic_furia_tier ec.var matches 1..60 run attribute @s minecraft:max_health modifier add ic_furia_hp 0.25 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 1..60 run attribute @s minecraft:attack_damage modifier add ic_furia_dmg 0.30 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 1..60 run attribute @s minecraft:movement_speed modifier add ic_furia_spd 0.10 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 1..60 run attribute @s minecraft:armor modifier add ic_furia_arm 1.0 add_value

# Standard Furia (61-90)
execute if score #ic_furia_tier ec.var matches 61..90 run attribute @s minecraft:max_health modifier add ic_furia_hp 0.50 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 61..90 run attribute @s minecraft:attack_damage modifier add ic_furia_dmg 0.60 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 61..90 run attribute @s minecraft:movement_speed modifier add ic_furia_spd 0.20 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 61..90 run attribute @s minecraft:armor modifier add ic_furia_arm 3.0 add_value
execute if score #ic_furia_tier ec.var matches 61..90 run attribute @s minecraft:knockback_resistance modifier add ic_furia_kr 0.15 add_value

# Greater Furia (91-100)
execute if score #ic_furia_tier ec.var matches 91..100 run attribute @s minecraft:max_health modifier add ic_furia_hp 1.00 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 91..100 run attribute @s minecraft:attack_damage modifier add ic_furia_dmg 1.00 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 91..100 run attribute @s minecraft:movement_speed modifier add ic_furia_spd 0.30 add_multiplied_base
execute if score #ic_furia_tier ec.var matches 91..100 run attribute @s minecraft:armor modifier add ic_furia_arm 5.0 add_value
execute if score #ic_furia_tier ec.var matches 91..100 run attribute @s minecraft:knockback_resistance modifier add ic_furia_kr 0.30 add_value

# Sync health to new max
execute store result storage evercraft:castle temp.max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:castle temp.max_hp

# Tag and visual
tag @s add ic.furia
execute if score #ic_furia_tier ec.var matches 1..60 at @s run particle ash ~ ~1 ~ 0.3 0.5 0.3 0.02 10
execute if score #ic_furia_tier ec.var matches 61..90 at @s run particle soul ~ ~1 ~ 0.3 0.5 0.3 0.02 10
execute if score #ic_furia_tier ec.var matches 91..100 at @s run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 15

# Announce
execute if score #ic_furia_tier ec.var matches 1..60 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"☆ ",color:"#555555"},{text:"A Minor Furia has appeared!",color:"gray"}]
execute if score #ic_furia_tier ec.var matches 61..90 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"✮ ",color:"#00AAAA"},{text:"A Standard Furia emerges!",color:"dark_aqua"}]
execute if score #ic_furia_tier ec.var matches 91..100 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"✯ ",color:"#AA0000"},{text:"A Greater Furia rages forth!",color:"dark_red"}]
