# Grant Harvest Caller ability item
# Check if player already has the item
execute store result score @s ec.temp run clear @s goat_horn[custom_data~{artifact_ability:"harvest_call"}] 0

# Give the item if they don't have it
execute if score @s ec.temp matches 0 run give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Harvest Caller",color:"green",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to instantly grow all",color:"gray",italic:false},{text:"crops in a wide area.",color:"gray",italic:false},{text:""},{text:"Requires: Grove 4pc",color:"gold",italic:false}],instrument="minecraft:feel_goat_horn",custom_data={artifact_ability:"harvest_call",artifact_set:"verdant"}]

# Sound and message
execute if score @s ec.temp matches 0 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0.8
execute if score @s ec.temp matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You received: ",color:"gray"},{text:"Harvest Caller",color:"green",bold:true}]
execute if score @s ec.temp matches 0 run tellraw @s [{text:"  ",color:"gray"},{text:"Blow the horn to grow crops instantly!",color:"gray",italic:true}]
