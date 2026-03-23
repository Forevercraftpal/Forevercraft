# Pack Mule — Initialize Storage for player if not present
$# $(pid) = player's companion.id
$execute unless data storage evercraft:buddy mule.$(pid) run data modify storage evercraft:buddy mule.$(pid) set value {s0:{},s1:{},s2:{}}
