# Guild Menu — Show member detail sub-page
# @s = player viewing the guild menu
# #gm_target_cid ec.temp = companion.id of the clicked member

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Enter detail view mode
tag @s add ec.gm_detail_view

# Store target companion.id for macro
execute store result storage evercraft:guild temp.target_cid int 1 run scoreboard players get #gm_target_cid ec.temp

# Get target's rank name
scoreboard players set #gm_rank ec.temp 0
execute as @a[scores={companion.id=1..}] if score @s companion.id = #gm_target_cid ec.temp store result score #gm_rank ec.temp run scoreboard players get @s ec.guild_rank
execute if score #gm_rank ec.temp matches 1 run data modify storage evercraft:guild temp.detail_rank set value "Associate"
execute if score #gm_rank ec.temp matches 2 run data modify storage evercraft:guild temp.detail_rank set value "Member"
execute if score #gm_rank ec.temp matches 3 run data modify storage evercraft:guild temp.detail_rank set value "Aide"
execute if score #gm_rank ec.temp matches 4 run data modify storage evercraft:guild temp.detail_rank set value "Representative"
execute if score #gm_rank ec.temp matches 5 run data modify storage evercraft:guild temp.detail_rank set value "Administrator"
execute if score #gm_rank ec.temp matches 6 run data modify storage evercraft:guild temp.detail_rank set value "Dedicated"
execute if score #gm_rank ec.temp matches 7 run data modify storage evercraft:guild temp.detail_rank set value "Valorous"

# Get target's contribution
execute as @a[scores={companion.id=1..}] if score @s companion.id = #gm_target_cid ec.temp run execute store result storage evercraft:guild temp.detail_contrib int 1 run scoreboard players get @s ec.guild_contrib

# Get target's dream rate (luck * 10, split into whole + decimal)
execute as @a[scores={companion.id=1..}] if score @s companion.id = #gm_target_cid ec.temp run execute store result score #gm_dr ec.temp run attribute @s luck get 10
scoreboard players operation #gm_dr_whole ec.temp = #gm_dr ec.temp
scoreboard players set #10 ec.temp 10
scoreboard players operation #gm_dr_whole ec.temp /= #10 ec.temp
scoreboard players operation #gm_dr_dec ec.temp = #gm_dr ec.temp
scoreboard players operation #gm_dr_dec ec.temp %= #10 ec.temp
execute store result storage evercraft:guild temp.dr_whole int 1 run scoreboard players get #gm_dr_whole ec.temp
execute store result storage evercraft:guild temp.dr_dec int 1 run scoreboard players get #gm_dr_dec ec.temp

# Check if target has active companion
data modify storage evercraft:guild temp.pet_name set value ""
execute as @a[scores={companion.id=1..}] if score @s companion.id = #gm_target_cid ec.temp if entity @s[tag=companion.activepet] if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,limit=1] run data modify storage evercraft:guild temp.pet_name set from entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_name"

# Spawn the detail view
function evercraft:guild/gui/menu/spawn_member_detail with storage evercraft:guild temp

# Update companion name if pet was found (pet_name is a text component, can't use in macro)
execute unless data storage evercraft:guild {temp:{pet_name:""}} at @s run data modify entity @e[type=text_display,tag=ec.gm_detail_pet,distance=..5,limit=1] text set value [{text:"Companion: ",color:"gray"}]
execute unless data storage evercraft:guild {temp:{pet_name:""}} at @s run data modify entity @e[type=text_display,tag=ec.gm_detail_pet,distance=..5,limit=1] text append from storage evercraft:guild temp.pet_name
tag @e[tag=ec.gm_detail_pet] remove ec.gm_detail_pet

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
