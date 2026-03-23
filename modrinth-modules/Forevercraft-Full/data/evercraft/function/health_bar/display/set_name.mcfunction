# RPG Health Bar — Set Name (Macro)
# Args from storage: $(slot), $(hp), $(max_hp)
# Context: @e[tag=hb.target,limit=1] exists — the mob tagged in found.mcfunction

# Name format: ◆ [Mob Name] ◆  [hp]/[max_hp] ❤
# The selector resolves the mob's display name (CustomName if set, else entity type)
$bossbar set evercraft:hb_$(slot) name [{text:"◆ ",color:"#D6D0C7"},{selector:"@e[tag=hb.target,limit=1]",color:"gold",bold:true},{text:" ◆ ",color:"#D6D0C7"},{text:"$(hp)",color:"white"},{text:"/",color:"gray"},{text:"$(max_hp)",color:"white"},{text:" ❤",color:"red"}]
