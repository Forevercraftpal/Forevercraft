# Dream Journal — 30 entries milestone: "Dream Chronicler"
tellraw @s {text:""}
tellraw @a [{text:"✦ ",color:"gold"},{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Dream Chronicler",color:"#AB47BC",bold:true}]
tellraw @s [{text:"  ",color:"gray"},{text:"30 dreams recorded. The realm remembers you.",color:"#B39DDB"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.1 30

# Unlock Dream Chronicler title (bit 1)
scoreboard players add @s ec.special_titles 2
