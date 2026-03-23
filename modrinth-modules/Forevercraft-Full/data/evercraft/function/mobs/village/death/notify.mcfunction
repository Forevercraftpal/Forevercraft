# Villager Death Notification (S69)
# Called as the village armor stand, with entity @s for macro
# $(CustomName) = village name text component
# Position context: at the armor stand (village bell location)

# Title mode
execute if data storage eden:settings bestiary.villager_settings{death_msg:"title"} as @a[distance=..96] run title @s times 10 40 20
execute if data storage eden:settings bestiary.villager_settings{death_msg:"title"} as @a[distance=..96] run title @s title {text:""}
$execute if data storage eden:settings bestiary.villager_settings{death_msg:"title"} as @a[distance=..96] run title @s subtitle [{text:"A villager of ",color:"gray",italic:true},$(CustomName),{text:" has fallen.",color:"gray",italic:true}]

# Actionbar mode
$execute if data storage eden:settings bestiary.villager_settings{death_msg:"actionbar"} as @a[distance=..96] run title @s actionbar [{text:"A villager of ",color:"gray"},$(CustomName),{text:" has fallen.",color:"gray"}]

# Chat mode (default)
$execute if data storage eden:settings bestiary.villager_settings{death_msg:"chat"} run tellraw @a[distance=..96] [{text:"  A villager of ",color:"gray"},$(CustomName),{text:" has fallen.",color:"gray"}]

# Sound: somber tone
execute as @a[distance=..96] at @s run playsound minecraft:block.bell.resonate neutral @s ~ ~ ~ 0.3 0.5
