# Dream Rate Milestone Celebration (macro)
# Called with {title:"Name",dr:"X.0",color:"color"}

# Title
$title @s subtitle [{text:"Dream Rate reached ",color:"gray"},{text:"$(dr)",color:"$(color)",bold:true}]
$title @s title [{text:"✦ $(title) ✦",color:"$(color)",bold:true}]

# Sounds
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1.5
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.8

# Firework celebration
summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16777045],fade_colors:[I;11141290],has_trail:true,has_twinkle:true}],flight_duration:1}}}}

# Realm announcement
$tellraw @a [{text:"  DREAM MILESTONE",color:"$(color)",bold:true}]
$tellraw @a [{text:"  ✦ ",color:"$(color)"},{selector:"@s"},{text:" has become a ",color:"gray"},{text:"$(title)",color:"$(color)",bold:true},{text:"! (DR $(dr))",color:"gray"},{text:" ✦",color:"$(color)"}]
