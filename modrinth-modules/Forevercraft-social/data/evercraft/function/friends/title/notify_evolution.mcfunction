# Friend Title — Notify player that a title they received has evolved
# @s = the player receiving the title
# temp.evo_list[0].title = the evolved title string

# Map evolved title to display name
data modify storage evercraft:friends temp.evo_display set value "Unknown"
execute if data storage evercraft:friends {temp:{evo_check_title:"brother"}} run data modify storage evercraft:friends temp.evo_display set value "Kinsman"
execute if data storage evercraft:friends {temp:{evo_check_title:"sister"}} run data modify storage evercraft:friends temp.evo_display set value "Kinswoman"
execute if data storage evercraft:friends {temp:{evo_check_title:"mother"}} run data modify storage evercraft:friends temp.evo_display set value "Matriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"father"}} run data modify storage evercraft:friends temp.evo_display set value "Patriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"grandmother"}} run data modify storage evercraft:friends temp.evo_display set value "Elder Matriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"grandfather"}} run data modify storage evercraft:friends temp.evo_display set value "Elder Patriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"cousin"}} run data modify storage evercraft:friends temp.evo_display set value "Blood Kin"
execute if data storage evercraft:friends {temp:{evo_check_title:"uncle"}} run data modify storage evercraft:friends temp.evo_display set value "Guardian"
execute if data storage evercraft:friends {temp:{evo_check_title:"aunt"}} run data modify storage evercraft:friends temp.evo_display set value "Warden"
execute if data storage evercraft:friends {temp:{evo_check_title:"spouse"}} run data modify storage evercraft:friends temp.evo_display set value "Soulbound"

function evercraft:friends/title/notify_evolution_msg with storage evercraft:friends temp
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.2
