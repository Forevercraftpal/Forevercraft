$execute as $(name) run function evercraft:treasure/treasure/player/update/mythical

$tellraw @a ["",{selector:"$(name)",bold:false,color:"gold"},{text:" has found a "},{text:"Mythical Armor Treasure",bold:false,color:"#8d0000"},{text:"!"}]

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/mythical/armor",CustomName:{text:" Mythical Armor Treasure",color:"#8d0000",bold:false,italic:false}} destroy

summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["ec.entity","ec.marker","ec.mythical","smithed.entity","smithed.strict"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Mythical Armor Treasure",color:"#990000",italic:false}]}

ride @n[type=text_display] mount @s

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0.05 50 force

execute if score #disable_global ec.constant matches 0 run playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 0 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..30] ~ ~ ~ 1 0 1