# Show the player how much time remains before this chest refreshes
# Run as player. Scores: #looted_timer (ticks), #looted_struct (struct_id)

# Convert ticks to hours and minutes (1200 ticks = 1 minute)
scoreboard players set #1200 cf.temp 1200
scoreboard players operation #timer_mins cf.temp = #looted_timer cf.temp
scoreboard players operation #timer_mins cf.temp /= #1200 cf.temp

# hours = minutes / 60
scoreboard players operation #timer_hrs cf.temp = #timer_mins cf.temp
scoreboard players operation #timer_hrs cf.temp /= #60 ec.const

# remaining minutes = minutes % 60
scoreboard players operation #timer_rmins cf.temp = #timer_mins cf.temp
scoreboard players operation #timer_rmins cf.temp %= #60 ec.const

# Show feedback
tellraw @s [{text:"⏳ ",color:"gold"},{text:"You've already looted this chest. Refreshes in ",color:"gray"},{score:{name:"#timer_hrs",objective:"cf.temp"},color:"gold",bold:true},{text:"h ",color:"gold"},{score:{name:"#timer_rmins",objective:"cf.temp"},color:"gold",bold:true},{text:"m",color:"gold"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.3 0.8
