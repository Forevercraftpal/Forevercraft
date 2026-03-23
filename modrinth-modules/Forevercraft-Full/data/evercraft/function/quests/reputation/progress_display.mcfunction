# Profession Progress Bars — Show village reputation status
# Run as player (triggered from stats menu or command)

tellraw @s {text:""}
tellraw @s [{text:"  ═══════════════════════════════",color:"#5C4033"}]
tellraw @s [{text:"    ◆ ",color:"#D6D0C7"},{text:"VILLAGE REPUTATION",bold:true,color:"gold"},{text:" ◆",color:"#D6D0C7"}]
tellraw @s [{text:"  ═══════════════════════════════",color:"#5C4033"}]

# Show current village reputation and rank
tellraw @s [{text:""}]
tellraw @s [{text:"    Current Village: ",color:"gray"},{text:"Rep ",color:"dark_gray"},{score:{name:"@s",objective:"ec.village_rep"},color:"gold"},{text:" | ",color:"dark_gray"},{text:"Rank ",color:"dark_gray"},{score:{name:"@s",objective:"ec.rep_rank"},color:"aqua"}]

# Rank thresholds reference
tellraw @s [{text:""}]
tellraw @s [{text:"    Rank Thresholds:",color:"gray",italic:true}]
tellraw @s [{text:"    0: ",color:"dark_gray"},{text:"Stranger",color:"dark_gray"},{text:" → 100: ",color:"dark_gray"},{text:"Acquaintance",color:"yellow"},{text:" → 250: ",color:"dark_gray"},{text:"Friend",color:"green"}]
tellraw @s [{text:"    500: ",color:"dark_gray"},{text:"Ally",color:"aqua"},{text:" → 1000: ",color:"dark_gray"},{text:"Hero",color:"dark_purple"},{text:" → 2500: ",color:"dark_gray"},{text:"Legend",color:"gold",bold:true}]

# Progress toward next rank
execute if score @s ec.rep_rank matches 0 run tellraw @s [{text:"    Next rank at: ",color:"gray"},{text:"100 rep (Acquaintance)",color:"yellow"}]
execute if score @s ec.rep_rank matches 1 run tellraw @s [{text:"    Next rank at: ",color:"gray"},{text:"250 rep (Friend)",color:"green"}]
execute if score @s ec.rep_rank matches 2 run tellraw @s [{text:"    Next rank at: ",color:"gray"},{text:"500 rep (Ally)",color:"aqua"}]
execute if score @s ec.rep_rank matches 3 run tellraw @s [{text:"    Next rank at: ",color:"gray"},{text:"1000 rep (Hero)",color:"dark_purple"}]
execute if score @s ec.rep_rank matches 4 run tellraw @s [{text:"    Next rank at: ",color:"gray"},{text:"2500 rep (Legend)",color:"gold"}]
execute if score @s ec.rep_rank matches 5 run tellraw @s [{text:"    ",color:"gray"},{text:"MAX RANK — Legend!",color:"gold",bold:true}]

tellraw @s [{text:"  ═══════════════════════════════",color:"#5C4033"}]
tellraw @s [{text:""}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
