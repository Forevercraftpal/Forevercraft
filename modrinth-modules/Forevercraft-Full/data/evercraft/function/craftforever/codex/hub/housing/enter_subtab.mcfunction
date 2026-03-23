# Housing — Enter sub-tab (runs as interaction entity)
# Args: {page:N, title:"...", color:"...", spawn:"..."}
data remove entity @s interaction
$data modify storage evercraft:cf_temp subtab set value {"page":$(page),"title":"$(title)","color":"$(color)","spawn":"$(spawn)"}
execute as @p[tag=CF.InCodex,distance=..5] at @s facing entity @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:craftforever/codex/hub/housing/do_enter_subtab with storage evercraft:cf_temp subtab
