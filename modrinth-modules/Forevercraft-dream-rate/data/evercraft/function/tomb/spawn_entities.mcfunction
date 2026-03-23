# Tomb System — Spawn All Grave Entities (macro)
# Called with storage evercraft:tomb_temp
# $(sword_id) = sword item ID string
# $(grave_id) = unique grave ID int
# $(ground_block) = block ID beneath death position (e.g. "minecraft:grass_block")
# Uses #tomb_p_uuid0-3 ec.temp for owner UUID (set by on_death)

# 1. Summon data marker — stores inventory, equipment, XP, owner info
summon marker ~ ~ ~ {Tags:["ec.tomb","ec.tomb_data","ec.tomb_new"]}

# Transfer inventory + equipment data from temp storage to marker
data modify entity @e[type=marker,tag=ec.tomb_new,limit=1] data.Inventory set from storage evercraft:tomb_temp Inventory
data modify entity @e[type=marker,tag=ec.tomb_new,limit=1] data.Equipment set from storage evercraft:tomb_temp Equipment
data modify entity @e[type=marker,tag=ec.tomb_new,limit=1] data.XP set from storage evercraft:tomb_temp XP
data modify entity @e[type=marker,tag=ec.tomb_new,limit=1] data.dim set from storage evercraft:tomb_temp dim
data modify entity @e[type=marker,tag=ec.tomb_new,limit=1] data.death_gametime set from storage evercraft:tomb_temp death_gametime

# Copy player's UUID scores to the marker (from fake-player temps)
scoreboard players operation @e[type=marker,tag=ec.tomb_new,limit=1] ec.tomb_uuid0 = #tomb_p_uuid0 ec.temp
scoreboard players operation @e[type=marker,tag=ec.tomb_new,limit=1] ec.tomb_uuid1 = #tomb_p_uuid1 ec.temp
scoreboard players operation @e[type=marker,tag=ec.tomb_new,limit=1] ec.tomb_uuid2 = #tomb_p_uuid2 ec.temp
scoreboard players operation @e[type=marker,tag=ec.tomb_new,limit=1] ec.tomb_uuid3 = #tomb_p_uuid3 ec.temp

# Set grave ID on marker (macro — uses $(grave_id))
$scoreboard players set @e[type=marker,tag=ec.tomb_new,limit=1] ec.tomb_id $(grave_id)

# 2. Summon sword item_display — blade down into stone, hilt up (macro — uses $(sword_id))
# item_display:"fixed" renders like in an item frame
# right_rotation: 180° Z flip so blade points down, hilt points up
# left_rotation: 45° Z to straighten diagonal sprite to vertical
$summon item_display ~ ~ ~ {Tags:["ec.tomb","ec.tomb_sword","ec.tomb_new_vis"],item:{id:"$(sword_id)",count:1},item_display:"fixed",transformation:{left_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.7854f},right_rotation:{axis:[0.0f,0.0f,1.0f],angle:3.1416f},translation:[0.0f,0.3f,0.0f],scale:[0.5f,0.5f,0.5f]},billboard:"fixed"}
$scoreboard players set @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_id $(grave_id)
tag @e[tag=ec.tomb_new_vis,limit=1] remove ec.tomb_new_vis

# 3. Summon stone block_display — ground block base (macro — uses $(ground_block))
# Uses the block beneath where the player died for the base texture
$summon block_display ~ ~ ~ {Tags:["ec.tomb","ec.tomb_stone","ec.tomb_new_vis"],block_state:{Name:"$(ground_block)"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.25f,0.0f,-0.25f],scale:[0.5f,0.25f,0.5f]}}
$scoreboard players set @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_id $(grave_id)
tag @e[tag=ec.tomb_new_vis,limit=1] remove ec.tomb_new_vis

# 4. Summon particle flame marker (NO macro needed)
summon marker ~ ~0.8 ~ {Tags:["ec.tomb","ec.tomb_flame","ec.tomb_new_vis"]}
$scoreboard players set @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_id $(grave_id)
tag @e[tag=ec.tomb_new_vis,limit=1] remove ec.tomb_new_vis

# 5. Summon interaction entity — for companion recovery right-click (NO macro needed)
summon interaction ~ ~0.4 ~ {Tags:["ec.tomb","ec.tomb_interact","ec.tomb_new_vis"],width:0.8f,height:1.2f,response:1b}
$scoreboard players set @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_id $(grave_id)
# Copy owner UUID to interaction entity too (for matching)
scoreboard players operation @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_uuid0 = #tomb_p_uuid0 ec.temp
scoreboard players operation @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_uuid1 = #tomb_p_uuid1 ec.temp
scoreboard players operation @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_uuid2 = #tomb_p_uuid2 ec.temp
scoreboard players operation @e[tag=ec.tomb_new_vis,limit=1] ec.tomb_uuid3 = #tomb_p_uuid3 ec.temp
tag @e[tag=ec.tomb_new_vis,limit=1] remove ec.tomb_new_vis

# Clean up new marker tag
tag @e[type=marker,tag=ec.tomb_new] remove ec.tomb_new

# 6. Initial spawn particle burst
particle minecraft:sculk_soul ~ ~0.5 ~ 0.3 0.5 0.3 0.02 15
particle minecraft:soul_fire_flame ~ ~0.8 ~ 0.2 0.3 0.2 0.01 8
particle minecraft:end_rod ~ ~1.0 ~ 0.1 0.2 0.1 0.01 5
particle dust{color:[0.2,0.6,0.9],scale:1.2} ~ ~0.1 ~ 0.5 0.0 0.5 0 12

