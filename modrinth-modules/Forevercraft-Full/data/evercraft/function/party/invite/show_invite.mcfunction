# Show party invite to a player (macro)
# Args: pid (party ID), accept (trigger value = pid + 10)

$tellraw @s [{text:"",color:"gold"},{text:"[Party Invite] ",bold:true},{text:"You've been invited to join a party! ",color:"yellow"},{text:"[Accept]",color:"green","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.party set $(accept)"},"hover_event":{"action":"show_text","value":"Join the party"}},{text:" "},{"text":"[Decline]","color":"red","click_event":{"action":"run_command","command":"/trigger ec.party set -1"},"hover_event":{"action":"show_text","value":"Decline the invitation"}}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.0
