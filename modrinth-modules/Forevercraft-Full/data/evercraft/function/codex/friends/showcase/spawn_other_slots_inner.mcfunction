# Showcase — Inner spawn (other-player view, corrected facing)
# Macro: $(target_cid)

# === PLAYER HEAD (centered) ===
execute rotated ~ 0 positioned ^ ^2.55 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_new"],billboard:"center",item:{id:"player_head",count:1,components:{"minecraft:profile":{}}},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
$data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item.components."minecraft:profile".id set from entity @a[scores={companion.id=$(target_cid)},limit=1] UUID
tag @e[tag=ec.sc_eq_new] remove ec.sc_eq_new

# === PLAYER NAME (centered) ===
$execute rotated ~ 0 positioned ^ ^2.33 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:{selector:"@a[scores={companion.id=$(target_cid)},limit=1]",color:"white",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# === STATS: [Dream Rate] [Artisan Rank] — horizontal line ===
$execute store result score #sc_dr ec.temp run attribute @a[scores={companion.id=$(target_cid)},limit=1] luck get 10
scoreboard players operation #sc_dr_whole ec.temp = #sc_dr ec.temp
scoreboard players set #10 ec.temp 10
scoreboard players operation #sc_dr_whole ec.temp /= #10 ec.temp
scoreboard players operation #sc_dr_dec ec.temp = #sc_dr ec.temp
$execute store result score #sc_dr ec.temp run attribute @a[scores={companion.id=$(target_cid)},limit=1] luck get 10
scoreboard players operation #sc_dr_dec ec.temp %= #10 ec.temp
execute store result storage evercraft:showcase temp.dr_whole int 1 run scoreboard players get #sc_dr_whole ec.temp
execute store result storage evercraft:showcase temp.dr_dec int 1 run scoreboard players get #sc_dr_dec ec.temp
function evercraft:codex/friends/showcase/spawn_other_dream_rate with storage evercraft:showcase temp

$execute store result storage evercraft:showcase temp.cf_rank int 1 run scoreboard players get @a[scores={companion.id=$(target_cid)},limit=1] ec.cf_rank
function evercraft:codex/friends/showcase/spawn_artisan_rank with storage evercraft:showcase temp

# === EQUIPMENT ROW ===
$function evercraft:codex/friends/showcase/spawn_other_equipment {target_cid:$(target_cid)}

# === COMPANION (far left) + TOP AFFINITY (far right) ===
# LEFT: Companion name (ABOVE the head, centered on same X)
execute rotated ~ 0 positioned ^0.75 ^1.87 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_petname_new"],billboard:"center",text:{text:"No Companion",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.17f,0.17f,0.17f]}}
$execute as @a[scores={companion.id=$(target_cid)},limit=1] if entity @s[tag=companion.activepet] if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,limit=1] run data modify entity @e[type=text_display,tag=ec.sc_petname_new,limit=1,sort=nearest] text set from entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_name"
$execute as @a[scores={companion.id=$(target_cid)},limit=1] if entity @s[tag=companion.activepet] unless entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,limit=1] run data modify entity @e[type=text_display,tag=ec.sc_petname_new,limit=1,sort=nearest] text set value {text:"Active",color:"green"}
tag @e[tag=ec.sc_petname_new] remove ec.sc_petname_new
# LEFT: Companion item display (below name)
execute rotated ~ 0 positioned ^0.75 ^1.83 ^1.77 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_pet_new","ec.sc_pet_item"],billboard:"center",item:{id:"air",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]}}
$execute as @a[scores={companion.id=$(target_cid)},limit=1] if entity @s[tag=companion.activepet] if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,limit=1] run data modify entity @e[type=item_display,tag=ec.sc_pet_new,limit=1,sort=nearest] item set from entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,limit=1] item
tag @e[tag=ec.sc_pet_new] remove ec.sc_pet_new
# LEFT: Companion inspect hitbox (only if pet item was loaded — check non-air)
execute unless data entity @e[type=item_display,tag=ec.sc_pet_item,limit=1,sort=nearest,distance=..5] {item:{id:"minecraft:air"}} rotated ~ 0 positioned ^0.75 ^1.85 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_eq_click","ec.sc_pet_click"],width:0.12f,height:0.07f,response:1b}
# RIGHT: Top Affinity (with XP below)
$execute as @a[scores={companion.id=$(target_cid)},limit=1] run function evercraft:affinity/get_top
function evercraft:codex/friends/showcase/spawn_affinity with storage evercraft:showcase temp

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^1.75 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:{text:"── Achievements ──",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# === PIN SLOTS (vertical, read-only) ===
# Pin 0
data modify storage evercraft:showcase temp.slot set value 0
data modify storage evercraft:showcase temp.y_pos set value "1.64"
data modify storage evercraft:showcase temp.pin set from storage evercraft:showcase temp.pins[0]
function evercraft:codex/friends/showcase/spawn_other_slot

# Pin 1
data modify storage evercraft:showcase temp.slot set value 1
data modify storage evercraft:showcase temp.y_pos set value "1.47"
data modify storage evercraft:showcase temp.pin set from storage evercraft:showcase temp.pins[1]
function evercraft:codex/friends/showcase/spawn_other_slot

# Pin 2
data modify storage evercraft:showcase temp.slot set value 2
data modify storage evercraft:showcase temp.y_pos set value "1.30"
data modify storage evercraft:showcase temp.pin set from storage evercraft:showcase temp.pins[2]
function evercraft:codex/friends/showcase/spawn_other_slot

# === TELEPORT BUTTON (best friends only) ===
execute if score #sc_is_best ec.temp matches 1 run function evercraft:codex/friends/showcase/spawn_tp_button with storage evercraft:showcase temp

# === BACK BUTTON ===
execute rotated ~ 0 positioned ^ ^1.00 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_back_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Back",color:"white"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^0.96 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_back_btn"],width:0.3f,height:0.10f,response:1b}
