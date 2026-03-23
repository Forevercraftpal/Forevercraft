# Dream Rate Breakdown — Lore Discovery Sets
# Shows total DR from completed lore sets
# Each completed set adds a unique modifier: evercraft:lore_set_{N}

# Show header + detail only if player has completed at least one set
execute if score @s ec.lore_sets_done matches 1.. run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Lore Discovery:",color:"gray"}]
execute if score @s ec.lore_sets_done matches 1.. run function evercraft:dreams/breakdown/lore_detail
