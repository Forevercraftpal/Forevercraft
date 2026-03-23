# ============================================================
# Artifact Bounty Board — Show Today's Bounties (Tellraw)
# Run as player
# ============================================================

# Header
tellraw @s ["",{text:"\n"},{"text":"\u2605 ","color":"yellow"},{"text":"Bounty Board","color":"yellow","bold":true},{"text":" \u2605","color":"yellow"}]
tellraw @s {"text":"  Today's wanted artifacts:","color":"gray","italic":true}

# Display each bounty via macro (shows claimed status per player)
function evercraft:bounty_board/show_line_0 with storage eden:database bounty_board.bounties[0]
function evercraft:bounty_board/show_line_1 with storage eden:database bounty_board.bounties[1]
function evercraft:bounty_board/show_line_2 with storage eden:database bounty_board.bounties[2]

# Footer
tellraw @s {"text":"  Hold a wanted artifact and click to turn it in!","color":"gray"}

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
