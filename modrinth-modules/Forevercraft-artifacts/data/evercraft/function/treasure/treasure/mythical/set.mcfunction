# Spawn unified Mythical Treasure chest
$execute as $(name) run function evercraft:treasure/treasure/player/update/mythical

$title $(name) subtitle {text:"You found a MYTHICAL treasure!",color:"dark_purple",bold:true}
$title $(name) title {text:"⚡",color:"dark_purple",bold:true}
$execute as $(name) at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 2 1 1

$tellraw @a ["",{selector:"$(name)",bold:false,color:"gold"},{text:" has found a "},{text:"Mythical Treasure",bold:true,color:"gold"},{text:"!"}]

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/mythical/mythical",CustomName:{text:" Mythical Treasure",color:"gold",bold:true,italic:false}} destroy

summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["ec.entity","ec.marker","ec.mythical_display","smithed.entity","smithed.strict"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Mythical Treasure",color:"gold",bold:true,italic:false}]}

ride @n[type=text_display] mount @s

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0.05 50 force

# Mythical announcement sound (3x anvil sound)
execute if score #disable_global ec.constant matches 0 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5 1
execute if score #disable_global ec.constant matches 0 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.75 1
execute if score #disable_global ec.constant matches 0 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.0 1
execute if score #disable_global ec.constant matches 0 run playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 0 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:block.anvil.land master @a[distance=..30] ~ ~ ~ 1 0.5 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:block.anvil.land master @a[distance=..30] ~ ~ ~ 1 0.75 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:block.anvil.land master @a[distance=..30] ~ ~ ~ 1 1.0 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..30] ~ ~ ~ 1 0 1

# Campfire Stories — record mythical find
data modify storage evercraft:campfire temp.artifact set value "a Mythical Treasure"
$execute as $(name) run function evercraft:campfire_stories/record/mythical_find

# Dream Echo — permanent wisp at this mythical find location
function evercraft:dream_echoes/spawn
