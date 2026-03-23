# Macro: detect offline party members and handle 10-min timeout
# Arg: pid (party ID)
# Run as a party member

# Count online members with this party ID
$execute store result score #ponline ec.temp if entity @a[scores={ec.party_id=$(pid)}]

# If online count < party_size: some members are offline — increment timer
execute unless score #ponline ec.temp >= @s ec.party_size run scoreboard players add @s ec.party_dc 20

# If online count >= party_size: everyone is here — reset timer
execute if score #ponline ec.temp >= @s ec.party_size run scoreboard players set @s ec.party_dc 0

# If timer hits 10 minutes (12000 ticks): trim party to online members only
execute if score @s ec.party_dc matches 12000.. run function evercraft:party/offline_trim with storage evercraft:party temp
