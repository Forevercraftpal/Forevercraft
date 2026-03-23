# Phantom - Grant Phantom Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"phantom_form"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"phantom_form"}] run return 0

# Grant the Phantom Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Phantom Horn",color:"dark_purple",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to become one with",color:"gray",italic:true},{text:"the shadows.",color:"gray",italic:true},{text:""},{text:"Requires: Phantom 4pc",color:"gold",italic:false}],instrument="minecraft:sing_goat_horn",custom_data={artifact_ability:"phantom_form",artifact_set:"phantom"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Phantom 4pc: ",color:"dark_purple"},{text:"Phase Shift + Phantom Form",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Phantom Horn",color:"dark_purple"},{text:"! Use it to activate Phantom Form.",color:"gray"}]
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.5 0.5
