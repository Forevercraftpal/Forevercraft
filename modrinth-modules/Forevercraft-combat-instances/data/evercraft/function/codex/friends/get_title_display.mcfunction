# Codex Friends — Get display name for current title
# Reads temp.detail_title, sets temp.title_display

data modify storage evercraft:friends temp.title_display set value "Friend"
execute if data storage evercraft:friends {temp:{detail_title:"brother"}} run data modify storage evercraft:friends temp.title_display set value "Brother"
execute if data storage evercraft:friends {temp:{detail_title:"sister"}} run data modify storage evercraft:friends temp.title_display set value "Sister"
execute if data storage evercraft:friends {temp:{detail_title:"mother"}} run data modify storage evercraft:friends temp.title_display set value "Mother"
execute if data storage evercraft:friends {temp:{detail_title:"father"}} run data modify storage evercraft:friends temp.title_display set value "Father"
execute if data storage evercraft:friends {temp:{detail_title:"grandmother"}} run data modify storage evercraft:friends temp.title_display set value "Grandmother"
execute if data storage evercraft:friends {temp:{detail_title:"grandfather"}} run data modify storage evercraft:friends temp.title_display set value "Grandfather"
execute if data storage evercraft:friends {temp:{detail_title:"cousin"}} run data modify storage evercraft:friends temp.title_display set value "Cousin"
execute if data storage evercraft:friends {temp:{detail_title:"uncle"}} run data modify storage evercraft:friends temp.title_display set value "Uncle"
execute if data storage evercraft:friends {temp:{detail_title:"aunt"}} run data modify storage evercraft:friends temp.title_display set value "Aunt"
execute if data storage evercraft:friends {temp:{detail_title:"spouse"}} run data modify storage evercraft:friends temp.title_display set value "Spouse"
