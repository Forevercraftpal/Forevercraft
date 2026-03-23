# Dungeon countdown title display (macro)
# OPT: Replaces 3-line-per-number blocks with 1 macro call
# Args: {num:<text>, color:<color>, pitch:<pitch>}

title @a[tag=dg.player] times 0 25 5
$title @a[tag=dg.player] title {text:"$(num)",color:"$(color)",bold:true}
$playsound minecraft:block.note_block.bass master @a[tag=dg.player] ~ ~ ~ 1 $(pitch)
