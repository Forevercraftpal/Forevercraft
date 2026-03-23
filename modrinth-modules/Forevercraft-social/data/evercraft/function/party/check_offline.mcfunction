# Party Offline Member Detection
# Called every 1s from party/tick
# If online member count < party_size for 10 min, trim offline members

execute as @a[scores={ec.party_id=1..}] run function evercraft:party/check_offline_inner
