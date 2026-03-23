# Gilded Tyrant — Enter Phase 3: The Berserk
# Gold armor cracks — reduced defense, increased speed + damage

# Kill all remaining piglins
kill @e[tag=ec.rd_gt_add]

# Remove armor modifier (armor cracks — from 20 to 0)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:raid_boss/base

# Apply berserk speed boost
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:raid_boss/berserk 0.5 add_multiplied_base

# Apply berserk damage boost (+50%)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:raid_boss/berserk 0.5 add_multiplied_base

# Speed III visual
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s speed infinite 2 true

# Reset lava timer
scoreboard players set #rd_gt_lava_timer ec.var 0

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"MY CROWN! MY ARMOR! I WILL TEAR YOU APART WITH MY BARE HANDS!\"","color":"red","bold":true}]

# VFX — berserk eruption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 5
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ravager.roar hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
