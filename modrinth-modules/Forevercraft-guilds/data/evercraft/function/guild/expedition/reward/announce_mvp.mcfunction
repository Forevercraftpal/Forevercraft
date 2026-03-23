# Guild Expedition — Announce MVP (macro)
# @s = MVP player (from award_mvp.mcfunction context)
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"MVP: ",color:"gold",bold:true},{selector:"@s",color:"yellow",bold:true},{text:" earned a ",color:"gray"},{text:"Tree Token",color:"aqua"},{text:" for top contribution!",color:"gray"}]
