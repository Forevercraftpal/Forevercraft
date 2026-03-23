# Hollow Sovereign — Phase 3 Setup: The Three Shadows
# Boss splits into 3 copies. Kill all tendrils. Only the REAL boss takes damage.

# Kill all tendrils from Phase 2
kill @e[tag=ec.rd_tendril]

# Reset silence state
scoreboard players set #rd_hs_silence ec.var 0
scoreboard players set #rd_hs_silence_timer ec.var 0

# Spawn 2 fake shadow copies near the boss
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon wither_skeleton ~4 ~ ~0 {Tags:["ec.rd_hs","ec.rd_hs_fake","ec.rd_minion","ec.rd_fake"],NoAI:0b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:netherite_sword",components:{"minecraft:enchantment_glint_override":true}},head:{id:"minecraft:wither_skeleton_skull"}}}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon wither_skeleton ~-4 ~ ~0 {Tags:["ec.rd_hs","ec.rd_hs_fake","ec.rd_minion","ec.rd_fake"],NoAI:0b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:netherite_sword",components:{"minecraft:enchantment_glint_override":true}},head:{id:"minecraft:wither_skeleton_skull"}}}

# Apply same scale and visual to fakes
execute as @e[tag=ec.rd_hs_fake] run attribute @s scale base set 1.8
execute as @e[tag=ec.rd_hs_fake] run effect give @s fire_resistance infinite 0 true

# Give fakes custom names matching the real boss
execute as @e[tag=ec.rd_hs_fake] run data modify entity @s CustomName set value [{text:"💀 ",color:"dark_red"},{text:"The Hollow Sovereign",color:"dark_aqua",bold:true},{text:" 💀",color:"dark_red"}]
execute as @e[tag=ec.rd_hs_fake] run data modify entity @s CustomNameVisible set value 1b

# Apply speed and damage to fakes (they fight!)
execute as @e[tag=ec.rd_hs_fake] run attribute @s movement_speed modifier add evercraft:raid_boss/base 0.1 add_multiplied_base
execute as @e[tag=ec.rd_hs_fake] run attribute @s attack_damage modifier add evercraft:raid_boss/base 3.0 add_multiplied_base
execute as @e[tag=ec.rd_hs_fake] run attribute @s knockback_resistance modifier add evercraft:raid_boss/base 0.8 add_value

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"THREE STAND BEFORE YOU. ONLY ONE IS REAL.\"","color":"dark_red","bold":true}]
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"Watch the flames carefully...","color":"gray","italic":true}]

# VFX — shadow split
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:large_smoke ~ ~1 ~ 2 2 2 0.1 40
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.phantom.ambient hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.3
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.wither.ambient hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 0.5

# Initialize shadow respawn timer (inactive until a fake dies)
scoreboard players set #rd_hs_shadow_cd ec.var 0
