# Spirit Raids — Start Floor Vote (between raid floors 1-9)
# Simpler prompt than boss entry

# Set vote state
scoreboard players set #rd_vote_active ec.var 1
scoreboard players set #rd_vote_timer ec.var 600
scoreboard players set #rd_votes_yes ec.var 0
scoreboard players set #rd_votes_no ec.var 0
scoreboard players set #rd_vote_context ec.var 2

# Enable vote trigger for all raid players
scoreboard players enable @a[tag=rd.player] ec.rd_vote
scoreboard players set @a[tag=rd.player] ec.rd_vote 0

# Show vote buttons
tellraw @a[tag=rd.player] ""
tellraw @a[tag=rd.player] [{"text":"  ","color":"white"},{"text":"[Continue \u25bc]","color":"green","bold":true,"click_event":{"action":"run_command","command":"trigger ec.rd_vote set 1"},"hover_event":{"action":"show_text","value":{"text":"Continue to the next floor","color":"green"}}},{"text":"    "},{"text":"[Evacuate \u25b2]","color":"red","click_event":{"action":"run_command","command":"trigger ec.rd_vote set 2"},"hover_event":{"action":"show_text","value":{"text":"Leave with your rewards","color":"red"}}}]
tellraw @a[tag=rd.player] [{"text":"  30 seconds to decide...","color":"dark_gray","italic":true}]
