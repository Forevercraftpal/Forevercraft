# Thousand Cuts — Channel Phase
# Run as @s at @s during channeling (sp_state=1)

# Channel particles (building up)
particle dust_color_transition{from_color:[0.6,0.0,0.6],to_color:[1,1.0,0.3],scale:1.0} ~ ~1 ~ 0.5 0.8 0.5 0.02 5

# Timer decrement happens in spirit/tick (ec.sp_timer)
# Check if channel complete
execute if score @s ec.sp_timer matches ..0 run function evercraft:spirit/abilities/hollow_fangs/tc_begin_strikes
