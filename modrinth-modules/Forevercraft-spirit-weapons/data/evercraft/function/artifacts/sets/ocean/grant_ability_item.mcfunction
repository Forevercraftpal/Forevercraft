# Ocean - Grant Tidal Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"tidal_wave"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"tidal_wave"}] run return 0

# Grant the Tidal Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Tidal Horn",color:"dark_aqua",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to unleash a massive",color:"gray",italic:true},{text:"tidal wave upon your foes.",color:"gray",italic:true},{text:""},{text:"Requires: Ocean 4pc",color:"gold",italic:false}],instrument="minecraft:feel_goat_horn",custom_data={artifact_ability:"tidal_wave",artifact_set:"ocean"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ocean 4pc: ",color:"dark_aqua"},{text:"Conduit Power + Tidal Wave",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Tidal Horn",color:"dark_aqua"},{text:"! Use it to activate Tidal Wave.",color:"gray"}]
playsound minecraft:entity.dolphin.splash player @s ~ ~ ~ 0.5 0.8
