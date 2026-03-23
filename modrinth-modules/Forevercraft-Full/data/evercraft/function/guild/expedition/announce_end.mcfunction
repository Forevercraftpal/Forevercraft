# Guild Expedition — Announce Results (macro)
# Args: guild_id, biome_name, progress, goal, pct

$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"",color:"dark_purple"},{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",bold:true}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Expedition Complete!",color:"gold",bold:true}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Biome: ",color:"yellow"},{text:"$(biome_name)",color:"green",bold:true}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Progress: ",color:"yellow"},{text:"$(progress)/$(goal) ($(pct)%)",color:"aqua"}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",bold:true}]
$playsound minecraft:ui.toast.challenge_complete master @a[scores={ec.guild_id=$(guild_id)}] ~ ~ ~ 1.0 1.2
