# Netherwalker - Grant Nether Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"blaze_burst"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"blaze_burst"}] run return 0

# Grant the Nether Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Nether Horn",color:"red",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to unleash a devastating",color:"gray",italic:true},{text:"burst of nether flames.",color:"gray",italic:true},{text:""},{text:"Requires: Netherwalker 4pc",color:"gold",italic:false}],instrument="minecraft:call_goat_horn",custom_data={artifact_ability:"blaze_burst",artifact_set:"netherwalker"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Netherwalker 4pc: ",color:"red"},{text:"Lava Walking + Blaze Burst",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Nether Horn",color:"red"},{text:"! Use it to activate Blaze Burst.",color:"gray"}]
playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 0.5 0.8
