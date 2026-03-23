# Realm Milestone Complete: Eternal Vow — First marriage
scoreboard players set #rm_done_15 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Eternal Vow",desc:"The realm's first marriage has been consecrated!",reward:"Mythical Crate + wedding fireworks for all"}
function evercraft:milestones/announce with storage evercraft:milestones temp

# Grand wedding fireworks for all online players
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:2b,explosions:[{shape:"star",colors:[16711935,16761035],fade_colors:[16777215],has_trail:true,has_twinkle:true}]}}}}
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:3b,explosions:[{shape:"large_ball",colors:[16711680,16753920],has_trail:true},{shape:"star",colors:[16777215,16761035],has_twinkle:true}]}}}}
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:2b,explosions:[{shape:"burst",colors:[16711935,65535],fade_colors:[16761035],has_trail:true,has_twinkle:true}]}}}}
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1.0 0.8
