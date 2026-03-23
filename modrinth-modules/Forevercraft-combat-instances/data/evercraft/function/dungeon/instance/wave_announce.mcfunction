# Dungeon Instance — Wave Title Announcement
# Uses #dg_wave for wave number display

execute if score #dg_wave ec.var matches 1 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 1 run title @a[tag=dg.player] title {text:"Wave 1",color:"gold",bold:true}
execute if score #dg_wave ec.var matches 2 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 2 run title @a[tag=dg.player] title {text:"Wave 2",color:"gold",bold:true}
execute if score #dg_wave ec.var matches 3 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 3 run title @a[tag=dg.player] title {text:"Wave 3",color:"gold",bold:true}
execute if score #dg_wave ec.var matches 4 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 4 run title @a[tag=dg.player] title {text:"Wave 4",color:"gold",bold:true}
execute if score #dg_wave ec.var matches 5 run title @a[tag=dg.player] times 5 40 10
execute if score #dg_wave ec.var matches 5 run title @a[tag=dg.player] title {text:"FINAL WAVE",color:"dark_red",bold:true}

playsound minecraft:entity.ender_dragon.growl master @a[tag=dg.player] ~ ~ ~ 0.4 1.5
execute if score #dg_wave ec.var matches 5 run playsound minecraft:entity.wither.spawn master @a[tag=dg.player] ~ ~ ~ 0.6 0.6
