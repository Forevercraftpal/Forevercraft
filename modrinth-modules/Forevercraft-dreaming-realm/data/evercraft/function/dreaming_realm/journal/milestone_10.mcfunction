# Dream Journal — 10 entries milestone: "Dreamkeeper"
tellraw @s {text:""}
tellraw @a [{text:"✦ ",color:"gold"},{selector:"@s",color:"white"},{text:" has earned the title: ",color:"gray"},{text:"Dreamkeeper",color:"#CE93D8",bold:true}]
tellraw @s [{text:"  ",color:"gray"},{text:"10 dreams recorded in your journal.",color:"#B39DDB"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2

# Unlock Dreamkeeper title (bit 0)
scoreboard players add @s ec.special_titles 1
