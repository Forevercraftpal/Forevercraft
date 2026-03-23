# Village Entering Notification — RPG Restyle (S69, fixed S79)
# Called with entity @n[armor_stand, bestiary.village.name]
# $(CustomName) = text component with village name in biome color (PascalCase — entity NBT)
# Only lines using $(CustomName) need $ prefix — non-macro lines must NOT have $ to ensure
# tag swap always executes even if macro expansion has issues

# Title mode: "~ Village ~" as main title (higher), village name as subtitle below
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run title @s times 20 60 40
$execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run title @s title [{text:"◆ ",color:"#D6D0C7"},$(CustomName),{text:" ◆",color:"#D6D0C7"}]
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run title @s subtitle {text:"~ Village ~",color:"gray",italic:true}

# Actionbar mode: compact single-line with decorative brackets
$execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"actionbar"} run title @s actionbar [{text:"◆ ",color:"#D6D0C7"},$(CustomName),{text:" ◆",color:"#D6D0C7"}]

# Chat mode: bordered box
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"chat"} run tellraw @s {text:"  ═══════════════════════",color:"#5C4033"}
$execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"chat"} run tellraw @s [{text:"  ◆ ",color:"#D6D0C7"},$(CustomName)]
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"chat"} run tellraw @s {text:"  ═══════════════════════",color:"#5C4033"}

# Sound: atmospheric bell toll
playsound minecraft:block.bell.use neutral @s ~ ~ ~ 0.4 0.6

# Save village name to storage so exit notification can display it
$data modify storage eden:temp village.last_visited set value $(CustomName)

tag @s add at_village
tag @s remove not_at_village
