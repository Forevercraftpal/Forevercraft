# ============================================================
# Record Structure Discovery
# Fires when jn.struct_count increases (new structure type found)
# Run as player, #jn_sc jn.temp has the new count
# ============================================================

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.7 1.2
tellraw @s [{text:"✦ ",color:"dark_aqua"},{text:"[Journal] ",color:"gold"},{text:"New Structure Discovered! ",color:"yellow"},{text:"(",color:"gray"},{score:{name:"#jn_sc",objective:"jn.temp"},color:"aqua"},{text:"/18)",color:"gray"}]

# Check region completion
function evercraft:journal/regions/check_all
