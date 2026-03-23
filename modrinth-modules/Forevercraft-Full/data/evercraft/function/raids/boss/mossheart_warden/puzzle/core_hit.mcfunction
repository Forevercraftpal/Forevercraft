# The Mossheart Warden — Core Hit (Destroy Spawner Core)
# Called when an active core is clicked enough times
# Cores use interaction click detection — each click = 1 hit, cores have 4 HP (tag cycling)

# Called as the core entity
data remove entity @s interaction

# Tag cycling for HP: no tags = 4 HP, ch1 = 3 HP, ch1+ch2 = 2 HP, ch1+ch2+ch3 = 1 HP, +ch4 = destroyed
# Check most-advanced state first to prevent cascade
execute if entity @s[tag=ec.rd_mw_ch3,tag=!ec.rd_mw_ch4] run tag @s add ec.rd_mw_ch4
execute if entity @s[tag=ec.rd_mw_ch2,tag=!ec.rd_mw_ch3] run tag @s add ec.rd_mw_ch3
execute if entity @s[tag=ec.rd_mw_ch1,tag=!ec.rd_mw_ch2] run tag @s add ec.rd_mw_ch2
execute if entity @s[tag=!ec.rd_mw_ch1] run tag @s add ec.rd_mw_ch1

# VFX: hit feedback
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.2 8
playsound minecraft:entity.iron_golem.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.5

# If destroyed (has h4 tag)
execute if entity @s[tag=ec.rd_mw_ch4] run function evercraft:raids/boss/mossheart_warden/puzzle/core_destroy
