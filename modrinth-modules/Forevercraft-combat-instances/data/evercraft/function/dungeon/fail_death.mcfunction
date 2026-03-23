# Dungeon Instance System — Fail (Player Died)

# Totem pop visual (death intercepted)
execute as @a[tag=dg.player] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
execute as @a[tag=dg.player] at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Failure title (player may see this on respawn screen)
title @a[tag=dg.player] times 10 60 20
title @a[tag=dg.player] title {text:"DUNGEON FAILED",color:"dark_red",bold:true}
title @a[tag=dg.player] subtitle {text:"You have fallen...",color:"red"}

# Chat
tellraw @a [{text:"[Dungeon] ",color:"dark_purple"},{selector:"@a[tag=dg.player]"},{text:"'s dungeon challenge has ended — they have fallen!",color:"red"}]

# Sounds (play to all nearby since player is dead)
execute at @e[type=marker,tag=dg.center,limit=1] run playsound minecraft:entity.wither.death master @a[distance=..64] ~ ~ ~ 0.5 0.5

# Cleanup
function evercraft:dungeon/cleanup
