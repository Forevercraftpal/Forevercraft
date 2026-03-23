# Snow Melt — Reduce one snow layer at current position
# Removes block entirely if at layers=1

execute if block ~ ~ ~ snow[layers=1] run setblock ~ ~ ~ air
execute if block ~ ~ ~ snow[layers=2] run setblock ~ ~ ~ snow[layers=1]
execute if block ~ ~ ~ snow[layers=3] run setblock ~ ~ ~ snow[layers=2]
execute if block ~ ~ ~ snow[layers=4] run setblock ~ ~ ~ snow[layers=3]
execute if block ~ ~ ~ snow[layers=5] run setblock ~ ~ ~ snow[layers=4]
