# Artifact Crate Finish — Mythical
data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Mythical Artifact Crate",color:"gold",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~

# Crate statistics tracking
scoreboard players add @p[distance=..16] ec.crate_art 1
scoreboard players add @p[distance=..16] ach.crates_opened 1
