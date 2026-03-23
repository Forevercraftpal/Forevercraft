# Duel Spectate — Broadcast (announce arena duel to all non-duelists)

tellraw @a[tag=!ec.duel_active_tag] [{text:""}]
tellraw @a[tag=!ec.duel_active_tag] [{text:"  ⚔ ",color:"gold"},{text:"Two players are fighting for glory!",color:"yellow",bold:true}]
tellraw @a[tag=!ec.duel_active_tag] [{text:"  "},{text:"[Watch the Duel]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.duel set 3"},hover_event:{action:"show_text",value:{text:"Teleport to the arena as a spectator",color:"gray"}}}]
tellraw @a[tag=!ec.duel_active_tag] [{text:""}]

playsound minecraft:entity.experience_orb.pickup master @a[tag=!ec.duel_active_tag] ~ ~ ~ 0.5 1.2
