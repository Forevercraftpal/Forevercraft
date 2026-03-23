# Celestial - Grant Star Horn ability item
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"meteor_strike"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"meteor_strike"}] run return 0

give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Star Horn",color:"white",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to call down meteors",color:"gray",italic:true},{text:"from the heavens above.",color:"gray",italic:true},{text:""},{text:"Requires: Celestial 4pc",color:"gold",italic:false}],instrument="minecraft:ponder_goat_horn",custom_data={artifact_ability:"meteor_strike",artifact_set:"celestial"}]

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Celestial 4pc: ",color:"white"},{text:"Star Shield + Meteor Strike",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Star Horn",color:"white"},{text:"! Use it to activate Meteor Strike.",color:"gray"}]
playsound minecraft:entity.firework_rocket.twinkle player @s ~ ~ ~ 0.5 1
