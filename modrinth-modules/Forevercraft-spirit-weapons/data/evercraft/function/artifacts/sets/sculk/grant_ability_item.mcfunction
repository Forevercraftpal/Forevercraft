# Sculk - Grant Sculk Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"sonic_boom"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"sonic_boom"}] run return 0

# Grant the Sculk Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Sculk Horn",color:"dark_aqua",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to unleash a devastating",color:"gray",italic:true},{text:"sonic boom like the Warden.",color:"gray",italic:true},{text:""},{text:"Requires: Sculk 4pc",color:"gold",italic:false}],instrument="minecraft:dream_goat_horn",custom_data={artifact_ability:"sonic_boom",artifact_set:"sculk"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Sculk 4pc: ",color:"dark_aqua"},{text:"Warden's Might + Sonic Boom",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Sculk Horn",color:"dark_aqua"},{text:"! Use it to activate Sonic Boom.",color:"gray"}]
playsound minecraft:entity.warden.ambient player @s ~ ~ ~ 0.3 0.8
