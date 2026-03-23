# Spawn crate animation display — shared by all crate systems
# Macro args: $(tier), $(system_tag), $(plot_start), $(skin)
# Run at the position where the barrel is/will be, as any entity

$summon armor_stand ~0.5 ~ ~0.5 { Tags:["ec.crate_anim","ec.crate_new","ec.$(tier)","ec.$(system_tag)","ec.entity"], NoGravity:true, Invisible:true, Small:true, Invulnerable:true, DisabledSlots:4144959, Passengers:[{ id:"minecraft:item_display", CustomNameVisible:0b, Tags:["ec.entity","ec.crate_display"], view_range:1f, width:0f, height:0f, interpolation_duration:10, start_interpolation:-1, item_display:"head", transformation:{ left_rotation:[0f,0f,0f,1f], right_rotation:[0f,0f,0f,1f], translation:[0.0f,0.05f,0.0f], scale:[0.0f,0.0f,0.0f] }, brightness:{sky:10,block:10}, item:{ id:"minecraft:player_head", count:1, components:{ "minecraft:profile":{ id:[I;-1974477980,147736616,-1635819972,23806684], properties:[{name:"textures",value:"$(skin)"}] } } } }] }

# Rotate crate display to face the player
# @s is the player — get their Y rotation, snap to cardinal, apply opposite direction
# Quaternion [0, sin(θ/2), 0, cos(θ/2)] for Y-axis rotation
execute store result score #crate_rot adv.temp run data get entity @s Rotation[0]
# Player facing south (-45..44): crate front faces north → rotate 180°
execute if score #crate_rot adv.temp matches -45..44 as @e[type=armor_stand,tag=ec.crate_new,limit=1] on passengers run data modify entity @s transformation.left_rotation set value [0f,1f,0f,0f]
# Player facing west (45..134): crate front faces east → rotate -90°
execute if score #crate_rot adv.temp matches 45..134 as @e[type=armor_stand,tag=ec.crate_new,limit=1] on passengers run data modify entity @s transformation.left_rotation set value [0f,0.7071f,0f,-0.7071f]
# Player facing north (135..180 or -180..-135): default orientation, no rotation needed
# Player facing east (-134..-45): crate front faces west → rotate 90°
execute if score #crate_rot adv.temp matches -134..-45 as @e[type=armor_stand,tag=ec.crate_new,limit=1] on passengers run data modify entity @s transformation.left_rotation set value [0f,0.7071f,0f,0.7071f]

# Set animation countdown on the new armor_stand (use ec.crate_new tag to avoid targeting wrong entity)
$scoreboard players set @e[type=armor_stand,tag=ec.crate_new,limit=1] ec.crate_plot $(plot_start)
tag @e[type=armor_stand,tag=ec.crate_new,limit=1] remove ec.crate_new
