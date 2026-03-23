# H2H Competition — End by Disconnect
# Not enough participants online

tellraw @a[tag=h2h.participant] [{text:"[Forevercraft] ",color:"gold"},{text:"Head-to-head ended — opponent disconnected.",color:"gray"}]

# Give remaining participant participation XP
execute as @a[tag=h2h.participant] at @s run experience add @s 20

function evercraft:competition/h2h/cleanup
