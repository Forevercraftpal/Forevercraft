# Get hexUUID
$data modify storage evercraft:treasure/database "$(UUID)".hexUUID set from storage evercraft:treasure/main out
$data modify storage evercraft:treasure/database "$(UUID)".intUUID set value $(UUID)
$data modify storage evercraft:treasure/database "$(UUID)".common_count set value 0
$data modify storage evercraft:treasure/database "$(UUID)".rare_count set value 0
$data modify storage evercraft:treasure/database "$(UUID)".epic_count set value 0
$data modify storage evercraft:treasure/database "$(UUID)".mythical_count set value 0
$data modify storage evercraft:treasure/database "$(UUID)".play_time set value 0
$data modify storage evercraft:treasure/database "$(UUID)".total set value 0

# Get player name
summon item_display ~ ~ ~ {UUID:[I;0,0,0,1],view_range:0f,width:0f,height:0f,item:{id:"minecraft:player_head",count:1}}
item modify entity 0-0-0-0-1 container.0 {function:fill_player_head,entity:this}
$data modify storage evercraft:treasure/database "$(UUID)".lastName set from entity 0-0-0-0-1 item.components.minecraft:profile.name
kill 0-0-0-0-1