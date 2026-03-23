$execute as $(name) run function evercraft:treasure/treasure/player/update/mythical

$title $(name) subtitle {text:"You found an MYTHICAL treasure!",color:"gold",bold:true}
$title $(name) title {text:"⚡",color:"gold",bold:true}
$execute as $(name) at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 2 1 1

$tellraw @a ["",{selector:"$(name)",bold:false,color:"gold"},{text:" has found a "},{text:"Mythical Mountain Treasure",bold:false,color:"#C27721"},{text:"!"}]

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/mythical/mythical",CustomName:{text:" Mythical Mountain Treasure",color:"#8F481F",bold:false,italic:false}} destroy

summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["ec.entity","ec.marker","ec.mythical_display","smithed.entity","smithed.strict"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Mountain Mythical",color:"#C27721",italic:false}]}

ride @n[type=text_display] mount @s

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 50 force

function evercraft:treasure/particles/earth_sphere

playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 10 0.6 1
execute if score #disable_global ec.constant matches 0 run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1 0.6 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:entity.iron_golem.death master @a[distance=..30] ~ ~ ~ 1 0.6 1
# Mythical announcement (3x anvil sound)
execute if score #disable_global ec.constant matches 0 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5 1
execute if score #disable_global ec.constant matches 0 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.75 1
execute if score #disable_global ec.constant matches 0 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.0 1
