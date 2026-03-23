# Crafter Glowies — Apply team and glowing effect based on dominant category

execute if score #cf_max_cat ec.cf_temp matches 0 run team join ec.cf_glow_mine @s
execute if score #cf_max_cat ec.cf_temp matches 1 run team join ec.cf_glow_cook @s
execute if score #cf_max_cat ec.cf_temp matches 2 run team join ec.cf_glow_fish @s
execute if score #cf_max_cat ec.cf_temp matches 3 run team join ec.cf_glow_build @s
execute if score #cf_max_cat ec.cf_temp matches 4 run team join ec.cf_glow_forage @s
execute if score #cf_max_cat ec.cf_temp matches 5 run team join ec.cf_glow_forge @s

tag @s add CF.GlowActive
effect give @s minecraft:glowing 2 0 true

# Announce color
execute if score #cf_max_cat ec.cf_temp matches 0 run tellraw @s [{text:"Your mastery of ",color:"gray"},{text:"Mining",color:"gold"},{text:" shines brightest!",color:"gray"}]
execute if score #cf_max_cat ec.cf_temp matches 1 run tellraw @s [{text:"Your mastery of ",color:"gray"},{text:"Cooking",color:"red"},{text:" shines brightest!",color:"gray"}]
execute if score #cf_max_cat ec.cf_temp matches 2 run tellraw @s [{text:"Your mastery of ",color:"gray"},{text:"Fishing",color:"aqua"},{text:" shines brightest!",color:"gray"}]
execute if score #cf_max_cat ec.cf_temp matches 3 run tellraw @s [{text:"Your mastery of ",color:"gray"},{text:"Building",color:"green"},{text:" shines brightest!",color:"gray"}]
execute if score #cf_max_cat ec.cf_temp matches 4 run tellraw @s [{text:"Your mastery of ",color:"gray"},{text:"Foraging",color:"dark_purple"},{text:" shines brightest!",color:"gray"}]
execute if score #cf_max_cat ec.cf_temp matches 5 run tellraw @s [{text:"Your mastery of ",color:"gray"},{text:"Forging",color:"white"},{text:" shines brightest!",color:"gray"}]
