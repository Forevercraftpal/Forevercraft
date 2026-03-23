# Winter Snow — Stack existing snow layer higher (max 5 layers)
# Run at the position of an existing snow block

execute if block ~ ~ ~ snow[layers=1] run setblock ~ ~ ~ snow[layers=2]
execute if block ~ ~ ~ snow[layers=2] run setblock ~ ~ ~ snow[layers=3]
execute if block ~ ~ ~ snow[layers=3] run setblock ~ ~ ~ snow[layers=4]
execute if block ~ ~ ~ snow[layers=4] run setblock ~ ~ ~ snow[layers=5]
# Cap at 5 layers — don't want full snow blocks everywhere
