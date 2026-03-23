# Chrono Shard — Reset Class Affinity
# Zeros all 14 class affinities + daily caps + boosts + stages (56 scores)

# Reset all 14 class affinity totals
scoreboard players set @s ec.aff_rg 0
scoreboard players set @s ec.aff_bk 0
scoreboard players set @s ec.aff_dn 0
scoreboard players set @s ec.aff_sk 0
scoreboard players set @s ec.aff_kt 0
scoreboard players set @s ec.aff_hl 0
scoreboard players set @s ec.aff_bl 0
scoreboard players set @s ec.aff_jv 0
scoreboard players set @s ec.aff_ar 0
scoreboard players set @s ec.aff_ht 0
scoreboard players set @s ec.aff_tk 0
scoreboard players set @s ec.aff_kn 0
scoreboard players set @s ec.aff_hp 0
scoreboard players set @s ec.aff_ds 0

# Reset daily caps
scoreboard players set @s ec.daff_rg 0
scoreboard players set @s ec.daff_bk 0
scoreboard players set @s ec.daff_dn 0
scoreboard players set @s ec.daff_sk 0
scoreboard players set @s ec.daff_kt 0
scoreboard players set @s ec.daff_hl 0
scoreboard players set @s ec.daff_bl 0
scoreboard players set @s ec.daff_jv 0
scoreboard players set @s ec.daff_ar 0
scoreboard players set @s ec.daff_ht 0
scoreboard players set @s ec.daff_tk 0
scoreboard players set @s ec.daff_kn 0
scoreboard players set @s ec.daff_hp 0
scoreboard players set @s ec.daff_ds 0

# Reset boosts
scoreboard players set @s ec.affb_rg 0
scoreboard players set @s ec.affb_bk 0
scoreboard players set @s ec.affb_dn 0
scoreboard players set @s ec.affb_sk 0
scoreboard players set @s ec.affb_kt 0
scoreboard players set @s ec.affb_hl 0
scoreboard players set @s ec.affb_bl 0
scoreboard players set @s ec.affb_jv 0
scoreboard players set @s ec.affb_ar 0
scoreboard players set @s ec.affb_ht 0
scoreboard players set @s ec.affb_tk 0
scoreboard players set @s ec.affb_kn 0
scoreboard players set @s ec.affb_hp 0
scoreboard players set @s ec.affb_ds 0

# Reset stages
scoreboard players set @s ec.affs_rg 0
scoreboard players set @s ec.affs_bk 0
scoreboard players set @s ec.affs_dn 0
scoreboard players set @s ec.affs_sk 0
scoreboard players set @s ec.affs_kt 0
scoreboard players set @s ec.affs_hl 0
scoreboard players set @s ec.affs_bl 0
scoreboard players set @s ec.affs_jv 0
scoreboard players set @s ec.affs_ar 0
scoreboard players set @s ec.affs_ht 0
scoreboard players set @s ec.affs_tk 0
scoreboard players set @s ec.affs_kn 0
scoreboard players set @s ec.affs_hp 0
scoreboard players set @s ec.affs_ds 0

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"Class Affinity","color":"gold"},{"text":" has been reset to zero.","color":"white"}]
