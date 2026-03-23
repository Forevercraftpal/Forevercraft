# Party Leader Disconnect Check
# Called every 1s from party/tick
# If a party has no online leader for 5 min, promote longest member

# For each online member (role=2): check if their party has an online leader
# Store party_id, macro-check if any online leader exists with that ID
execute as @a[scores={ec.party_role=2}] run function evercraft:party/check_leader_inner
