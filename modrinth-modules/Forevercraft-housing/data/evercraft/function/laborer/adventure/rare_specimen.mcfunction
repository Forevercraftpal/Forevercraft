# Adventure: Rare Specimen (Any)
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"You won't believe what I found!","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"A remarkable specimen, perfectly preserved.\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"Rare trophy obtained!","color":"green"}]
give @a[tag=ec.lb_owner,limit=1] minecraft:amethyst_cluster 1
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
