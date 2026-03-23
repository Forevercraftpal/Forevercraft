# Storm - Grant Thunder Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"thunder_strike"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"thunder_strike"}] run return 0

# Grant the Thunder Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Thunder Horn",color:"yellow",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to call down the",color:"gray",italic:true},{text:"wrath of the heavens.",color:"gray",italic:true},{text:""},{text:"Requires: Storm 4pc",color:"gold",italic:false}],instrument="minecraft:call_goat_horn",custom_data={artifact_ability:"thunder_strike",artifact_set:"storm"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Storm 4pc: ",color:"yellow"},{text:"Storm Aura + Thunder Strike",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Thunder Horn",color:"yellow"},{text:"! Use it to activate Thunder Strike.",color:"gray"}]
playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.3 1.5
