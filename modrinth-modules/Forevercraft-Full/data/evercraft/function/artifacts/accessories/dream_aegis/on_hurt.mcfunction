# Dream Aegis — On Hurt (iframe trigger)
# Called as @s = player with Dream Aegis who just took damage, no active iframes
# Grants tick-precise invulnerability scaling with DR:
#   DR 0 → 10 ticks (0.5s, vanilla equivalent)
#   DR 50 → 20 ticks (1.0s, double vanilla)

# Calculate iframe duration: 10 + (DR_score × 2 / 100) ticks
execute store result score #aegis_temp ec.var run attribute @s luck get 10
scoreboard players set #aegis_temp2 ec.var 2
scoreboard players operation #aegis_temp ec.var *= #aegis_temp2 ec.var
scoreboard players operation #aegis_temp ec.var /= #100 adv.temp
scoreboard players set @s ec.aegis_cd 10
scoreboard players operation @s ec.aegis_cd += #aegis_temp ec.var

# Cap at 20 ticks (double vanilla)
execute if score @s ec.aegis_cd matches 21.. run scoreboard players set @s ec.aegis_cd 20

# Apply Resistance V immediately (first tick of protection)
effect give @s resistance 1 4 true

# VFX: shield pulse
playsound minecraft:item.shield.block player @s ~ ~ ~ 0.6 1.5
particle enchant ~ ~1 ~ 0.4 0.5 0.4 1.0 15
