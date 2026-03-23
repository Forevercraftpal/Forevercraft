# Reaper — Compute alignment tier from infamy/renown
# Run as player. Sets rp.tier: negative = villain, positive = peacemonger
# -5=Villain, -4=Outlaw, -3=Criminal, -2=Rogue, -1=Troublemaker
# 0=Neutral
# +1=Samaritan, +2=Guardian, +3=Protector, +4=Champion, +5=Peacemonger

# Default neutral
scoreboard players set @s rp.tier 0

# Determine dominant axis
scoreboard players operation #rp_dom rp.temp = @s rp.infamy
scoreboard players operation #rp_ren rp.temp = @s rp.renown

# Infamy-dominant (or equal at 1000+)
execute if score @s rp.infamy >= @s rp.renown if score @s rp.infamy matches 5000.. run scoreboard players set @s rp.tier -5
execute if score @s rp.infamy >= @s rp.renown if score @s rp.infamy matches 4000..4999 run scoreboard players set @s rp.tier -4
execute if score @s rp.infamy >= @s rp.renown if score @s rp.infamy matches 3000..3999 run scoreboard players set @s rp.tier -3
execute if score @s rp.infamy >= @s rp.renown if score @s rp.infamy matches 2000..2999 run scoreboard players set @s rp.tier -2
execute if score @s rp.infamy >= @s rp.renown if score @s rp.infamy matches 1000..1999 run scoreboard players set @s rp.tier -1

# Renown-dominant
execute if score @s rp.renown > @s rp.infamy if score @s rp.renown matches 5000.. run scoreboard players set @s rp.tier 5
execute if score @s rp.renown > @s rp.infamy if score @s rp.renown matches 4000..4999 run scoreboard players set @s rp.tier 4
execute if score @s rp.renown > @s rp.infamy if score @s rp.renown matches 3000..3999 run scoreboard players set @s rp.tier 3
execute if score @s rp.renown > @s rp.infamy if score @s rp.renown matches 2000..2999 run scoreboard players set @s rp.tier 2
execute if score @s rp.renown > @s rp.infamy if score @s rp.renown matches 1000..1999 run scoreboard players set @s rp.tier 1

# Store title string in storage for macro use
execute if score @s rp.tier matches 0 run data modify storage evercraft:reaper title set value "Neutral"
execute if score @s rp.tier matches -1 run data modify storage evercraft:reaper title set value "Troublemaker"
execute if score @s rp.tier matches -2 run data modify storage evercraft:reaper title set value "Rogue"
execute if score @s rp.tier matches -3 run data modify storage evercraft:reaper title set value "Criminal"
execute if score @s rp.tier matches -4 run data modify storage evercraft:reaper title set value "Outlaw"
execute if score @s rp.tier matches -5 run data modify storage evercraft:reaper title set value "Villain"
execute if score @s rp.tier matches 1 run data modify storage evercraft:reaper title set value "Samaritan"
execute if score @s rp.tier matches 2 run data modify storage evercraft:reaper title set value "Guardian"
execute if score @s rp.tier matches 3 run data modify storage evercraft:reaper title set value "Protector"
execute if score @s rp.tier matches 4 run data modify storage evercraft:reaper title set value "Champion"
execute if score @s rp.tier matches 5 run data modify storage evercraft:reaper title set value "Peacemonger"
