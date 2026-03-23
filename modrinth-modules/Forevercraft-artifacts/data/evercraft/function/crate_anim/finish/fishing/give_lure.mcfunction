# Fisherman's Dozing Lure — rare drop notification
# Run as animation armor_stand, at the barrel position
# Called when 0.1% chance hits — gives the lure + announces it

loot give @p loot evercraft:items/fishermans_dozing_lure

# Global announcement — this is a legendary find
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@p"},{text:" found the legendary "},{text:"Fisherman's Dozing Lure",color:"gold",bold:true},{text:"! (+1 permanent Dream Rate)"}]
playsound minecraft:ui.toast.challenge_complete master @p ~ ~ ~ 1 1.0
title @p subtitle {text:"Fisherman's Dozing Lure!",color:"gold",bold:true}
title @p title {text:"\uD83C\uDFA3",color:"gold"}
