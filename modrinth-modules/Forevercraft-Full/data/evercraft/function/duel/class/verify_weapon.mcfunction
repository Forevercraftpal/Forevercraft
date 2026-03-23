# Class Duel — Verify Weapon (runs as each duelist during class duel tick)
# Check if player still has the correct class weapon equipped
# Uses ec.aff_class which is set by affinity/detect_class every tick

# If player's current class matches required class, clear warn counter
execute if score @s ec.aff_class = @s ec.duel_class run scoreboard players set @s ec.duel_warn 0
execute if score @s ec.aff_class = @s ec.duel_class run return 0

# Wrong weapon equipped — increment warning counter
scoreboard players add @s ec.duel_warn 1

# Warning at 1 tick
execute if score @s ec.duel_warn matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Re-equip your class weapon! 5 seconds to comply or forfeit!",color:"red",bold:true}]
execute if score @s ec.duel_warn matches 1 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5

# Forfeit at 100 ticks (5 seconds)
execute if score @s ec.duel_warn matches 100.. run tellraw @a[tag=ec.duel_active_tag] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s",color:"red"},{text:" forfeited by switching weapons!",color:"yellow"}]
execute if score @s ec.duel_warn matches 100.. run function evercraft:duel/active/forfeit
