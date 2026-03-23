$data modify entity @s equipment.head set value {id:"minecraft:player_head",count:1,components:{profile:{name:"$(name)",properties:$(properties),id:$(id)}}}
$data modify entity @s CustomName set value "$(name)"
tag @s add ec.playerhead

data modify entity @s drop_chances.head set value 0.080F