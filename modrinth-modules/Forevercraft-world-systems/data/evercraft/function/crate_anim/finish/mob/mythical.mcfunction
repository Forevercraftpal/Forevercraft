# Mob Crate Finish — Mythical
# Run as animation armor_stand, at the barrel position
# Mythical = gold

data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Mythical Mob Crate",color:"gold",italic:false}}
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.6 0.6 0.6 0.5 60 force
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.5 0.5 0.1 30 force
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 2 100 force
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.2 1
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5 1
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.75 1
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.0 1
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 0.8

# Title for nearest player
title @p[distance=..32] subtitle {text:"MYTHICAL Mob Crate!",color:"gold",bold:true}
title @p[distance=..32] title {text:"⚡",color:"gold",bold:true}

# Global announcement
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@p[distance=..32]"},{text:" found a "},{text:"MYTHICAL Mob Crate",color:"gold",bold:true},{text:"!"}]

# Campfire Stories — record mythical find
data modify storage evercraft:campfire temp.artifact set value "a Mythical Mob Crate"
execute as @p[distance=..32] run function evercraft:campfire_stories/record/mythical_find

# Companion memory: Treasure Found + Mythical Discovery
execute as @p[distance=..32,tag=companion.activepet] run function evercraft:companions/memories/on_mythical_crate
execute as @p[distance=..32,tag=companion.activepet] run function evercraft:companions/memories/on_mythical_artifact

# Dream Echo — permanent wisp at this mythical find location
function evercraft:dream_echoes/spawn

# Realm milestone: mythical find
execute as @p[distance=..32] run function evercraft:milestones/increment/mythical_found

# Anecdote: Beastkeeper's (once per player)
execute as @p[distance=..16] unless score @s ec.anec_beast matches 1 run function evercraft:anecdotes/give_beastkeepers
