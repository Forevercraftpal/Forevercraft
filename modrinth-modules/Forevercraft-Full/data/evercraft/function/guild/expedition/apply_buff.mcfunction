# Guild Expedition — Apply luck buff to player
# @s = guilded player
# Mult is ×100 scale (125-500). Luck scales linearly: 0.125 at 125 → 2.0 at 500

# Remove old buff first
attribute @s luck modifier remove guild:expedition_buff
attribute @s luck modifier remove guild:expedition_fountain

# Skip if no expedition active
execute if score #expedition_activity ec.var matches 0 run return 0

# Tiered luck based on ×100 scale mult
# 125-149: 0.125, 150-199: 0.25, 200-249: 0.5, 250-299: 0.75
# 300-349: 1.0, 350-399: 1.25, 400-449: 1.5, 450-499: 1.75, 500: 2.0
execute if score #expedition_mult ec.var matches 125..149 run attribute @s luck modifier add guild:expedition_buff 0.125 add_value
execute if score #expedition_mult ec.var matches 150..199 run attribute @s luck modifier add guild:expedition_buff 0.25 add_value
execute if score #expedition_mult ec.var matches 200..249 run attribute @s luck modifier add guild:expedition_buff 0.5 add_value
execute if score #expedition_mult ec.var matches 250..299 run attribute @s luck modifier add guild:expedition_buff 0.75 add_value
execute if score #expedition_mult ec.var matches 300..349 run attribute @s luck modifier add guild:expedition_buff 1.0 add_value
execute if score #expedition_mult ec.var matches 350..399 run attribute @s luck modifier add guild:expedition_buff 1.25 add_value
execute if score #expedition_mult ec.var matches 400..449 run attribute @s luck modifier add guild:expedition_buff 1.5 add_value
execute if score #expedition_mult ec.var matches 450..499 run attribute @s luck modifier add guild:expedition_buff 1.75 add_value
execute if score #expedition_mult ec.var matches 500.. run attribute @s luck modifier add guild:expedition_buff 2.0 add_value

# Fountain day: +5.0 luck
execute if score #expedition_fountain ec.var matches 1 run attribute @s luck modifier add guild:expedition_fountain 5.0 add_value
