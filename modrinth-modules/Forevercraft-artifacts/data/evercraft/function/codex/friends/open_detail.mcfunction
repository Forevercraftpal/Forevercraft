# Codex Friends — Open friend detail view
# @s = player, #fr_clicked_uuid3 ec.temp = friend's uuid3
# Kills list entries, spawns detail page with player head + info + action buttons

# Store selected friend
scoreboard players operation @s ec.fr_target = #fr_clicked_uuid3 ec.temp

# Kill list entries (keep header and page nav)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.fr_gui_entry,distance=..5]

# Load friend entry details from storage
execute store result storage evercraft:friends temp.self_uuid3 int 1 run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.target_uuid3 int 1 run scoreboard players get @s ec.fr_target
function evercraft:codex/friends/load_friend_detail with storage evercraft:friends temp

# Read data for display
execute store result score #fr_detail_hearts ec.temp run data get storage evercraft:friends temp.detail_hearts
execute store result score #fr_detail_cid ec.temp run data get storage evercraft:friends temp.detail_cid
data modify storage evercraft:friends temp.detail_title_str set from storage evercraft:friends temp.detail_title

# Determine friendship level
data modify storage evercraft:friends temp.level_color set value "gray"
data modify storage evercraft:friends temp.level_name set value "Friend"
execute if score #fr_detail_hearts ec.temp matches 7.. run data modify storage evercraft:friends temp.level_color set value "green"
execute if score #fr_detail_hearts ec.temp matches 7.. run data modify storage evercraft:friends temp.level_name set value "Good Friend"
execute if score #fr_detail_hearts ec.temp matches 30.. run data modify storage evercraft:friends temp.level_color set value "aqua"
execute if score #fr_detail_hearts ec.temp matches 30.. run data modify storage evercraft:friends temp.level_name set value "Great Friend"
execute if score #fr_detail_hearts ec.temp matches 60.. run data modify storage evercraft:friends temp.level_color set value "light_purple"
execute if score #fr_detail_hearts ec.temp matches 60.. run data modify storage evercraft:friends temp.level_name set value "Ultra Friend"
execute if score #fr_detail_hearts ec.temp matches 90.. run data modify storage evercraft:friends temp.level_color set value "gold"
execute if score #fr_detail_hearts ec.temp matches 90.. run data modify storage evercraft:friends temp.level_name set value "Best Friend"

# Determine next milestone
scoreboard players set #fr_next_hearts ec.temp 7
execute if score #fr_detail_hearts ec.temp matches 7.. run scoreboard players set #fr_next_hearts ec.temp 30
execute if score #fr_detail_hearts ec.temp matches 30.. run scoreboard players set #fr_next_hearts ec.temp 60
execute if score #fr_detail_hearts ec.temp matches 60.. run scoreboard players set #fr_next_hearts ec.temp 90
execute if score #fr_detail_hearts ec.temp matches 90.. run scoreboard players set #fr_next_hearts ec.temp 90

execute store result storage evercraft:friends temp.entry_cid int 1 run scoreboard players get #fr_detail_cid ec.temp
execute store result storage evercraft:friends temp.entry_hearts int 1 run scoreboard players get #fr_detail_hearts ec.temp
execute store result storage evercraft:friends temp.next_hearts int 1 run scoreboard players get #fr_next_hearts ec.temp
execute store result storage evercraft:friends temp.target_uuid3_val int 1 run scoreboard players get @s ec.fr_target

# Spawn detail entities via macro
function evercraft:codex/friends/spawn_detail with storage evercraft:friends temp

# === Conditional Marry/Divorce button ===
# Check if this friend is spouse
function evercraft:friends/buff/read_married with storage evercraft:friends temp
# #fr_married_to ec.temp = spouse's UUID3 (or 0)

# Propose button: Best Friend (90+) AND player not married
execute if score #fr_detail_hearts ec.temp matches 90.. unless score @s ec.fr_married matches 1 rotated ~ 0 positioned ^ ^1.82 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_marry_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"\u2764 Propose",color:"#FF69B4",bold:true},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute if score #fr_detail_hearts ec.temp matches 90.. unless score @s ec.fr_married matches 1 rotated ~ 0 positioned ^ ^2.28 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_marry_btn"],width:0.5f,height:0.06f,response:1b}

# Unfaithfully Separate: married to this friend AND sent 100+ gifts with nothing in return
execute store result score #fr_detail_gnr ec.temp run data get storage evercraft:friends temp.detail_gifts_no_return
execute if score @s ec.fr_married matches 1 if score #fr_married_to ec.temp = @s ec.fr_target if score #fr_detail_gnr ec.temp matches 100.. rotated ~ 0 positioned ^ ^1.82 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_divorce_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Unfaithfully Separate",color:"dark_red",italic:true},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute if score @s ec.fr_married matches 1 if score #fr_married_to ec.temp = @s ec.fr_target if score #fr_detail_gnr ec.temp matches 100.. rotated ~ 0 positioned ^ ^2.28 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_divorce_btn"],width:0.7f,height:0.06f,response:1b}

# Stamp session on ALL new detail entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[tag=ec.fr_gui_detail,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Tag player as in detail view (so check_clicks routes differently)
tag @s add ec.fr_detail_view

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
