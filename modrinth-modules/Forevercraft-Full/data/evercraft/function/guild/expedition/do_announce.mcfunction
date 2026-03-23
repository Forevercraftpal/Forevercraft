# Guild Expedition — Macro announce
# $(activity) = activity name, $(mult_int).$(mult_dec) = multiplier display

$execute if score #exp_disp_dec ec.temp matches 10.. run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"The Expedition chosen for us today is ",color:"gold"},{text:"$(activity)",color:"yellow",bold:true},{text:"! ",color:"gold"},{text:"($(mult_int).$(mult_dec)x buff)",color:"green"}]
$execute if score #exp_disp_dec ec.temp matches ..9 run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"The Expedition chosen for us today is ",color:"gold"},{text:"$(activity)",color:"yellow",bold:true},{text:"! ",color:"gold"},{text:"($(mult_int).0$(mult_dec)x buff)",color:"green"}]
