# Friend System — Loop: search partner's friend list for our entry, read sent_gift_today
# #fr_ds_find_uuid3 ec.temp = our UUID3 to find in partner's list
# Output: #fr_ds_partner_sent ec.temp = 1 if found and sent_gift_today is 1b

execute unless data storage evercraft:friends temp.ds_partner_list[0] run return 0

execute store result score #fr_ds_pl_uuid3 ec.temp run data get storage evercraft:friends temp.ds_partner_list[0].uuid3

# If match: read their sent_gift_today for us
execute if score #fr_ds_pl_uuid3 ec.temp = #fr_ds_find_uuid3 ec.temp if data storage evercraft:friends temp.ds_partner_list[0].sent_gift_today store result score #fr_ds_partner_sent ec.temp run data get storage evercraft:friends temp.ds_partner_list[0].sent_gift_today
execute if score #fr_ds_pl_uuid3 ec.temp = #fr_ds_find_uuid3 ec.temp run return 0

# Pop and recurse
data remove storage evercraft:friends temp.ds_partner_list[0]
function evercraft:friends/daily_reset_streak_partner_loop
