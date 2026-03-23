# Guild Menu — Announce supply drop (macro)
# $(supply_tier_name) $(supply_target_name)
# @s = the player who sent the supply

$tellraw @a[scores={ec.guild_id=1..}] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s"},{text:" sent ",color:"gray"},{text:"$(supply_tier_name)",color:"gold",bold:true},{text:" to ",color:"gray"},{text:"$(supply_target_name)",color:"gold"},{text:"!",color:"gray"}]
