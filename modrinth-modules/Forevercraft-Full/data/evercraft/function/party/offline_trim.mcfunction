# Macro: trim offline members from the party after 10-min timeout
# Arg: pid (party ID)

# Announce to remaining online members
$tellraw @a[scores={ec.party_id=$(pid)}] {text:"[Party] Offline members have been removed.",color:"gray"}

# Update party_size to current online count for all online members
$execute as @a[scores={ec.party_id=$(pid)}] store result score @s ec.party_size if entity @a[scores={ec.party_id=$(pid)}]

# Reset disconnect timer for all online members
$execute as @a[scores={ec.party_id=$(pid)}] run scoreboard players set @s ec.party_dc 0

# If only 1 member remains, auto-disband
$execute store result score #trim_ct ec.temp if entity @a[scores={ec.party_id=$(pid)}]
# Return color to pool before auto-disband cleanup
$execute if score #trim_ct ec.temp matches ..1 as @a[scores={ec.party_id=$(pid),ec.pty_clr=1..},limit=1] run function evercraft:party/color/return_from_self
$execute if score #trim_ct ec.temp matches ..1 run tellraw @a[scores={ec.party_id=$(pid)}] {text:"[Party] Party has been disbanded (not enough members).",color:"gray"}
$execute if score #trim_ct ec.temp matches ..1 as @a[scores={ec.party_id=$(pid)}] run function evercraft:party/cleanup_player
