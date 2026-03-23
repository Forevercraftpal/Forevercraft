# Macro: $(item_slot) = any item slot name (container.N, weapon.offhand)
# Slot-flexible version of classify_weapon — checks the specified slot instead of weapon.mainhand
# Sets #wm_weapon_type: 1=sword, 2=axe, 3=pickaxe, 4=bow, 5=crossbow, 6=fishing_rod, 7=trident, 8=hoe, 9=shovel, 10=dagger, 12=gauntlet, 13=spear, 14=mace
scoreboard players set #wm_weapon_type ec.var 0

# Rogue Daggers (must check BEFORE swords — daggers are swords with rogue:true)
$execute if items entity @s $(item_slot) #minecraft:swords[custom_data~{awakened:1b,rogue:true}] run scoreboard players set #wm_weapon_type ec.var 10

# Dancer Gauntlets (must check BEFORE swords — gauntlets are swords with dancer:true)
$execute if items entity @s $(item_slot) #minecraft:swords[custom_data~{awakened:1b,dancer:true}] run scoreboard players set #wm_weapon_type ec.var 12

# Striker Maces (must check BEFORE swords so striker maces get type 14)
$execute if items entity @s $(item_slot) mace[custom_data~{awakened:1b,striker:true}] run scoreboard players set #wm_weapon_type ec.var 14

# Swords (includes non-striker mace, skip daggers=10, gauntlets=12, striker maces=14)
$execute if items entity @s $(item_slot) #minecraft:swords[custom_data~{awakened:1b}] unless score #wm_weapon_type ec.var matches 10 unless score #wm_weapon_type ec.var matches 12 run scoreboard players set #wm_weapon_type ec.var 1
$execute if items entity @s $(item_slot) mace[custom_data~{awakened:1b}] unless score #wm_weapon_type ec.var matches 14 run scoreboard players set #wm_weapon_type ec.var 1

# Axes
$execute if items entity @s $(item_slot) #minecraft:axes[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 2

# Pickaxes
$execute if items entity @s $(item_slot) #minecraft:pickaxes[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 3

# Bows
$execute if items entity @s $(item_slot) bow[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 4

# Crossbows
$execute if items entity @s $(item_slot) crossbow[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 5

# Fishing Rods
$execute if items entity @s $(item_slot) fishing_rod[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 6

# Tridents
$execute if items entity @s $(item_slot) trident[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 7

# Hoes
$execute if items entity @s $(item_slot) #minecraft:hoes[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 8

# Shovels
$execute if items entity @s $(item_slot) #minecraft:shovels[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 9

# Spears (Beastlord class)
$execute if items entity @s $(item_slot) #minecraft:spears[custom_data~{awakened:1b}] run scoreboard players set #wm_weapon_type ec.var 13
