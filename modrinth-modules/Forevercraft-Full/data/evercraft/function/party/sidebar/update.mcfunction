# Party Sidebar — Update health display
# Run as each player in a party (from party/tick)

# Health update — runs every tick
execute store result score @s ec.party_hp run data get entity @s Health 1

# Name capture — only once per party session (avoids mainhand flicker)
execute unless entity @s[tag=ec.pty_named] run function evercraft:party/sidebar/capture_name
