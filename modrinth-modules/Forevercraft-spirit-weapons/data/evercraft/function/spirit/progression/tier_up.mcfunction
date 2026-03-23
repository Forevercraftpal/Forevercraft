# Spirit Progression — TIER UP!
# Run as: player whose objectives are met for current tier
# Increments tier, updates item, announces server-wide, plays VFX

# === INCREMENT TIER ===
scoreboard players add @s ec.sp_tier 1

# === STORE NEW TIER STRING IN STORAGE FOR ITEM UPDATE ===
data modify storage evercraft:temp sp_new_tier set value "common"
execute if score @s ec.sp_tier matches 2 run data modify storage evercraft:temp sp_new_tier set value "uncommon"
execute if score @s ec.sp_tier matches 3 run data modify storage evercraft:temp sp_new_tier set value "rare"
execute if score @s ec.sp_tier matches 4 run data modify storage evercraft:temp sp_new_tier set value "ornate"
execute if score @s ec.sp_tier matches 5 run data modify storage evercraft:temp sp_new_tier set value "exquisite"
execute if score @s ec.sp_tier matches 6 run data modify storage evercraft:temp sp_new_tier set value "mythical"
execute if score @s ec.sp_tier matches 7 run data modify storage evercraft:temp sp_new_tier set value "spirit"

# === UPDATE ITEM TIER VIA HOPPER MINECART ===
# Safety: kill any leftover temp carts from a prior failed attempt
kill @e[type=hopper_minecart,tag=ec.sp_tierup]
# Copy mainhand to storage, update tier, write back via cart
data modify storage evercraft:temp sp_item set from entity @s SelectedItem
data modify storage evercraft:temp sp_item.components."minecraft:custom_data".tier set from storage evercraft:temp sp_new_tier
execute at @s run summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_tierup"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.sp_tierup,limit=1] Items[0] set from storage evercraft:temp sp_item
# Store slot number to storage for macro call
execute store result storage evercraft:temp sp_slot int 1 run data get entity @s SelectedItemSlot
function evercraft:spirit/progression/write_slot_tierup with storage evercraft:temp
kill @e[type=hopper_minecart,tag=ec.sp_tierup]

# === UPDATE EFFECTIVENESS ===
scoreboard players set @s ec.sp_eff 50
execute if score @s ec.sp_tier matches 2 run scoreboard players set @s ec.sp_eff 60
execute if score @s ec.sp_tier matches 3 run scoreboard players set @s ec.sp_eff 70
execute if score @s ec.sp_tier matches 4 run scoreboard players set @s ec.sp_eff 80
execute if score @s ec.sp_tier matches 5 run scoreboard players set @s ec.sp_eff 90
execute if score @s ec.sp_tier matches 6 run scoreboard players set @s ec.sp_eff 100
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_eff 125
execute if score @s ec.sp_boosted matches 1 run scoreboard players operation @s ec.sp_eff += #25 ec.const

# === RESET OBJECTIVE COUNTER ===
scoreboard players set @s ec.sp_obj_done 0

# === COIN REWARD ===
function evercraft:coins/spirit_tier_up

# === VFX ===
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.4 1.5
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 80
particle minecraft:enchant ~ ~1 ~ 1 1 1 1.0 40

# === TITLE CARD ===
# Store tier name + color for title
title @s times 10 60 20
execute if score @s ec.sp_tier matches 2 run title @s title [{"text":"TIER UP","color":"green","bold":true}]
execute if score @s ec.sp_tier matches 2 run title @s subtitle [{"text":"Uncommon","color":"green"}]
execute if score @s ec.sp_tier matches 3 run title @s title [{"text":"TIER UP","color":"aqua","bold":true}]
execute if score @s ec.sp_tier matches 3 run title @s subtitle [{"text":"Rare","color":"aqua"},{"text":" — Ability 1 Unlocked!","color":"gold"}]
execute if score @s ec.sp_tier matches 4 run title @s title [{"text":"TIER UP","color":"dark_purple","bold":true}]
execute if score @s ec.sp_tier matches 4 run title @s subtitle [{"text":"Ornate","color":"dark_purple"}]
execute if score @s ec.sp_tier matches 5 run title @s title [{"text":"TIER UP","color":"gold","bold":true}]
execute if score @s ec.sp_tier matches 5 run title @s subtitle [{"text":"Exquisite","color":"gold"},{"text":" — Ability 2 Unlocked!","color":"gold"}]
execute if score @s ec.sp_tier matches 6 run title @s title [{"text":"TIER UP","color":"light_purple","bold":true}]
execute if score @s ec.sp_tier matches 6 run title @s subtitle [{"text":"Mythical","color":"light_purple"},{"text":" — Twin/Boost Eligible!","color":"gold"}]
execute if score @s ec.sp_tier matches 7 run title @s title [{"text":"SPIRIT AWAKENED","color":"light_purple","bold":true}]
execute if score @s ec.sp_tier matches 7 run title @s subtitle [{"text":"Maximum Power Achieved","color":"gold"}]

# === AUTO-CHECK METAMORPHOSIS AT TIER 7 ===
execute if score @s ec.sp_tier matches 7 run function evercraft:spirit/metamorphosis/check

# === SERVER-WIDE ANNOUNCEMENT ===
# Route to weapon-specific announcement for correct name+color
function evercraft:spirit/progression/announce_tier_up