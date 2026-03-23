# Tempest - Grant Tidal Horn ability item
# Called when player first equips 4pc set
# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"tidal_call"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"tidal_call"}] run return 0
# Grant the Tidal Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Tidal Horn",color:"light_purple",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to grant Luck of the Sea V",color:"gray",italic:true},{text:"to all nearby allies.",color:"gray",italic:true},{text:""},{text:"Requires: Tempest 4pc",color:"gold",italic:false}],instrument="minecraft:dream_goat_horn",custom_data={artifact_ability:"tidal_call",artifact_set:"titan"}]
# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 4pc: ",color:"light_purple"},{text:"Tidal Horn — Buff nearby allies",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Tidal Horn",color:"light_purple"},{text:"! Use it to empower your allies.",color:"gray"}]
playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.5 0.8
