# Remove luck attribute modifiers for toggled-off accessories
# OPT: Consolidates 7 @a scans into 1 per-player call
# Run as: player with at least one toggled-off accessory

execute if score @s ec.t_pebble matches 1 run attribute @s luck modifier remove evercraft:pebble_of_dreams_luck
execute if score @s ec.t_dring matches 1 run attribute @s luck modifier remove evercraft:diamond_ring_luck
execute if score @s ec.t_rwatch matches 1 run attribute @s luck modifier remove evercraft:ruin_watch_luck
execute if score @s ec.t_merchant matches 1 run attribute @s luck modifier remove evercraft:merchants_coin_luck
execute if score @s ec.t_angler matches 1 run attribute @s luck modifier remove evercraft:anglers_pearl_luck
execute if score @s ec.t_undying matches 1 run attribute @s luck modifier remove evercraft:ring_of_undying_luck
execute if score @s ec.t_sculkhrt matches 1 run attribute @s luck modifier remove evercraft:sculk_heart_luck
