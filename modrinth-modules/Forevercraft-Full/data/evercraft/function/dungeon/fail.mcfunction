# Dungeon Instance System — Fail (Time Ran Out)

# Failure title
title @a[tag=dg.player] times 10 60 20
title @a[tag=dg.player] title {text:"TIME'S UP!",color:"dark_red",bold:true}
title @a[tag=dg.player] subtitle {text:"The dungeon has overwhelmed you...",color:"red"}

# Chat
tellraw @a [{text:"[Dungeon] ",color:"dark_purple"},{selector:"@a[tag=dg.player]"},{text:"'s dungeon challenge has ended — time ran out!",color:"red"}]

# Sounds
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 0.5
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.3 0.5

# Cleanup
function evercraft:dungeon/cleanup
