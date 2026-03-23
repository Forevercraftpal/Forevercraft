# Cosmetic Triggers — Route /trigger adv.cosmetic
# 0 = disable, 1-5 = tier toggle, 101-114 = select tree variant

scoreboard players operation #cosm_val adv.temp = @s adv.cosmetic

# === TIER TOGGLE (0-5) ===
# Disable all cosmetics
execute if score #cosm_val adv.temp matches 0 run scoreboard players set @s adv.cosm_active 0
execute if score #cosm_val adv.temp matches 0 run effect clear @s minecraft:glowing
execute if score #cosm_val adv.temp matches 0 run function evercraft:advantage/cosmetics/leave_teams
execute if score #cosm_val adv.temp matches 0 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetics disabled.",color:"gray"}]

# Toggle specific tier
execute if score #cosm_val adv.temp matches 1..5 run function evercraft:advantage/cosmetics/toggle

# === TREE VARIANT SELECTOR (101-114) ===
execute if score #cosm_val adv.temp matches 101 run scoreboard players set @s adv.cosm_tree 1
execute if score #cosm_val adv.temp matches 101 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Agility",color:"aqua"}]
execute if score #cosm_val adv.temp matches 102 run scoreboard players set @s adv.cosm_tree 2
execute if score #cosm_val adv.temp matches 102 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Dexterity",color:"yellow"}]
execute if score #cosm_val adv.temp matches 103 run scoreboard players set @s adv.cosm_tree 3
execute if score #cosm_val adv.temp matches 103 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Evasion",color:"white"}]
execute if score #cosm_val adv.temp matches 104 run scoreboard players set @s adv.cosm_tree 4
execute if score #cosm_val adv.temp matches 104 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Stealth",color:"dark_gray"}]
execute if score #cosm_val adv.temp matches 105 run scoreboard players set @s adv.cosm_tree 5
execute if score #cosm_val adv.temp matches 105 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Vitality",color:"red"}]
execute if score #cosm_val adv.temp matches 106 run scoreboard players set @s adv.cosm_tree 6
execute if score #cosm_val adv.temp matches 106 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Taskmaster",color:"dark_purple"}]
execute if score #cosm_val adv.temp matches 107 run scoreboard players set @s adv.cosm_tree 7
execute if score #cosm_val adv.temp matches 107 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Beastmaster",color:"green"}]
execute if score #cosm_val adv.temp matches 108 run scoreboard players set @s adv.cosm_tree 8
execute if score #cosm_val adv.temp matches 108 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Victorian",color:"dark_red"}]
execute if score #cosm_val adv.temp matches 109 run scoreboard players set @s adv.cosm_tree 9
execute if score #cosm_val adv.temp matches 109 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Fishing",color:"blue"}]
execute if score #cosm_val adv.temp matches 110 run scoreboard players set @s adv.cosm_tree 10
execute if score #cosm_val adv.temp matches 110 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Mining",color:"gold"}]
execute if score #cosm_val adv.temp matches 111 run scoreboard players set @s adv.cosm_tree 11
execute if score #cosm_val adv.temp matches 111 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Gathering",color:"green"}]
execute if score #cosm_val adv.temp matches 112 run scoreboard players set @s adv.cosm_tree 12
execute if score #cosm_val adv.temp matches 112 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Blacksmith",color:"gray"}]
execute if score #cosm_val adv.temp matches 113 run scoreboard players set @s adv.cosm_tree 13
execute if score #cosm_val adv.temp matches 113 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Explorer",color:"dark_aqua"}]
execute if score #cosm_val adv.temp matches 114 run scoreboard players set @s adv.cosm_tree 14
execute if score #cosm_val adv.temp matches 114 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic variant: ",color:"gray"},{text:"Culinary",color:"green"}]
