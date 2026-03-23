# Guild Expedition — Show rundown tellraw (macro)
# $(activity), $(mult_int), $(mult_dec), $(luck), $(bonus)

execute if score #exp_disp_dec ec.temp matches 10.. run tellraw @s [{text:"",color:"gray"},{text:"--- Expedition Rundown ---",color:"gold",bold:true}]
$execute if score #exp_disp_dec ec.temp matches 10.. run tellraw @s [{text:"  Activity: ",color:"gray"},{text:"$(activity)",color:"yellow",bold:true}]
$execute if score #exp_disp_dec ec.temp matches 10.. run tellraw @s [{text:"  Multiplier: ",color:"gray"},{text:"$(mult_int).$(mult_dec)x",color:"green",bold:true}]
$execute if score #exp_disp_dec ec.temp matches 10.. run tellraw @s [{text:"  Luck Buff: ",color:"gray"},{text:"$(luck)",color:"aqua"}]
$execute if score #exp_disp_dec ec.temp matches 10.. run tellraw @s [{text:"  Bonus: ",color:"gray"},{text:"$(bonus)",color:"light_purple"}]

execute if score #exp_disp_dec ec.temp matches ..9 run tellraw @s [{text:"",color:"gray"},{text:"--- Expedition Rundown ---",color:"gold",bold:true}]
$execute if score #exp_disp_dec ec.temp matches ..9 run tellraw @s [{text:"  Activity: ",color:"gray"},{text:"$(activity)",color:"yellow",bold:true}]
$execute if score #exp_disp_dec ec.temp matches ..9 run tellraw @s [{text:"  Multiplier: ",color:"gray"},{text:"$(mult_int).0$(mult_dec)x",color:"green",bold:true}]
$execute if score #exp_disp_dec ec.temp matches ..9 run tellraw @s [{text:"  Luck Buff: ",color:"gray"},{text:"$(luck)",color:"aqua"}]
$execute if score #exp_disp_dec ec.temp matches ..9 run tellraw @s [{text:"  Bonus: ",color:"gray"},{text:"$(bonus)",color:"light_purple"}]

execute if score #expedition_fountain ec.var matches 1 run tellraw @s [{text:"  Fountain: ",color:"gray"},{text:"+5.0 Luck (Fountain of Dreams)",color:"#E0B0FF",bold:true}]
