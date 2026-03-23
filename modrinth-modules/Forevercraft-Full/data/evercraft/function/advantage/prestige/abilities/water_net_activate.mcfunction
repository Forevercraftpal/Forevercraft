# Water Net — activate at this barrel position
# Position context is already set to the barrel block by the raycast
# @s is still the placing player

# Remove the guard tag so further raycast steps are skipped
tag @s remove WaterNet.placing

# === WATER VALIDATION ===
# Count water source blocks on 4 cardinal sides (N/S/E/W)
scoreboard players set #wn_water adv.temp 0
execute if block ~1 ~ ~ minecraft:water run scoreboard players add #wn_water adv.temp 1
execute if block ~-1 ~ ~ minecraft:water run scoreboard players add #wn_water adv.temp 1
execute if block ~ ~ ~1 minecraft:water run scoreboard players add #wn_water adv.temp 1
execute if block ~ ~ ~-1 minecraft:water run scoreboard players add #wn_water adv.temp 1

# Determine master_angler status from placing player's prestige level
scoreboard players set #wn_master adv.temp 0
execute if score @s adv.pa_fish3 matches 1.. run scoreboard players set #wn_master adv.temp 1

# Store master_angler flag in temp storage for marker summon
data modify storage evercraft:water_net temp.master_angler set value 0b
execute if score #wn_master adv.temp matches 1 run data modify storage evercraft:water_net temp.master_angler set value 1b

# Spawn WaterNet marker with data compound
# last_catch_day:-1 ensures first morning will trigger a catch
summon marker ~ ~ ~ {Tags:["WaterNet","WaterNet.new"]}

# Store initial data on the marker
data modify entity @e[type=marker,tag=WaterNet.new,limit=1,sort=nearest] data set value {last_catch_day:-1}
data modify entity @e[type=marker,tag=WaterNet.new,limit=1,sort=nearest] data.master_angler set from storage evercraft:water_net temp.master_angler

# Check water count and set appropriate state
execute if score #wn_water adv.temp matches 3.. run tag @e[type=marker,tag=WaterNet.new,limit=1,sort=nearest] add WaterNet.active
execute if score #wn_water adv.temp matches ..2 run tag @e[type=marker,tag=WaterNet.new,limit=1,sort=nearest] add WaterNet.invalid

# Clean up new tag
tag @e[type=marker,tag=WaterNet.new,limit=1,sort=nearest] remove WaterNet.new

# Set barrel custom name (SNBT format for 1.21.5+)
data merge block ~ ~ ~ {CustomName:{text:"Water Net",color:"aqua",italic:false}}

# === OVERLAY DISPLAY (only when active) ===
execute if score #wn_water adv.temp matches 3.. run summon armor_stand ~0.5 ~ ~0.5 { Tags:["WaterNet.stand","WaterNet.display","smithed.entity"], NoGravity:true, Invisible:true, Small:true, Invulnerable:true, DisabledSlots:4144959, Passengers:[{ id:"minecraft:item_display", Tags:["WaterNet.display","smithed.entity"], brightness:{sky:15,block:15}, view_range:1f, width:0f, height:0f, item_display:"head", transformation:{ left_rotation:[0f,0f,0f,1f], right_rotation:[0f,0f,0f,1f], translation:[0.0f,0.05f,0.0f], scale:[2.05f,2.1f,2.05f] }, item:{ id:"minecraft:player_head", count:1, components:{ "minecraft:profile":{ id:[I;-1974477980,147736616,-1635819972,23806684], properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc3MTA5NjcxODEzNywKICAicHJvZmlsZUlkIiA6ICJlNzVjZTk1MTc1OWI0MmVlYmY4ZmVjZDhhYjM0YjM2MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJfS0tYRF8iLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTlhMDJiNDgwMjM5YWYzMThkMDNiYzA0NTE5Y2YxY2E4ODE4MDYwMDkyNGFiNTk4NzlkZmE2MDMyYjEwNmU4MCIKICAgIH0KICB9Cn0="}] } } } }] }

# === FEEDBACK ===
execute if score #wn_water adv.temp matches 3.. run playsound minecraft:block.brewing_stand.brew master @s ~ ~ ~ 1 1.2
execute if score #wn_water adv.temp matches 3.. run tellraw @s [{text:"✦ ",color:"gold"},{text:"Water Net deployed!",color:"aqua"},{text:" Fish will be caught each morning.",color:"gray"}]

execute if score #wn_water adv.temp matches ..2 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #wn_water adv.temp matches ..2 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Water Net placed",color:"yellow"},{text:" but needs ",color:"gray"},{text:"3+ water sources",color:"aqua"},{text:" on its sides to activate.",color:"gray"}]
execute if score #wn_water adv.temp matches ..2 run tellraw @s [{text:"  ► ",color:"gray"},{text:"Currently: ",color:"gray"},{score:{"name":"#wn_water","objective":"adv.temp"}},{text:"/3 water sources detected.",color:"gray"}]
