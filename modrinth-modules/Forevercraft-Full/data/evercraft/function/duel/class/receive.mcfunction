# Class Duel — Receive (runs as target)
# Show invite with selected class name

tellraw @s [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @s [{text:"  ",color:"gold"},{selector:"@a[tag=duel.challenger]",color:"aqua",bold:true},{text:" challenges you to a ",color:"yellow"},{text:"Class Duel",color:"light_purple",bold:true},{text:"!",color:"yellow"}]
# Show class name based on ID
execute if score @s ec.duel_class matches 1 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Rogue",color:"green",bold:true}]
execute if score @s ec.duel_class matches 2 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Berserker",color:"red",bold:true}]
execute if score @s ec.duel_class matches 3 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Dancer",color:"light_purple",bold:true}]
execute if score @s ec.duel_class matches 4 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Striker",color:"gold",bold:true}]
execute if score @s ec.duel_class matches 5 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Knight",color:"white",bold:true}]
execute if score @s ec.duel_class matches 6 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Healer",color:"aqua",bold:true}]
execute if score @s ec.duel_class matches 7 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Beastlord",color:"dark_green",bold:true}]
execute if score @s ec.duel_class matches 8 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Javelin",color:"yellow",bold:true}]
execute if score @s ec.duel_class matches 10 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Archer",color:"dark_aqua",bold:true}]
execute if score @s ec.duel_class matches 11 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Hunter",color:"dark_red",bold:true}]
execute if score @s ec.duel_class matches 14 run tellraw @s [{text:"  Weapon class: ",color:"gray"},{text:"Dual Swordsman",color:"gold",bold:true}]
tellraw @s [{text:""}]
tellraw @s [{text:"  "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.duel set 5"},hover_event:{action:"show_text",value:{text:"Accept class duel",color:"gray"}}},{text:"  "},{text:"[Decline]",color:"red",click_event:{action:"run_command",command:"/trigger ec.duel set -1"},hover_event:{action:"show_text",value:{text:"Decline the duel",color:"gray"}}}]
tellraw @s [{text:"  Expires in 60 seconds",color:"dark_gray",italic:true}]
tellraw @s [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.5
