# Buddy Ability — Last Stand Activate
# @s = player who owns the buddy
# Heals buddy, makes invulnerable for 5 seconds, teleports to player

# Heal buddy to full
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..64,limit=1] run effect give @s instant_health 1 5

# Make invulnerable for 5 seconds
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..64,limit=1] run data merge entity @s {Invulnerable:1b}
tag @s add ec.bd_last_active

# Teleport buddy to player
execute at @s as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,limit=1] run tp @s ~ ~ ~

# Set cooldown (300 seconds = 5 minutes — if buddy dies during this, it really dies)
scoreboard players set @s ec.bd_last_cd 300

# Schedule removal of invulnerability (100 ticks = 5 seconds)
schedule function evercraft:buddy/abilities/last_stand/end_invuln 100t append

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"LAST STAND! ",color:"red",bold:true},{text:"Your buddy refuses to fall!",color:"yellow"}]
execute at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 50
