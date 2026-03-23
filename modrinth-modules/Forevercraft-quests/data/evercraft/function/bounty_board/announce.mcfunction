# ============================================================
# Artifact Bounty Board — Announce Turn-In (Macro)
# ============================================================
$tellraw @s ["",{text:"[Bounty Board] ",color:"yellow"},{text:"Turned in ",color:"green"},{text:"$(name)",color:"gold",bold:true},{text:"! Earned ",color:"green"},{text:"$(coins) Coins",color:"yellow"},{text:" + a bonus item!",color:"green"}]
