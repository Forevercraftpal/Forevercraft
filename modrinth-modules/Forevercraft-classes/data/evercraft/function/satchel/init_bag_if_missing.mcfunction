# Satchel — Initialize bag storage if missing (macro, safety net)
# Args: bid
$execute unless data storage evercraft:satchel bags.$(bid) run data modify storage evercraft:satchel bags.$(bid) set value {slot_count:0,s0:{},s1:{},s2:{},s3:{},s4:{},s5:{},s6:{}}
