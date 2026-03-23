tag @s add ec.entity
scoreboard players set @s ec.entity 500

playsound minecraft:entity.piglin.celebrate master @a[distance=..20] ~ ~ ~ 1 2 1

attribute @s armor modifier add ec.gilded_rune_debuff -0.15 add_multiplied_total
attribute @s armor_toughness modifier add ec.gilded_rune_debuff -0.15 add_multiplied_total

scoreboard players set @s ec.absorb_steal 200