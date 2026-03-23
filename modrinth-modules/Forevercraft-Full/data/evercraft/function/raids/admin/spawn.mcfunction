# Spirit Raids — Admin Boss Spawn
# Usage: /function evercraft:raids/admin/spawn {boss_id:7}
# Boss IDs: 7=Ashen Lord, 8=Leviathan, 9=Eternal Pharaoh, 10=Venomweaver,
#            11=Deepcrawler, 12=Mossheart Warden, 13=Crimson Bulwark

# Safety: don't spawn if a raid boss is already active
execute if score #rd_active ec.var matches 1 run tellraw @s [{text:"[Raid Admin] ",color:"red"},{text:"A raid boss is already active! Kill it first.",color:"gray"}]
execute if score #rd_active ec.var matches 1 run return 0

# Route to boss-specific spawn
execute if score #rd_admin_id ec.var matches 7 run function evercraft:raids/boss/ashen_lord/spawn
execute if score #rd_admin_id ec.var matches 8 run function evercraft:raids/boss/leviathan/spawn
execute if score #rd_admin_id ec.var matches 9 run function evercraft:raids/boss/eternal_pharaoh/spawn
execute if score #rd_admin_id ec.var matches 10 run function evercraft:raids/boss/venomweaver/spawn
execute if score #rd_admin_id ec.var matches 11 run function evercraft:raids/boss/deepcrawler/spawn
execute if score #rd_admin_id ec.var matches 12 run function evercraft:raids/boss/mossheart_warden/spawn
execute if score #rd_admin_id ec.var matches 13 run function evercraft:raids/boss/crimson_bulwark/spawn
