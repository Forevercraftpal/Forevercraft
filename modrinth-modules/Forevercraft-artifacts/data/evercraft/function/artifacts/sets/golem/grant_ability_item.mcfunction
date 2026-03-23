# Golem - Grant Iron Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"golem_smash"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"golem_smash"}] run return 0

# Grant the Iron Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Iron Horn",color:"white",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to smash the ground",color:"gray",italic:true},{text:"with devastating force.",color:"gray",italic:true},{text:""},{text:"Requires: Golem 4pc",color:"gold",italic:false}],instrument="minecraft:call_goat_horn",custom_data={artifact_ability:"golem_smash",artifact_set:"golem"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Golem 4pc: ",color:"white"},{text:"Iron Will + Golem Smash",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Iron Horn",color:"white"},{text:"! Use it to activate Golem Smash.",color:"gray"}]
playsound minecraft:entity.iron_golem.repair player @s ~ ~ ~ 0.5 0.8
