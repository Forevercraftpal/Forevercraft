# TREASURE DATA - Scoreboard-based (no enchantments)
$summon armor_stand ~ ~ ~ { Tags:["ec.$(tier)","ec.$(biome)","ec.marker","ec.entity","ec.treasure_container","ec.new","ec.despawn_$(despawn)","smithed.entity","smithed.strict"], NoGravity:true, Invisible:true, Team:"ec.hit", Small:true, Invulnerable:true, DisabledSlots:4144959, equipment:{feet:{id:"minecraft:acacia_button",count:1,components:{"minecraft:custom_data":{name:"$(player)"}}}}, Passengers:[{ id:"minecraft:item_display", CustomNameVisible:0b, Tags:["ec.entity","ec.marker","smithed.entity","smithed.strict"], view_range:1f, width:0f, height:0f, interpolation_duration: $(spawn_duration), item_display:"head", transformation:{ (facing), translation:[0.0f,0.05f,0.0f], scale:[0.0f,0.0f,0.0f] }, brightness:{sky:10,block:10}, item:{ id:"minecraft:player_head", count:1, components:{ "minecraft:profile":{ id:[I;-1974477980,147736616,-1635819972,23806684], properties:[{name:"textures",value:"$(skin)"}] } } } }] }

$scoreboard players set @e[type=armor_stand,tag=ec.new,limit=1] ec.plot $(animation)
# Initialize container timers
scoreboard players set @e[type=armor_stand,tag=ec.new,limit=1] ec.container_timer 0
scoreboard players set @e[type=armor_stand,tag=ec.new,limit=1] ec.container_lifetime 0
tag @e[type=armor_stand,tag=ec.new,limit=1] remove ec.new