# Prestige Ability: War Cry — buff all wolves with Speed II + Strength II on command
scoreboard players set @s adv.pa_beas3 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Beastmaster ★★★] ",color:"green",bold:true},{text:"War Cry",color:"green"},{text:" — Empower all wolves with Speed II + Strength II for 30s! (5min cooldown)",color:"gray"}]
tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Use: /trigger adv.warcry set 1",color:"dark_gray",italic:true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
