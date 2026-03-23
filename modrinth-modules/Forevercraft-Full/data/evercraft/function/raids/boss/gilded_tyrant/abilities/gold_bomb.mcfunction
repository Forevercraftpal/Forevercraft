# Gilded Tyrant — Gold Bombardment
# Summon a marker above a random player, it falls via tick and explodes on landing
# Uses armor_stand instead of falling_block to avoid placing real gold blocks

# Pick a random participant position and summon bomb marker above them
execute as @a[tag=ec.rd_participant,limit=1,sort=random] at @s run summon armor_stand ~ ~12 ~ {Tags:["ec.rd_gt_bomb","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:0b,CustomName:{text:"Gold Bomb",color:"gold"},CustomNameVisible:1b}

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.arrow.shoot hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.4
tellraw @a[tag=ec.rd_participant] [{"text":"  ⚠ ","color":"gold"},{"text":"Golden bombardment incoming!","color":"yellow"}]
