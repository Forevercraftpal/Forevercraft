# Fishing Derby — Tick (1s)
# Sync modifiers, show score on actionbar

# Sync modifier for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_cal_derby
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_cal_derby 0.5 add_value

# OPT: items predicate instead of SelectedItem NBT check (cheaper selector)
execute as @a if items entity @s weapon.mainhand fishing_rod run title @s actionbar [{text:"Derby Score: ",color:"aqua"},{score:{name:"@s",objective:"cal.derby_score"},color:"white",bold:true},{text:" catches",color:"gray"}]
