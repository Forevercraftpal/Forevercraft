# World Milestones — Announce (macro)
# Called with: {name:"...", desc:"...", reward:"..."}

tellraw @a [{text:"\n"},{text:"  "},{"text":"WORLD MILESTONE ACHIEVED","color":"gold","bold":true}]
$tellraw @a [{text:"  "},{"text":"$(name)","color":"yellow","italic":true}]
$tellraw @a [{text:"  "},{"text":"$(desc)","color":"gray"}]
$tellraw @a [{text:"  "},{"text":"Reward: ","color":"dark_gray"},{"text":"$(reward)","color":"green"}]
tellraw @a [{text:"  "},{text:"Open ",color:"gray"},{text:"Codex \u00bb Journal \u00bb Milestones",color:"#E0B0FF"},{text:" to claim!",color:"gray"}]
tellraw @a [{text:""}]

# Coin reward (realm-wide)
function evercraft:coins/milestone_reward

# Sound + fireworks for all online players
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 0.8 1.2
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:1b,explosions:[{shape:"large_ball",colors:[16766720,16755200],has_trail:true}]}}}}
execute as @a at @s run summon firework_rocket ~ ~ ~ {LifeTime:5,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{fireworks:{flight_duration:2b,explosions:[{shape:"star",colors:[16766720],fade_colors:[16777215],has_twinkle:true}]}}}}
