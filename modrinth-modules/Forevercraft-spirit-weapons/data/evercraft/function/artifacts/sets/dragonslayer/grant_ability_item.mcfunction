# Dragonslayer - Grant Dragon Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"dragon_flight"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"dragon_flight"}] run return 0

# Grant the Dragon Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Dragon Horn",color:"light_purple",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to soar through the sky",color:"gray",italic:true},{text:"on dragon's wings.",color:"gray",italic:true},{text:""},{text:"Requires: Dragonslayer 4pc",color:"gold",italic:false}],instrument="minecraft:ponder_goat_horn",custom_data={artifact_ability:"dragon_flight",artifact_set:"dragonslayer"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonslayer 4pc: ",color:"light_purple"},{text:"Fire Immunity + Dragon's Flight",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Dragon Horn",color:"light_purple"},{text:"! Use it to activate Dragon's Flight.",color:"gray"}]
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 0.5 1.5
