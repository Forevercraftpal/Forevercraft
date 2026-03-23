# Realm Milestone Complete: Eternal Legacy — All 31 other milestones complete
scoreboard players set #rm_done_34 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Eternal Legacy",desc:"Every milestone has been achieved. This realm is legendary!",reward:"Mythical Crate x3 + permanent +2.0 DR realm bonus"}
function evercraft:milestones/announce with storage evercraft:milestones temp

# Triple mythical crate

# Massive DR bonus
function evercraft:milestones/complete/apply_dr_bonus {amount:20}

# Extra celebration — triple fireworks + unique sounds
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:3b,explosions:[{shape:"large_ball",colors:[16766720,16711680,65280],has_trail:true,has_twinkle:true},{shape:"star",colors:[16777215,16766720],fade_colors:[16711935],has_trail:true}]}}}}
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:2b,explosions:[{shape:"burst",colors:[65535,16711935,16766720],has_trail:true,has_twinkle:true}]}}}}
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:3b,explosions:[{shape:"large_ball",colors:[16766720],fade_colors:[16777215],has_trail:true,has_twinkle:true},{shape:"star",colors:[16711680,65280,255],has_twinkle:true}]}}}}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 0.8
execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3 1.5
