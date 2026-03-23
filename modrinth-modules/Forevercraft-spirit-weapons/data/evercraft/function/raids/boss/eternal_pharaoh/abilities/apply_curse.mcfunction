# The Eternal Pharaoh — Apply Curse to Random Player
# 3 curse types: Slowness III, Weakness II, or Blindness

# Pick random target
execute as @a[tag=ec.rd_participant,sort=random,limit=1] at @s run function evercraft:raids/boss/eternal_pharaoh/abilities/curse_hit
