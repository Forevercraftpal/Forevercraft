# Tomb System — Reward Finder with XP
# @s = the finder/carrier who delivered the soul bundle
# #tomb_xp_give ec.temp = 25% XP levels to award

execute if score #tomb_xp_give ec.temp matches 1.. run function evercraft:tomb/give_xp

# Notify
function evercraft:tomb/companion/notify_finder with storage evercraft:tomb_temp
