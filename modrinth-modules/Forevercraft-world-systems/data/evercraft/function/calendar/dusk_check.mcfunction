# Calendar — Dusk Check
# Called when visual_time crosses 13000 (nightfall)
# If a night-gated event is pending, activate it now

execute unless score #cal_pending ec.var matches 1.. run return 0

# Route to appropriate night-gated event start (via omen timer for 30s particle warning)
scoreboard players operation #cal_omen_id ec.var = #cal_pending ec.var
scoreboard players set #cal_omen_timer ec.var 30

# Clear pending flag and night warned state
scoreboard players set #cal_pending ec.var 0
scoreboard players set #cal_night_warned ec.var 0
