# Trophy — Award a trophy to the player (macro)
# Args: {id:"hearthkeeper", name:"Hearthkeeper", color:"gold", bit:1, texture:"<base64>", lore:"Place your first Hearthstone"}
# Run as player

# Skip if already earned (check bit)
scoreboard players operation #trophy_check ec.temp = @s ec.cf_trophies
$scoreboard players operation #trophy_check ec.temp /= #trophy_bit_$(bit) ec.const
scoreboard players operation #trophy_check ec.temp %= #2 ec.const
execute if score #trophy_check ec.temp matches 1 run return 0

# Set the bit
$scoreboard players operation @s ec.cf_trophies += #trophy_bit_$(bit) ec.const

# Give the player_head trophy item
$give @s player_head[profile={properties:[{name:"textures",value:"$(texture)"}]},custom_name={"text":"$(name)","color":"$(color)","bold":true,"italic":false},lore=[{"text":"$(lore)","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Place in your home for +25 Comfort","color":"dark_gray","italic":true}],custom_data={trophy:true,trophy_id:"$(id)"}] 1

# Feedback
$tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Trophy Earned: ","color":"green"},{"text":"$(name)","color":"$(color)","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.3 0.5 0.3 0.1 30
