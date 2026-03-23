# Grant Hero's Dance active ability item
# Runs as @s = player

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 4pc: ",color:"light_purple"},{text:"Hero's Dance — AoE Dash Attack",color:"gray"}]

give @s minecraft:goat_horn[custom_name={"text":"Hero's Dance","color":"gold","italic":false,"bold":true},custom_data={hero_dance:true,artifact_set:"hero"},lore=[{"text":"4pc Set Ability","color":"light_purple","italic":false},{"text":"Use: Dash forward dealing 8 damage","color":"gray","italic":false},{"text":"to all enemies in path (60s cooldown)","color":"gray","italic":false}]] 1
