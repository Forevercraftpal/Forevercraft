# Ender - Grant Void Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"ender_blink"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"ender_blink"}] run return 0

# Grant the Void Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Void Horn",color:"dark_purple",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to blink through",color:"gray",italic:true},{text:"the fabric of reality.",color:"gray",italic:true},{text:""},{text:"Requires: Ender 4pc",color:"gold",italic:false}],instrument="minecraft:admire_goat_horn",custom_data={artifact_ability:"ender_blink",artifact_set:"ender"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender 4pc: ",color:"dark_purple"},{text:"Void Sight + Blink",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Void Horn",color:"dark_purple"},{text:"! Use it to activate Blink.",color:"gray"}]
playsound minecraft:entity.enderman.ambient player @s ~ ~ ~ 0.5 0.8
