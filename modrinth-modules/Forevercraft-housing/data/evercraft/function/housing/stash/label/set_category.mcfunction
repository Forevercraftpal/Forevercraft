# ============================================================
# Stash Label — Set category on existing labeled container (macro)
# Run as: player, positioned at container block center
# Args: category, title, color
# ============================================================
$data modify entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data.category set value "$(category)"
$data modify entity @e[type=text_display,tag=HS.StashDisplay,distance=..1.2,limit=1] text set value {text:"$(title)",color:"$(color)"}

# Feedback
$tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Container labeled: ",color:"gray"},{text:"$(title)",color:"$(color)"}]
playsound minecraft:block.note_block.bell master @a[distance=..5] ~ ~ ~ 0.5 1.4
