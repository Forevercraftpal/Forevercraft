# Hollow Sovereign — Visible Window Countdown
# Boss is currently visible (Phase 1 only). Count down and re-cloak when expired.

# Decrement timer
scoreboard players remove #rd_hs_vis_timer ec.var 1

# Warning at 60 ticks (3 seconds left)
execute if score #rd_hs_vis_timer ec.var matches 60 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The Sovereign fades back into shadow...","color":"gray","italic":true}]

# Re-cloak when timer hits 0
execute if score #rd_hs_vis_timer ec.var matches ..0 run function evercraft:raids/boss/hollow_sovereign/abilities/recloak
