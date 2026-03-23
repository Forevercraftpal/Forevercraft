# Apply awakening to mainhand weapon via item modifier
item modify entity @s weapon.mainhand evercraft:weapon_mastery/awaken

# Append mastery lore line to item (so write_back can update lore[-1])
summon hopper_minecart ~ 320 ~ {Tags:["wm_temp"],Items:[]}
item replace entity @e[type=hopper_minecart,tag=wm_temp,limit=1] container.0 from entity @s weapon.mainhand
data modify entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:lore" append value ""
data modify entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:lore" append value {text:"◆ Mastery: Lv.0 (0/5 XP)",color:"yellow",italic:false}
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=wm_temp,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=wm_temp]

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your weapon stirs with newfound power!",color:"light_purple"}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1.0 1.5
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 30 force @s