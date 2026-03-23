# Party Management — Refresh Member List (macro)
# Arg: pid (party ID)
# Run as the player
# Updates the leader name display and the member list display

# Leader display: show the party leader name with crown
$data modify entity @e[type=text_display,tag=Adv.PtyLeader,distance=..5,limit=1] text set value [{text:"\u2726 ",color:"gold"},{selector:"@a[scores={ec.party_id=$(pid),ec.party_role=1},limit=1]",color:"yellow"},{text:" (Leader)",color:"dark_gray"}]

# Members display: show all non-leader members using selector with newline separator
# If no members exist (solo party), selector resolves empty and shows nothing useful
$execute store result score #pty_members ec.temp if entity @a[scores={ec.party_id=$(pid),ec.party_role=2}]
execute if score #pty_members ec.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.PtyMemberList,distance=..5,limit=1] text set value {text:"  ---",color:"dark_gray"}

# If there are members, show them with newline separator
$execute if score #pty_members ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.PtyMemberList,distance=..5,limit=1] text set value [{text:"\u2022 ",color:"gray"},{selector:"@a[scores={ec.party_id=$(pid),ec.party_role=2}]",separator:{text:"\n\u2022 ",color:"gray"},color:"green"}]
