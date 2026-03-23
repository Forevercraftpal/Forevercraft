# Evercraft Fishing Crates - Initialize scoreboards and settings

# Global statistics scoreboard
scoreboard objectives add fc.global_stats dummy {text:"Fishing Crate Stats",color:"#14C472",bold:true,underlined:true}

scoreboard players add crates_fished fc.global_stats 0
scoreboard players add common_crates fc.global_stats 0
scoreboard players add uncommon_crates fc.global_stats 0
scoreboard players add rare_crates fc.global_stats 0
scoreboard players add ornate_crates fc.global_stats 0
scoreboard players add exquisite_crates fc.global_stats 0
scoreboard players add mythical_crates fc.global_stats 0

# Per-player statistics
scoreboard objectives add fc.total_crates dummy {text:"Total Crates Fished",color:"yellow",bold:true}
scoreboard objectives add fc.common dummy {text:"Common Crates",color:"white",bold:true}
scoreboard objectives add fc.uncommon dummy {text:"Uncommon Crates",color:"blue",bold:true}
scoreboard objectives add fc.rare dummy {text:"Rare Crates",color:"aqua",bold:true}
scoreboard objectives add fc.ornate dummy {text:"Ornate Crates",color:"dark_purple",bold:true}
scoreboard objectives add fc.exquisite dummy {text:"Exquisite Crates",color:"gold",bold:true}
scoreboard objectives add fc.mythical dummy {text:"Mythical Crates",color:"light_purple",bold:true}

# Fish caught detection — stat-based scoreboard (auto-increments with vanilla stat)
scoreboard objectives add fc.fish_caught minecraft.custom:minecraft.fish_caught
# Previous fish count — dummy scoreboard to track delta
scoreboard objectives add fc.prev_fish dummy

# Finish initialization
scoreboard players set fishing_crates ec.init 1
schedule function evercraft:fishing/ref/tellraw/init 1s
