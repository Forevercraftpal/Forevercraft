# ============================================================
# Hearthstone — Spawn visual overlay (player_head on item_display)
# Macro function: requires temp_skin in evercraft:housing storage
# Same pattern as guidestone/spawn_display
# Run at: the lodestone block position (block-aligned)
# ============================================================

$summon armor_stand ~0.5 ~ ~0.5 { Tags:["HS.Stand","HS.Display","ec.block_new","smithed.entity"], NoGravity:true, Invisible:true, Small:true, Invulnerable:true, DisabledSlots:4144959, Passengers:[{ id:"minecraft:item_display", Tags:["HS.Display","smithed.entity"], brightness:{sky:15,block:15}, view_range:1f, width:0f, height:0f, item_display:"head", transformation:{ left_rotation:[0f,0f,0f,1f], right_rotation:[0f,0f,0f,1f], translation:[0.0f,0.05f,0.0f], scale:[2.05f,2.1f,2.05f] }, item:{ id:"minecraft:player_head", count:1, components:{ "minecraft:profile":{ id:[I;-1974477980,147736616,-1635819972,23806684], properties:[{name:"textures",value:"$(temp_skin)"}] } } } }] }

# Rotate display to face the player (@s = placing player)
execute store result score #crate_rot adv.temp run data get entity @s Rotation[0]
execute if score #crate_rot adv.temp matches -45..44 as @e[type=armor_stand,tag=ec.block_new,limit=1] on passengers run data modify entity @s transformation.left_rotation set value [0f,1f,0f,0f]
execute if score #crate_rot adv.temp matches 45..134 as @e[type=armor_stand,tag=ec.block_new,limit=1] on passengers run data modify entity @s transformation.left_rotation set value [0f,0.7071f,0f,-0.7071f]
execute if score #crate_rot adv.temp matches -134..-45 as @e[type=armor_stand,tag=ec.block_new,limit=1] on passengers run data modify entity @s transformation.left_rotation set value [0f,0.7071f,0f,0.7071f]
tag @e[type=armor_stand,tag=ec.block_new,limit=1] remove ec.block_new
