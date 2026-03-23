# Competition Score — Forge Netherite (+5 pts)
# Reward function from advancement, runs as crafter

# Revoke so it can trigger again
advancement revoke @s only evercraft:competition/forge_netherite

# Server-wide competition scoring
execute if score #comp_active ec.var matches 3 run scoreboard players add @s ec.comp_score 5
execute if score #comp_active ec.var matches 3 run scoreboard players set @s ec.comp_today 1
execute if score #comp_active ec.var matches 3 run title @s actionbar [{text:"+5 ",color:"green"},{text:"Netherite Forge! Score: ",color:"gold"},{score:{name:"@s",objective:"ec.comp_score"},color:"white",bold:true}]
execute if score #comp_active ec.var matches 3 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.2

# H2H competition scoring
execute if score #h2h_active ec.var matches 3 if entity @s[tag=h2h.participant] run scoreboard players add @s ec.h2h_score 5
execute if score #h2h_active ec.var matches 3 if entity @s[tag=h2h.participant] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.2
