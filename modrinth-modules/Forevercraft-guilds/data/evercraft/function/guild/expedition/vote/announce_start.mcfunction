# Guild Expedition — Announce expedition started (macro)
# Args: biome_name, guild_id
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"",color:"dark_purple"},{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",bold:true}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Expedition Started! ",color:"gold",bold:true}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Target: ",color:"yellow"},{text:"$(biome_name)",color:"green",bold:true}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Explore that biome and kill mobs to earn progress!",color:"gray"}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",bold:true}]
$playsound minecraft:ui.toast.challenge_complete master @a[scores={ec.guild_id=$(guild_id)}] ~ ~ ~ 1.0 1.0
