# The Eternal Pharaoh — Altar Cleanse
# Called as the altar entity at its position

# Get the player who clicked (nearest participant)
execute as @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] run effect clear @s slowness
execute as @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] run effect clear @s weakness
execute as @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] run effect clear @s blindness
execute as @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] run effect clear @s wither

# Clear interaction
data remove entity @s interaction

# Start cooldown
scoreboard players set #rd_ep_altar_cd ec.var 300

# VFX
particle minecraft:end_rod ~ ~2 ~ 0.5 1 0.5 0.1 20
playsound minecraft:block.beacon.activate master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.5

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The altar cleanses curses! (15s cooldown)",color:"green"}]
