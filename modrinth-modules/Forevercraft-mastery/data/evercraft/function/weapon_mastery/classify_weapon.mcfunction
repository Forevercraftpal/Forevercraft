# Determine weapon type from base item ID
# Sets #wm_weapon_type: 1=sword, 2=axe, 3=pickaxe, 4=bow, 5=crossbow, 6=fishing_rod, 7=trident, 8=hoe, 9=shovel, 10=dagger, 11=shield, 12=gauntlet, 13=spear, 14=mace
scoreboard players set #wm_weapon_type ec.var 0

# Shields (tank class)
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{awakened:1b,tank:1b}] run scoreboard players set #wm_weapon_type ec.var 11

# Rogue Daggers (must check BEFORE swords — daggers are swords with rogue:true)
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b,rogue:true}] run scoreboard players set #wm_weapon_type ec.var 10

# Dancer Gauntlets (must check BEFORE swords — gauntlets are swords with dancer:true)
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b,dancer:true}] run scoreboard players set #wm_weapon_type ec.var 12

# Striker Maces (must check BEFORE swords so striker maces get type 14)
execute if items entity @s weapon.mainhand mace[custom_data~{awakened:1b,striker:true}] run scoreboard players set #wm_weapon_type ec.var 14

# Swords (includes non-striker mace, skip daggers=10, gauntlets=12, striker maces=14)
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{awakened:1b}] unless score #wm_weapon_type ec.var matches 10 unless score #wm_weapon_type ec.var matches 12 run scoreboard players set #wm_weapon_type ec.var 1
execute if items entity @s weapon.mainhand mace[custom_data~{awakened:1b}] unless score #wm_weapon_type ec.var matches 14 run scoreboard players set #wm_weapon_type ec.var 1

# Axes
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 2

# Pickaxes
execute if items entity @s weapon.mainhand #minecraft:pickaxes[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 3

# Bows
execute if items entity @s weapon.mainhand bow[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 4

# Crossbows
execute if items entity @s weapon.mainhand crossbow[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 5

# Fishing Rods
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 6

# Tridents
execute if items entity @s weapon.mainhand trident[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 7

# Hoes
execute if items entity @s weapon.mainhand #minecraft:hoes[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 8

# Shovels
execute if items entity @s weapon.mainhand #minecraft:shovels[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 9

# Spears (Beastlord class)
execute if items entity @s weapon.mainhand #minecraft:spears[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 13
