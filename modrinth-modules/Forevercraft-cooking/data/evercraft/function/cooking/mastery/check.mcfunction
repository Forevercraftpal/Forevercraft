# Cooking Mastery — Check milestones for current category
# Run as the player, after incrementing category counter
# Uses ec.ck_cat to determine which scoreboard to check

# Read current mastery count into temp
execute if score @s ec.ck_cat matches 0 run scoreboard players operation #ck_mast ec.temp = @s ck.m_combat
execute if score @s ec.ck_cat matches 1 run scoreboard players operation #ck_mast ec.temp = @s ck.m_mining
execute if score @s ec.ck_cat matches 2 run scoreboard players operation #ck_mast ec.temp = @s ck.m_fortune
execute if score @s ec.ck_cat matches 3 run scoreboard players operation #ck_mast ec.temp = @s ck.m_wayfarer
execute if score @s ec.ck_cat matches 4 run scoreboard players operation #ck_mast ec.temp = @s ck.m_delicacy
execute if score @s ec.ck_cat matches 5 run scoreboard players operation #ck_mast ec.temp = @s ck.m_seasonal
execute if score @s ec.ck_cat matches 6 run scoreboard players operation #ck_mast ec.temp = @s ck.m_treats
execute if score @s ec.ck_cat matches 7 run scoreboard players operation #ck_mast ec.temp = @s ck.m_ration
execute if score @s ec.ck_cat matches 8 run scoreboard players operation #ck_mast ec.temp = @s ck.m_feast
execute if score @s ec.ck_cat matches 9 run scoreboard players operation #ck_mast ec.temp = @s ck.m_preserve
execute if score @s ec.ck_cat matches 10 run scoreboard players operation #ck_mast ec.temp = @s ck.m_spirit

# Set category name for macro
execute if score @s ec.ck_cat matches 0 run data modify storage evercraft:cooking mastery set value {cat:"Combat Cuisine"}
execute if score @s ec.ck_cat matches 1 run data modify storage evercraft:cooking mastery set value {cat:"Mining Meals"}
execute if score @s ec.ck_cat matches 2 run data modify storage evercraft:cooking mastery set value {cat:"Fortune Foods"}
execute if score @s ec.ck_cat matches 3 run data modify storage evercraft:cooking mastery set value {cat:"Wayfarer Fare"}
execute if score @s ec.ck_cat matches 4 run data modify storage evercraft:cooking mastery set value {cat:"Delicacies"}
execute if score @s ec.ck_cat matches 5 run data modify storage evercraft:cooking mastery set value {cat:"Seasonal Specials"}
execute if score @s ec.ck_cat matches 6 run data modify storage evercraft:cooking mastery set value {cat:"Treats"}
execute if score @s ec.ck_cat matches 7 run data modify storage evercraft:cooking mastery set value {cat:"Laborer Rations"}
execute if score @s ec.ck_cat matches 8 run data modify storage evercraft:cooking mastery set value {cat:"Feast Platters"}
execute if score @s ec.ck_cat matches 9 run data modify storage evercraft:cooking mastery set value {cat:"Preservation"}
execute if score @s ec.ck_cat matches 10 run data modify storage evercraft:cooking mastery set value {cat:"Spirit Cuisine"}

# Milestone checks (exact match only — fire once)
execute if score #ck_mast ec.temp matches 10 run function evercraft:cooking/mastery/celebrate {level:"Apprentice",color:"green",count:"10"}
execute if score #ck_mast ec.temp matches 25 run function evercraft:cooking/mastery/celebrate {level:"Journeyman",color:"aqua",count:"25"}
execute if score #ck_mast ec.temp matches 50 run function evercraft:cooking/mastery/celebrate {level:"Expert",color:"gold",count:"50"}
execute if score #ck_mast ec.temp matches 100 run function evercraft:cooking/mastery/celebrate {level:"Master Chef",color:"light_purple",count:"100"}
