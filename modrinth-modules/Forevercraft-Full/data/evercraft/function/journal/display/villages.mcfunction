# ============================================================
# Journal Display — Villages Page
# Shows village discovery count
# ============================================================

tellraw @s ""
tellraw @s [{text:"═══ ",color:"gold"},{text:"VILLAGES",color:"gold",bold:true},{text:" ═══",color:"gold"}]
tellraw @s ""

tellraw @s [{text:"  Villages Discovered: ",color:"dark_aqua"},{score:{name:"@s",objective:"jn.village_count"},color:"white",bold:true}]
tellraw @s ""
tellraw @s [{text:"  Villages are discovered automatically when you",color:"gray"}]
tellraw @s [{text:"  enter a village with an active quest board.",color:"gray"}]
tellraw @s [{text:"  Each unique village counts toward your total.",color:"gray"}]
tellraw @s ""

# Show milestone progress
execute if score @s jn.village_count matches ..4 run tellraw @s [{text:"  Next milestone: ",color:"gray"},{text:"5 villages",color:"yellow"},{text:" — Keep exploring!",color:"gray"}]
execute if score @s jn.village_count matches 5..9 run tellraw @s [{text:"  Next milestone: ",color:"gray"},{text:"10 villages",color:"yellow"},{text:" — You're a seasoned traveler!",color:"gray"}]
execute if score @s jn.village_count matches 10..19 run tellraw @s [{text:"  Next milestone: ",color:"gray"},{text:"20 villages",color:"gold"},{text:" — Master cartographer!",color:"gray"}]
execute if score @s jn.village_count matches 20.. run tellraw @s [{text:"  ★ ",color:"gold"},{text:"Master Cartographer",color:"gold",bold:true},{text:" — You've mapped the world!",color:"yellow"}]

tellraw @s ""
tellraw @s [{text:"  ",color:"gray"},{text:"[Back to Journal]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 1"},hover_event:{action:show_text,value:"Return to overview"}}]
tellraw @s [{text:"═══════════════════════════",color:"gold"}]

playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.5 1.0
