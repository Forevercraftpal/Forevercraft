# Nature - Grant Grove Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"natures_wrath"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"natures_wrath"}] run return 0

# Grant the Grove Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Grove Horn",color:"green",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to unleash the",color:"gray",italic:true},{text:"fury of the wild.",color:"gray",italic:true},{text:""},{text:"Requires: Nature 4pc",color:"gold",italic:false}],instrument="minecraft:dream_goat_horn",custom_data={artifact_ability:"natures_wrath",artifact_set:"nature"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Nature 4pc: ",color:"green"},{text:"Overgrowth + Nature's Wrath",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Grove Horn",color:"green"},{text:"! Use it to activate Nature's Wrath.",color:"gray"}]
playsound minecraft:block.azalea.place player @s ~ ~ ~ 0.5 0.8
