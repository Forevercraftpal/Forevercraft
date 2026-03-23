# Wither - Grant Soul Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"soul_harvest"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"soul_harvest"}] run return 0

# Grant the Soul Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Soul Horn",color:"dark_gray",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to harvest the souls",color:"gray",italic:true},{text:"of nearby enemies.",color:"gray",italic:true},{text:""},{text:"Requires: Wither 4pc",color:"gold",italic:false}],instrument="minecraft:dream_goat_horn",custom_data={artifact_ability:"soul_harvest",artifact_set:"wither"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Wither 4pc: ",color:"dark_gray"},{text:"Wither Aura + Soul Harvest",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Soul Horn",color:"dark_gray"},{text:"! Use it to activate Soul Harvest.",color:"gray"}]
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 0.3 0.5
