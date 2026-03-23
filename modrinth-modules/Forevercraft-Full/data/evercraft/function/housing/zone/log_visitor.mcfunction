# Housing Visitor Log — Notify homeowner and increment counters
# @s = visitor player, owner = @a[tag=hs.owner_check]

# Notify homeowner (gray, subtle)
tellraw @a[tag=hs.owner_check] [{text:"[Home] ",color:"gray"},{selector:"@s",color:"yellow"},{text:" is visiting your home!",color:"gray"}]

# Increment visitor counters on homeowner
scoreboard players add @a[tag=hs.owner_check] hs.visitors 1
scoreboard players add @a[tag=hs.owner_check] hs.visit_today 1

# Set cooldown on homeowner (150 = 5 minutes at 2s tick interval)
scoreboard players set @a[tag=hs.owner_check] hs.visit_cd 150
