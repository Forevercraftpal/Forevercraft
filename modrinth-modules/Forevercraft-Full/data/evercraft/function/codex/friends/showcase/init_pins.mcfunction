# Showcase — Init pins if they don't exist (macro)
# $(self_uuid3)
$execute unless data storage evercraft:showcase "u$(self_uuid3)".pins run data modify storage evercraft:showcase "u$(self_uuid3)".pins set value [{id:"",name:"",desc:"",color:""},{id:"",name:"",desc:"",color:""},{id:"",name:"",desc:"",color:""}]
