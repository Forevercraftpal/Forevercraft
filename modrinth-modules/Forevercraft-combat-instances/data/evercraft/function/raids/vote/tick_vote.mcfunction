# Spirit Raids — Vote Timer Tick
# Called every tick when #rd_vote_active == 1

# Decrement timer
scoreboard players remove #rd_vote_timer ec.var 1

# Timer expired — process vote (no-votes count as evacuate)
execute if score #rd_vote_timer ec.var matches ..0 run function evercraft:raids/vote/process_vote
