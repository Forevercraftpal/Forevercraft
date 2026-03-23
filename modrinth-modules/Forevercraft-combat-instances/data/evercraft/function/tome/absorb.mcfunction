# Tome of Experience — Absorb XP
# Takes all player XP and stores it in scoreboard

# Query current player XP
execute store result score #tome_lvl adv.temp run experience query @s levels
execute store result score #tome_pts adv.temp run experience query @s points

# Early return if player has no XP
execute if score #tome_lvl adv.temp matches 0 if score #tome_pts adv.temp matches 0 run return run tellraw @s [{text:"✦ ",color:"gold"},{text:"You have no XP to store!",color:"red"}]

# Add player's XP to stored totals (per-player scoreboard)
scoreboard players operation @s ec.tome_lvl += #tome_lvl adv.temp
scoreboard players operation @s ec.tome_pts += #tome_pts adv.temp

# Remove all XP from player
experience set @s 0 points
experience set @s 0 levels

# Schedule lore update for next tick (can't modify item during use)
tag @s add ec.tome_update
schedule function evercraft:tome/update_lore 1t append

# Feedback
tellraw @s [{text:"✦ ",color:"gold"},{text:"Absorbed ",color:"green"},{score:{"name":"#tome_lvl","objective":"adv.temp"},color:"yellow",bold:true},{text:" levels",color:"green"},{text:" and ",color:"green"},{score:{"name":"#tome_pts","objective":"adv.temp"},color:"aqua",bold:true},{text:" points",color:"green"},{text:"!",color:"green"}]
tellraw @s [{text:"  Tome holds: ",color:"gray"},{score:{"name":"@s","objective":"ec.tome_lvl"},color:"green",bold:true},{text:" levels",color:"gray"},{text:", ",color:"gray"},{score:{"name":"@s","objective":"ec.tome_pts"},color:"aqua",bold:true},{text:" points",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.2
