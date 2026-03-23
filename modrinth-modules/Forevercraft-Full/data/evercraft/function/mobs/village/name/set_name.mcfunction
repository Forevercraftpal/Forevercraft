$execute positioned $(x) $(y) $(z) unless entity @e[type=armor_stand,tag=bestiary.village.name,distance=..96] if block ~ ~ ~ minecraft:bell run summon armor_stand ~ ~ ~ {data:{bestiary:{locator_bar:{icon:"bell",color:"$(waypoint_color)"}}},attributes:[{id:"minecraft:waypoint_transmit_range",base:$(waypoint_range)}],Small:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["bestiary.village.name","bestiary.village.new"],CustomName:{"bold":false,"color":"#$(color)","italic":false,"text":"$(name)"}}

# Assign village ID to newly created village marker (for quest reputation system)
$execute positioned $(x) $(y) $(z) as @e[type=armor_stand,tag=bestiary.village.new,distance=..3,limit=1] run function evercraft:quests/reputation/assign_village_id
$execute positioned $(x) $(y) $(z) run tag @e[type=armor_stand,tag=bestiary.village.new,distance=..3,limit=1] remove bestiary.village.new

$execute positioned $(x) $(y) $(z) if data storage eden:settings bestiary.misc{locator_assets:"disabled"} run waypoint modify @n[type=minecraft:armor_stand,distance=..3,tag=bestiary.village.name] color hex $(waypoint_color)
$execute positioned $(x) $(y) $(z) if data storage eden:settings bestiary.misc{locator_assets:"enabled"} run waypoint modify @n[type=minecraft:armor_stand,distance=..3,tag=bestiary.village.name] style set evercraft:mobs/bell
$execute positioned $(x) $(y) $(z) if data storage eden:settings bestiary.misc{locator_assets:"enabled"} run waypoint modify @n[type=minecraft:armor_stand,distance=..3,tag=bestiary.village.name] color white