# Pack Tactics — Count Beastmaster party members nearby (macro)
# Arg: pid (party ID)

$execute store result score #pt_bm ec.temp if entity @a[scores={ec.party_id=$(pid),adv.beastmaster=15..},distance=..48]

# Need 2+ (including self potentially) — if 2+ beastmasters nearby, activate
execute if score #pt_bm ec.temp matches 2.. run scoreboard players set @s ec.pc_pack 1

# First-time discovery notification (discover function does its own bitfield check)
execute if score @s ec.pc_pack matches 1 run function evercraft:party/combos/discover_pack_tactics
