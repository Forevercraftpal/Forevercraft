# Gilded Tyrant — Gold Bomb Impact
# Called per tick to check if bomb armor stands have landed (on ground = no gravity drift)
# Armor stands with NoGravity:0b fall, then land and stop — detect via OnGround:1b

# Falling particles while in air
execute as @e[type=armor_stand,tag=ec.rd_gt_bomb,nbt={OnGround:0b}] at @s run particle minecraft:dust{color:[1.0,0.84,0.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 3

# On landing: explode and kill the bomb
execute as @e[type=armor_stand,tag=ec.rd_gt_bomb,nbt={OnGround:1b}] at @s as @a[tag=ec.rd_participant,distance=..3] run damage @s 6 minecraft:falling_block
execute as @e[type=armor_stand,tag=ec.rd_gt_bomb,nbt={OnGround:1b}] at @s run particle minecraft:dust{color:[1.0,0.84,0.0],scale:2.0} ~ ~ ~ 2 0.5 2 0.1 15
execute as @e[type=armor_stand,tag=ec.rd_gt_bomb,nbt={OnGround:1b}] at @s run playsound minecraft:entity.generic.explode hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 0.8 0.8
kill @e[type=armor_stand,tag=ec.rd_gt_bomb,nbt={OnGround:1b}]
