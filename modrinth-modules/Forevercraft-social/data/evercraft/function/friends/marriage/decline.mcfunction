# Marriage — Decline proposal
# @s = declining player

tag @s remove ec.fr_marry_pending
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Proposal declined.",color:"gray"}]
scoreboard players set @s ec.fr_target 0
