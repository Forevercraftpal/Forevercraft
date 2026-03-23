# Blood - Grant Blood Horn ability item
execute if items entity @s hotbar.* goat_horn[custom_data~{artifact_ability:"crimson_burst"}] run return 0
execute if items entity @s inventory.* goat_horn[custom_data~{artifact_ability:"crimson_burst"}] run return 0

give @s goat_horn[enchantment_glint_override=true,custom_name={text:"Blood Horn",color:"dark_red",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"Blow to unleash the crimson",color:"gray",italic:true},{text:"fury within your veins.",color:"gray",italic:true},{text:""},{text:"Requires: Blood 4pc",color:"gold",italic:false}],instrument="minecraft:call_goat_horn",custom_data={artifact_ability:"crimson_burst",artifact_set:"blood"}]

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Blood 4pc: ",color:"dark_red"},{text:"Blood Frenzy + Crimson Burst",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Blood Horn",color:"dark_red"},{text:"! Use it to activate Crimson Burst.",color:"gray"}]
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 0.5 0.8
