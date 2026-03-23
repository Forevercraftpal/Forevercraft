# The Eternal Pharaoh — Time State Toggle
# Switches between normal (0) and pulse (1) states

execute if score #rd_ep_time_state ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/abilities/time_to_pulse
execute if score #rd_ep_time_state ec.var matches 1 run function evercraft:raids/boss/eternal_pharaoh/abilities/time_to_normal
