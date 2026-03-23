# Prestige the weapon via hopper minecart
kill @e[type=hopper_minecart,tag=wm_temp]
summon hopper_minecart ~ 320 ~ {Tags:["wm_temp"],Items:[]}
item replace entity @e[type=hopper_minecart,tag=wm_temp,limit=1] container.0 from entity @s weapon.mainhand

# Reset XP and level to 0
scoreboard players set #wm_zero ec.var 0
scoreboard players set #wm_xp ec.var 0
scoreboard players set #wm_level ec.var 0
execute store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:custom_data".weapon_xp int 1 run scoreboard players get #wm_zero ec.var
execute store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:custom_data".weapon_level int 1 run scoreboard players get #wm_zero ec.var

# Increment prestige
scoreboard players add #wm_prestige ec.var 1
execute store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:custom_data".weapon_prestige int 1 run scoreboard players get #wm_prestige ec.var

# Strip ALL enchantments (reset for re-leveling)
data modify entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments" set value {}

# Update mastery lore line (reset to Lv.0 with new prestige)
function evercraft:weapon_mastery/get_xp_cost
execute store result storage evercraft:weapon_mastery lore.level int 1 run scoreboard players get #wm_level ec.var
execute store result storage evercraft:weapon_mastery lore.xp int 1 run scoreboard players get #wm_xp ec.var
execute store result storage evercraft:weapon_mastery lore.cost int 1 run scoreboard players get #wm_xp_cost ec.var
execute store result storage evercraft:weapon_mastery lore.max_level int 1 run scoreboard players get #wm_max_level ec.var
execute store result storage evercraft:weapon_mastery lore.prestige int 1 run scoreboard players get #wm_prestige ec.var
function evercraft:weapon_mastery/update_mastery_lore with storage evercraft:weapon_mastery lore

# Copy back to player
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=wm_temp,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=wm_temp]

# Effects
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"PRESTIGE! ",color:"light_purple",bold:true},{text:"(",color:"gold"},{score:{name:"#wm_prestige",objective:"ec.var"},color:"gold"},{text:") ",color:"gold"},{text:"Enchantment cap increased! Your weapon hungers for more power...",color:"yellow"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100 force @s

# Award Blacksmith's Dreaming Ember (+1 permanent DR) at prestige 3
execute if score #wm_prestige ec.var matches 3 unless score @s ec.ember_count matches 1.. run loot give @s loot evercraft:items/blacksmiths_dreaming_ember
execute if score #wm_prestige ec.var matches 3 unless score @s ec.ember_count matches 1.. run tellraw @s [{text:"  ✦ ",color:"red"},{text:"Blacksmith's Dreaming Ember",color:"red",bold:true},{text:" received! (+1 Dream Rate)",color:"yellow"}]