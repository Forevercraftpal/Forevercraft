# === CLASS AFFINITY SYSTEM — LOAD ===
# Called from evercraft:init

# Per-class totals
scoreboard objectives add ec.aff_rg dummy
scoreboard objectives add ec.aff_bk dummy
scoreboard objectives add ec.aff_dn dummy
scoreboard objectives add ec.aff_sk dummy
scoreboard objectives add ec.aff_kt dummy
scoreboard objectives add ec.aff_hl dummy
scoreboard objectives add ec.aff_bl dummy
scoreboard objectives add ec.aff_jv dummy
scoreboard objectives add ec.aff_hp dummy
scoreboard objectives add ec.aff_ar dummy
scoreboard objectives add ec.aff_ht dummy
scoreboard objectives add ec.aff_tk dummy
scoreboard objectives add ec.aff_kn dummy
scoreboard objectives add ec.aff_ds dummy

# Per-class daily caps
scoreboard objectives add ec.daff_rg dummy
scoreboard objectives add ec.daff_bk dummy
scoreboard objectives add ec.daff_dn dummy
scoreboard objectives add ec.daff_sk dummy
scoreboard objectives add ec.daff_kt dummy
scoreboard objectives add ec.daff_hl dummy
scoreboard objectives add ec.daff_bl dummy
scoreboard objectives add ec.daff_jv dummy
scoreboard objectives add ec.daff_hp dummy
scoreboard objectives add ec.daff_ar dummy
scoreboard objectives add ec.daff_ht dummy
scoreboard objectives add ec.daff_tk dummy
scoreboard objectives add ec.daff_kn dummy
scoreboard objectives add ec.daff_ds dummy

# Per-class boost %
scoreboard objectives add ec.affb_rg dummy
scoreboard objectives add ec.affb_bk dummy
scoreboard objectives add ec.affb_dn dummy
scoreboard objectives add ec.affb_sk dummy
scoreboard objectives add ec.affb_kt dummy
scoreboard objectives add ec.affb_hl dummy
scoreboard objectives add ec.affb_bl dummy
scoreboard objectives add ec.affb_jv dummy
scoreboard objectives add ec.affb_hp dummy
scoreboard objectives add ec.affb_ar dummy
scoreboard objectives add ec.affb_ht dummy
scoreboard objectives add ec.affb_tk dummy
scoreboard objectives add ec.affb_kn dummy
scoreboard objectives add ec.affb_ds dummy

# Per-class stage (0-7)
scoreboard objectives add ec.affs_rg dummy
scoreboard objectives add ec.affs_bk dummy
scoreboard objectives add ec.affs_dn dummy
scoreboard objectives add ec.affs_sk dummy
scoreboard objectives add ec.affs_kt dummy
scoreboard objectives add ec.affs_hl dummy
scoreboard objectives add ec.affs_bl dummy
scoreboard objectives add ec.affs_jv dummy
scoreboard objectives add ec.affs_hp dummy
scoreboard objectives add ec.affs_ar dummy
scoreboard objectives add ec.affs_ht dummy
scoreboard objectives add ec.affs_tk dummy
scoreboard objectives add ec.affs_kn dummy
scoreboard objectives add ec.affs_ds dummy

# Shared
scoreboard objectives add ec.aff_class dummy
scoreboard objectives add ec.aff_spirit dummy
scoreboard objectives add ec.aff_twin dummy
scoreboard objectives add ec.aff_boost dummy
scoreboard objectives add ec.aff_timer dummy

# Init timer
scoreboard players set #aff_timer ec.aff_timer 0
