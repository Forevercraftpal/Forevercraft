# H2H Competition — Display Score (runs as each participant)
# Show your score vs opponent's score on actionbar

# Tag self to identify opponent
tag @s add h2h.self
execute as @a[tag=h2h.participant,tag=!h2h.self] run title @a[tag=h2h.self] actionbar [{text:"You: ",color:"gold"},{score:{name:"@a[tag=h2h.self]",objective:"ec.h2h_score"},color:"white",bold:true},{text:" vs ",color:"gray"},{selector:"@s",color:"yellow"},{text:": ",color:"gray"},{score:{name:"@s",objective:"ec.h2h_score"},color:"white",bold:true}]
tag @s remove h2h.self
