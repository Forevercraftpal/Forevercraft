# Macro: $(slot) = head, chest, legs, or feet
# Awaken armor piece in specified slot (reuses weapon mastery item modifier)
$item modify entity @s armor.$(slot) evercraft:weapon_mastery/awaken

# Append mastery lore line to item (so write_back can update lore[-1])
summon hopper_minecart ~ 320 ~ {Tags:["am_temp"],Items:[]}
$item replace entity @e[type=hopper_minecart,tag=am_temp,limit=1] container.0 from entity @s armor.$(slot)
data modify entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:lore" append value ""
data modify entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:lore" append value {text:"◆ Mastery: Lv.0 (0/5 XP)",color:"yellow",italic:false}
$item replace entity @s armor.$(slot) from entity @e[type=hopper_minecart,tag=am_temp,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=am_temp]

# Feedback
tellraw @s [{text:"[Armor Mastery] ",color:"gold"},{text:"Your armor stirs with newfound power!",color:"light_purple"}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1.0 1.5
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 30 force @s