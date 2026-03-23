# Party Menu — Open
# Run as the triggering player, at their position
# Triggered by /trigger ec.party set 1
# Shows different options based on party state

# Not in a party: show Create / Join options
execute if score @s ec.party_id matches 0 run function evercraft:party/menu/show_no_party
# In a party as leader: show Invite / Disband / Ping
execute if score @s ec.party_role matches 1 run function evercraft:party/menu/show_leader
# In a party as member: show Leave / Ping
execute if score @s ec.party_role matches 2 run function evercraft:party/menu/show_member
