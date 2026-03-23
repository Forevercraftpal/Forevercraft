# Village Exiting Notification — RPG Restyle (S69, S79)
# $(last_visited) = village name text component, saved to storage when player entered

# Subtle exit notification — "Farewell" title with village name below
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run title @s times 10 30 20
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run title @s title {text:"~ Farewell ~",color:"gray",italic:true}
$execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run title @s subtitle [{text:"◆ ",color:"#D6D0C7"},$(last_visited),{text:" ◆",color:"#D6D0C7"}]

# Subtle exit sound
execute unless data storage eden:settings bestiary.villager_settings{villagename_msg:"disabled"} run playsound minecraft:block.amethyst_block.fall neutral @s ~ ~ ~ 0.3 0.8

tag @s add not_at_village
tag @s remove at_village
