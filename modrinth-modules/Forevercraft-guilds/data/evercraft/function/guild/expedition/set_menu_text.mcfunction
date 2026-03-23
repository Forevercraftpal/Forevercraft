# Guild Expedition — Set menu text entity content (macro)
# $(activity) = activity name, $(mult_int) = integer part, $(mult_dec) = decimal part, $(fountain) = 0/1

# Normal display (dec >= 10, no leading zero needed)
$execute if score #exp_disp_dec ec.temp matches 10.. if score #expedition_fountain ec.var matches 0 run data modify entity @s text set value [{text:"Expedition: ",color:"light_purple"},{text:"$(activity)",color:"light_purple",bold:true},{text:" ($(mult_int).$(mult_dec)x)",color:"green"}]
$execute if score #exp_disp_dec ec.temp matches 10.. if score #expedition_fountain ec.var matches 1 run data modify entity @s text set value [{text:"Expedition: ",color:"light_purple"},{text:"$(activity)",color:"light_purple",bold:true},{text:" ($(mult_int).$(mult_dec)x)",color:"green"},{text:"\n"},{text:"+ 5x Fountain of Dreams!",color:"#E0B0FF"}]

# Leading zero display (dec < 10)
$execute if score #exp_disp_dec ec.temp matches ..9 if score #expedition_fountain ec.var matches 0 run data modify entity @s text set value [{text:"Expedition: ",color:"light_purple"},{text:"$(activity)",color:"light_purple",bold:true},{text:" ($(mult_int).0$(mult_dec)x)",color:"green"}]
$execute if score #exp_disp_dec ec.temp matches ..9 if score #expedition_fountain ec.var matches 1 run data modify entity @s text set value [{text:"Expedition: ",color:"light_purple"},{text:"$(activity)",color:"light_purple",bold:true},{text:" ($(mult_int).0$(mult_dec)x)",color:"green"},{text:"\n"},{text:"+ 5x Fountain of Dreams!",color:"#E0B0FF"}]
