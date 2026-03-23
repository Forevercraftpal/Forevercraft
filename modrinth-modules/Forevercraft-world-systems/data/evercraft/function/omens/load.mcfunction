# Weather Omens — Load
# Pre-event warning system: chat at 60s, particles at 30s, event starts at 0

# Calendar omen state (preserve across reloads)
execute unless score #cal_omen_id ec.var matches -2147483648.. run scoreboard players set #cal_omen_id ec.var 0
execute unless score #cal_omen_timer ec.var matches -2147483648.. run scoreboard players set #cal_omen_timer ec.var 0

# World event omen state
execute unless score #we_omen_id ec.var matches -2147483648.. run scoreboard players set #we_omen_id ec.var 0
execute unless score #we_omen_timer ec.var matches -2147483648.. run scoreboard players set #we_omen_timer ec.var 0

# Night-gated event omen flags (prevent double-fire)
execute unless score #cal_night_warned ec.var matches -2147483648.. run scoreboard players set #cal_night_warned ec.var 0
