# H2H Competition — Tick (runs every 20 ticks / 1 second via luck_buffs/tick)

# Decrement timer
scoreboard players remove #h2h_timer ec.var 20

# Update bossbar
execute store result bossbar evercraft:h2h_competition value run scoreboard players get #h2h_timer ec.var

# Delta-track score updates (mining, prospecting, foraging)
execute if score #h2h_active ec.var matches 2 as @a[tag=h2h.participant] run function evercraft:competition/h2h/track/mining
execute if score #h2h_active ec.var matches 4 as @a[tag=h2h.participant] run function evercraft:competition/h2h/track/prospecting
execute if score #h2h_active ec.var matches 5 as @a[tag=h2h.participant] run function evercraft:competition/h2h/track/foraging

# Actionbar display — show both players' scores
execute as @a[tag=h2h.participant] run function evercraft:competition/h2h/display_score

# Disconnect check: if fewer than 2 participants online, end as draw
scoreboard players set #h2h_online ec.temp 0
execute as @a[tag=h2h.participant] run scoreboard players add #h2h_online ec.temp 1
execute if score #h2h_online ec.temp matches ..1 run function evercraft:competition/h2h/end_disconnect
execute if score #h2h_online ec.temp matches ..1 run return 0

# Timer expiry
execute if score #h2h_timer ec.var matches ..0 run function evercraft:competition/h2h/end
