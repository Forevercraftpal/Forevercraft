# Transmute GUI — Deposit Confirmed (trigger callback)
# Player clicked [Confirm Deposit] in chat
# Run as: player, at player position

# Must still be at the transmutation stand
execute unless entity @s[tag=TX.InMenu] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are no longer at the Transmutation Stand.",color:"red"}]

# Flag as confirmed and re-run deposit (skips the confirmation gate)
tag @s add TX.DepositConfirmed
function evercraft:transmute/gui/deposit
