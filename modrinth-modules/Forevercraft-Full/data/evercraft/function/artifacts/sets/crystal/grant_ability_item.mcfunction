# Crystal - Grant Prism Horn ability item
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"crystal_shatter"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"crystal_shatter"}] run return 0

give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Prism Horn",color:"light_purple",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to shatter the air",color:"gray",italic:true},{text:"with crystalline energy.",color:"gray",italic:true},{text:""},{text:"Requires: Crystal 4pc",color:"gold",italic:false}],instrument="minecraft:yearn_goat_horn",custom_data={artifact_ability:"crystal_shatter",artifact_set:"crystal"}]

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Crystal 4pc: ",color:"light_purple"},{text:"Prism Shield + Crystal Shatter",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Prism Horn",color:"light_purple"},{text:"! Use it to activate Crystal Shatter.",color:"gray"}]
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.5 1
