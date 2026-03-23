$execute as $(name) run function evercraft:treasure/treasure/player/update/exquisite

$title $(name) subtitle {text:"You found an EXQUISITE treasure!",color:"#8c0691",bold:true}
$title $(name) title {text:"⚡",color:"#8c0691",bold:true}
$execute as $(name) at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 2 1 1

$tellraw @a ["",{selector:"$(name)",bold:false,color:"#8c0691"},{text:" has found a "},{text:"Exquisite Swamp Treasure",bold:false,color:"#326B2C"},{text:"!"}]

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/swamp/exquisite",CustomName:{text:"   Exquisite Swamp Treasure",color:"#2E4709",bold:false,italic:false}} destroy

summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["ec.entity","ec.marker","ec.exquisite_display","smithed.entity","smithed.strict"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Swamp Exquisite",color:"#326B2C",italic:false}]}

ride @n[type=text_display] mount @s

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 50 force

function evercraft:treasure/particles/witch_sphere

execute if score #disable_global ec.constant matches 0 run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 0.1 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..30] ~ ~ ~ 1 0.1 1