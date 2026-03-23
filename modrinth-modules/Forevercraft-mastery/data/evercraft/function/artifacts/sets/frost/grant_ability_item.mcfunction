# Frost - Grant Frost Horn ability item
# Called when player first equips 4pc set

# Check if player already has the horn
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"blizzard"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"blizzard"}] run return 0

# Grant the Frost Horn
give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Frost Horn",color:"aqua",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to summon a freezing",color:"gray",italic:true},{text:"blizzard around you.",color:"gray",italic:true},{text:""},{text:"Requires: Frost 4pc",color:"gold",italic:false}],instrument="minecraft:yearn_goat_horn",custom_data={artifact_ability:"blizzard",artifact_set:"frost"}]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Frost 4pc: ",color:"aqua"},{text:"Ice Aura + Blizzard",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Frost Horn",color:"aqua"},{text:"! Use it to activate Blizzard.",color:"gray"}]
playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 0.5 0.5
