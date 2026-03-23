# Tome of Experience — Withdraw XP
# Gives all stored XP back to the player (shift+right-click)

# Early return if tome is empty
execute if score @s ec.tome_lvl matches ..0 if score @s ec.tome_pts matches ..0 run return run tellraw @s [{text:"✦ ",color:"gold"},{text:"The tome is empty!",color:"red"}]

# Write values to storage for macro
execute store result storage evercraft:tome temp.stored_levels int 1 run scoreboard players get @s ec.tome_lvl
execute store result storage evercraft:tome temp.stored_points int 1 run scoreboard players get @s ec.tome_pts

# Give XP to player via macro
function evercraft:tome/give_xp with storage evercraft:tome temp

# Feedback
tellraw @s [{text:"✦ ",color:"gold"},{text:"Withdrew ",color:"green"},{score:{"name":"@s","objective":"ec.tome_lvl"},color:"yellow",bold:true},{text:" levels",color:"green"},{text:" and ",color:"green"},{score:{"name":"@s","objective":"ec.tome_pts"},color:"aqua",bold:true},{text:" points",color:"green"},{text:"!",color:"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 0.8

# Reset stored values
scoreboard players set @s ec.tome_lvl 0
scoreboard players set @s ec.tome_pts 0

# Schedule lore update for next tick
tag @s add ec.tome_update
schedule function evercraft:tome/update_lore 1t append

