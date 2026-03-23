# Prestige Ability: Death Save — auto-heal when critically low HP (30min cooldown)
# Already hooked in tick/main (calls death_save_trigger when adv.pres_vita=2+ and adv.pa_vita2_cd=0)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Vitality ★★] ",color:"red",bold:true},{text:"Death Save",color:"green"},{text:" — Automatically heal when below 2 hearts! 30min cooldown.",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
