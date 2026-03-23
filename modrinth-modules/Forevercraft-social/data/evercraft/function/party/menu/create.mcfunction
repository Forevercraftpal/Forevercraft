# Create Party — Make the player a party leader
# Run as the creating player

# Already in a party? Can't create another
execute if score @s ec.party_id matches 1.. run return run tellraw @s {text:"You are already in a party.",color:"red"}

# Assign new party ID
scoreboard players operation @s ec.party_id = #party_next_id ec.var
scoreboard players set @s ec.party_role 1
scoreboard players set @s ec.party_size 1
scoreboard players set @s ec.party_nearby 0
scoreboard players set @s ec.party_ldr_dc 0

# Increment global counter for next party
scoreboard players add #party_next_id ec.var 1

# Pick a random party color and join the team
function evercraft:party/color/pick

# Announce
tellraw @s [{text:"[Party] ",color:"gold"},{text:"Party created! Use ",color:"green"},{text:"[Invite Nearby]",color:"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.party set 3"},"hover_event":{"action":"show_text","value":"Scan for nearby players to invite"}},{text:" to add members.",color:"green"}]
playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1.2

# Track for achievements
scoreboard players add @s ach.parties_formed 1
