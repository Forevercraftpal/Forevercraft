# Satchel — Initialize bag storage (macro)
# Args: new_bid
$execute unless data storage evercraft:satchel bags.$(new_bid) run data modify storage evercraft:satchel bags.$(new_bid) set value {slot_count:0,s0:{},s1:{},s2:{},s3:{},s4:{},s5:{},s6:{}}
