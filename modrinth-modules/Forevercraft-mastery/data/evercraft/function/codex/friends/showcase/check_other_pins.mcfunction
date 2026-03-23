# Showcase — Check/init other player's pins (macro)
# $(target_uuid3)
$execute unless data storage evercraft:showcase "u$(target_uuid3)".pins run data modify storage evercraft:showcase "u$(target_uuid3)".pins set value [{id:"",name:"",desc:"",color:""},{id:"",name:"",desc:"",color:""},{id:"",name:"",desc:"",color:""}]
$data modify storage evercraft:showcase temp.pins set from storage evercraft:showcase "u$(target_uuid3)".pins
