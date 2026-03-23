# Infernal - Grant Infernal Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"infernal_eruption"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"infernal_eruption"}] run return 0

# Grant the Infernal Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Infernal Horn",color:"red",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to unleash a devastating",color:"gray",italic:true},{text:"eruption of hellfire.",color:"gray",italic:true},{text:""},{text:"Requires: Infernal 4pc",color:"gold",italic:false}],instrument="minecraft:call_goat_horn",custom_data={artifact_ability:"infernal_eruption",artifact_set:"infernal"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal 4pc: ",color:"red"},{text:"Infernal Eruption — AoE fire burst",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Infernal Horn",color:"red"},{text:"! Use it to unleash hellfire.",color:"gray"}]
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 0.6
