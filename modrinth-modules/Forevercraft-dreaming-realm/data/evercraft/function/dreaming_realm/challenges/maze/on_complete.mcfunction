# Memory Maze — Complete!
# Context: as @s = dreaming player

# Mark challenge 1 done
scoreboard players set @s ec.dream_ch1 1

# Remove input tags
tag @s remove dr.maze_input
tag @s remove dr.maze_on_color

# Celebration
tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"The Memory Maze ","color":"#9B59B6","bold":true},{"text":"— Complete! ","color":"#2ECC71","bold":true},{"text":"A Dream Shard materializes...","color":"#D4A574","italic":true}]
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 normal @s

# Give Dream Shard
give @s amethyst_shard[custom_name={text:"Dream Shard",color:"light_purple",italic:false},custom_data={dream_shard:true},enchantment_glint_override=true] 1

# Direct to next challenge after a pause
tellraw @s [{text:""},{"text":"  ","color":"gray"},{"text":"The path to the northeast opens...","color":"#D4A574","italic":true}]

# Schedule next challenge start
schedule function evercraft:dreaming_realm/challenges/start_first 5s
