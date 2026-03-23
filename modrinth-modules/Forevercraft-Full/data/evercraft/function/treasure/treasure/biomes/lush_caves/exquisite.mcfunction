$execute as $(name) run function evercraft:treasure/treasure/player/update/exquisite

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/lush_caves/exquisite",CustomName:{text:"Exquisite Lush Cave Treasure",color:"#4EDE37",bold:false,italic:false}} destroy

summon text_display ~ ~0.525 ~ {view_range:1f,shadow:1b,see_through:1b,background:16762378,billboard:"vertical",alignment:"center",Tags:["ec.entity","ec.marker","ec.exquisite_display","smithed.entity","smithed.strict"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f],brightness:{sky:10,block:10},text:[{text:"Lush Caves Exquisite",color:"#1BDE1B",italic:false}]}

ride @n[type=text_display] mount @s

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 50 force

function evercraft:treasure/particles/composter_sphere

execute if score #disable_global ec.constant matches 0 run playsound minecraft:entity.glow_squid.death master @a ~ ~ ~ 2 0.1 1
execute if score #disable_global ec.constant matches 1.. run playsound minecraft:entity.glow_squid.death master @a[distance=..30] ~ ~ ~ 2 0.1 1