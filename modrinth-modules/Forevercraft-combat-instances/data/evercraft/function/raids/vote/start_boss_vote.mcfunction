# Spirit Raids — Start Boss Vote (Floor 10 — boss room entry)
# Same mechanics as floor vote but with dramatic styling

# Set vote state
scoreboard players set #rd_vote_active ec.var 1
scoreboard players set #rd_vote_timer ec.var 600
scoreboard players set #rd_votes_yes ec.var 0
scoreboard players set #rd_votes_no ec.var 0
scoreboard players set #rd_vote_context ec.var 3

# Enable vote trigger for all raid players
scoreboard players enable @a[tag=rd.player] ec.rd_vote
scoreboard players set @a[tag=rd.player] ec.rd_vote 0

# Show boss vote buttons (dramatic styling)
tellraw @a[tag=rd.player] ""
tellraw @a[tag=rd.player] [{"text":"  ","color":"white"},{"text":"[Face the Boss \u25bc]","color":"dark_red","bold":true,"click_event":{"action":"run_command","command":"trigger ec.rd_vote set 1"},"hover_event":{"action":"show_text","value":{"text":"Enter the boss chamber","color":"red"}}},{"text":"    "},{"text":"[Retreat \u25b2]","color":"gray","click_event":{"action":"run_command","command":"trigger ec.rd_vote set 2"},"hover_event":{"action":"show_text","value":{"text":"Evacuate with partial rewards","color":"gray"}}}]
tellraw @a[tag=rd.player] [{"text":"  30 seconds to decide...","color":"dark_gray","italic":true}]
