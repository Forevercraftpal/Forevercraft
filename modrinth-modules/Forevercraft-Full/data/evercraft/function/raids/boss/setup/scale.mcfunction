# Spirit Raids — Calculate Boss Scaling
# Called before boss spawn. Sets #rd_hp_scale and #rd_dmg_scale (percentage, 100 = 1.0x)
# Raid bosses scale differently from world bosses — DR 5 is minimum entry

# Start at 100%
scoreboard players set #rd_hp_scale ec.var 100
scoreboard players set #rd_dmg_scale ec.var 100

# Dream Rate scaling: +5% HP and +3% damage per DR point above 5
# (DR 5 is entry requirement, so scaling starts there)
# HP caps at 300% (DR ~50), damage caps at 220%
execute store result score #rd_temp ec.var run attribute @s luck get 10
# Subtract baseline DR 5 (= 50 in ×10 scale)
scoreboard players remove #rd_temp ec.var 50
execute if score #rd_temp ec.var matches ..0 run scoreboard players set #rd_temp ec.var 0

# HP bonus: (DR-5)×10 × 50 / 100 = 5% per DR point
scoreboard players operation #rd_temp2 ec.var = #rd_temp ec.var
scoreboard players set #rd_temp3 ec.var 50
scoreboard players operation #rd_temp2 ec.var *= #rd_temp3 ec.var
scoreboard players operation #rd_temp2 ec.var /= #100 adv.temp
scoreboard players operation #rd_hp_scale ec.var += #rd_temp2 ec.var

# Damage bonus: (DR-5)×10 × 30 / 100 = 3% per DR point
scoreboard players operation #rd_temp2 ec.var = #rd_temp ec.var
scoreboard players set #rd_temp3 ec.var 30
scoreboard players operation #rd_temp2 ec.var *= #rd_temp3 ec.var
scoreboard players operation #rd_temp2 ec.var /= #100 adv.temp
scoreboard players operation #rd_dmg_scale ec.var += #rd_temp2 ec.var

# Multiplayer: +50% HP per extra player (cap +150% for 4 players)
execute store result score #rd_players ec.var if entity @a[tag=ec.rd_participant]
scoreboard players operation #rd_temp ec.var = #rd_players ec.var
scoreboard players remove #rd_temp ec.var 1
execute if score #rd_temp ec.var matches 4.. run scoreboard players set #rd_temp ec.var 3
scoreboard players set #rd_temp2 ec.var 50
scoreboard players operation #rd_temp2 ec.var *= #rd_temp ec.var
scoreboard players operation #rd_hp_scale ec.var += #rd_temp2 ec.var

# Cap HP at 300%, damage at 220%
execute if score #rd_hp_scale ec.var matches 301.. run scoreboard players set #rd_hp_scale ec.var 300
execute if score #rd_dmg_scale ec.var matches 221.. run scoreboard players set #rd_dmg_scale ec.var 220
