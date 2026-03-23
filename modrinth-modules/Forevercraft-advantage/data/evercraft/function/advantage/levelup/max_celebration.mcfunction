# Advantage Tree — Max Level (25) Celebration
# Called with macro: $(tree_name) = display name, $(tree_score) checked before call
# Run as the player who just hit 25

# Realm-wide announcement
tellraw @a [{text:""},{"text":"  ★ ","color":"gold"},{"selector":"@s","color":"white","bold":true},{"text":" has mastered ","color":"gold"},{"text":"$(tree_name)","color":"aqua","bold":true},{"text":"!","color":"gold"},{"text":" ★","color":"gold"}]

# Fireworks at the player's location (3 bursts)
execute at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16762880,16733440],has_trail:true,has_twinkle:true}],flight_duration:1}}}}
execute at @s run summon firework_rocket ~1 ~1 ~1 {LifeTime:5,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;5636095],has_trail:true}],flight_duration:1}}}}
execute at @s run summon firework_rocket ~-1 ~1 ~-1 {LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16762880,5636095,16733440],has_trail:true,has_twinkle:true}],flight_duration:2}}}}

# Personal title
title @s times 10 60 20
title @s title [{text:"MASTERED",color:"gold",bold:true}]
title @s subtitle [{text:"$(tree_name)",color:"aqua"}]

# Sound
execute at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
