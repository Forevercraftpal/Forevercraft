# Wise Wanderer — Handle Right-Click on Villager
# Runs as the player who clicked, at the player's position

# Player must have a Tome of Experience in their inventory to trade
execute unless items entity @s container.* book[custom_data~{tome_of_experience:true}] run return run tellraw @s [{text:"✦ ",color:"gold"},{text:"You need a ",color:"gray"},{text:"Tome of Experience",color:"gold",bold:true},{text:" to trade with the Wise Wanderer!",color:"gray"}]

# Open the GUI
function evercraft:professions/jobs/wise_wanderer/gui/open
