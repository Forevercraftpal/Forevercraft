# Friend Title — Deliver title notification message (non-friend titles)
# @s = target player
# Macro args: title, from_cid

# Map title to display name
data modify storage evercraft:friends temp.notify_title_display set value "Friend"
execute if data storage evercraft:friends {temp:{pending:{title:"brother"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Brother"
execute if data storage evercraft:friends {temp:{pending:{title:"sister"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Sister"
execute if data storage evercraft:friends {temp:{pending:{title:"mother"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Mother"
execute if data storage evercraft:friends {temp:{pending:{title:"father"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Father"
execute if data storage evercraft:friends {temp:{pending:{title:"grandmother"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Grandmother"
execute if data storage evercraft:friends {temp:{pending:{title:"grandfather"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Grandfather"
execute if data storage evercraft:friends {temp:{pending:{title:"cousin"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Cousin"
execute if data storage evercraft:friends {temp:{pending:{title:"uncle"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Uncle"
execute if data storage evercraft:friends {temp:{pending:{title:"aunt"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Aunt"
execute if data storage evercraft:friends {temp:{pending:{title:"spouse"}}} run data modify storage evercraft:friends temp.notify_title_display set value "Spouse"

# Copy from_cid to temp level for macro
data modify storage evercraft:friends temp.from_cid set from storage evercraft:friends temp.pending.from_cid
function evercraft:friends/title/deliver_notify_final with storage evercraft:friends temp
