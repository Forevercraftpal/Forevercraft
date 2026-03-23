# Best Buddy — Restore Name on Revived Entity
# @s = newly summoned buddy entity
# Restores CustomName from storage

execute if data storage evercraft:buddy temp.buddy_name run data modify entity @s CustomName set from storage evercraft:buddy temp.buddy_name
