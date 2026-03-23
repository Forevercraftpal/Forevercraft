# Dragonmaster - Grant Dragon Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"dragon_summon"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"dragon_summon"}] run return 0

# Grant the Dragon Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Dragon Horn",color:"light_purple",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to summon the wrath",color:"gray",italic:true},{text:"of an ancient dragon.",color:"gray",italic:true},{text:""},{text:"Requires: Dragonmaster 4pc",color:"gold",italic:false}],instrument="minecraft:admire_goat_horn",custom_data={artifact_ability:"dragon_summon",artifact_set:"dragonmaster"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonmaster 4pc: ",color:"light_purple"},{text:"Dragon Horn — Summon dragon ally",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Dragon Horn",color:"light_purple"},{text:"! Use it to unleash dragonfire.",color:"gray"}]
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 0.5 0.8
