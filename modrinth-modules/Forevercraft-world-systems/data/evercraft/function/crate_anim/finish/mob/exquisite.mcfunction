# Mob Crate Finish — Exquisite
# Run as animation armor_stand, at the barrel position
# Exquisite = purple #8c0691

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Exquisite Mob Crate",color:"light_purple",italic:false}}
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.3 40 force
particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 50 force
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.2 1
playsound minecraft:ui.toast.challenge_complete master @a[distance=..48] ~ ~ ~ 0.7 1.2

# Title for nearest player
title @p[distance=..32] subtitle {text:"Exquisite Mob Crate!",color:"#8c0691",bold:true}
title @p[distance=..32] title {text:"⚡",color:"#8c0691",bold:true}

# Global announcement
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@p[distance=..32]"},{text:" found an "},{text:"Exquisite Mob Crate",color:"#8c0691",bold:true},{text:"!"}]

# Anecdote: Beastkeeper's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_beast matches 1 run function evercraft:anecdotes/give_beastkeepers
