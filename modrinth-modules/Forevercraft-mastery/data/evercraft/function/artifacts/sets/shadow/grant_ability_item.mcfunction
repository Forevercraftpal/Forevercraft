# Shadow - Grant Shadow Horn ability item
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"assassinate"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"assassinate"}] run return 0

give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Shadow Horn",color:"dark_gray",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to vanish and strike",color:"gray",italic:true},{text:"from the shadows.",color:"gray",italic:true},{text:""},{text:"Requires: Shadow 4pc",color:"gold",italic:false}],instrument="minecraft:sing_goat_horn",custom_data={artifact_ability:"assassinate",artifact_set:"shadow"}]

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Shadow 4pc: ",color:"dark_gray"},{text:"Shadow Cloak + Assassinate",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Shadow Horn",color:"dark_gray"},{text:"! Use it to activate Assassinate.",color:"gray"}]
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.3 0.5
