# Party Sidebar — Check if any parties still exist
# If no players are in a party, hide the sidebar
execute unless entity @a[scores={ec.party_id=1..}] run function evercraft:party/sidebar/hide_sidebar
