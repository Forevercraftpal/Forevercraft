# Cave Darkness — Per-player tick (already confirmed in dark cave)
# Run as player, at player position

# Apply darkness effect
effect give @s darkness 2 0 true

# Prospect: Ore nodes glow in dark caves
execute as @e[type=marker,tag=ec.prospect_data,distance=..24] at @s run particle minecraft:electric_spark ~ ~0.5 ~ 0.2 0.2 0.2 0.01 3 force

# Night Terrors: Deep cave variant — rare chance to spawn terror effects
execute if entity @s[scores={ec.nt_active=0,ec.nt_cd=0}] if predicate {"condition":"minecraft:random_chance","chance":0.01} run tellraw @s [{text:"  ",color:"dark_gray"},{text:"Something stirs in the darkness...",color:"dark_red",italic:true}]
execute if entity @s[scores={ec.nt_active=0,ec.nt_cd=0}] if predicate {"condition":"minecraft:random_chance","chance":0.003} run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.8 0.5
