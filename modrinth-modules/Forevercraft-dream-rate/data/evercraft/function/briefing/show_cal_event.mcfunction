# Display current calendar event name in briefing
execute if score #cal_event_id ec.var matches 1 run tellraw @s [{text:"Harvest Festival active!",color:"#8BC34A",italic:true}]
execute if score #cal_event_id ec.var matches 2 run tellraw @s [{text:"Blood Moon rising!",color:"#F44336",italic:true}]
execute if score #cal_event_id ec.var matches 3 run tellraw @s [{text:"Merchant's Bounty active!",color:"#FFC107",italic:true}]
execute if score #cal_event_id ec.var matches 4 run tellraw @s [{text:"Fishing Derby active!",color:"#03A9F4",italic:true}]
execute if score #cal_event_id ec.var matches 5 run tellraw @s [{text:"Meteor Shower tonight!",color:"#9C27B0",italic:true}]
execute if score #cal_event_id ec.var matches 6 run tellraw @s [{text:"Dimensional Rift open!",color:"#E040FB",italic:true}]
execute if score #cal_event_id ec.var matches 7 run tellraw @s [{text:"Prosperity Tide flowing!",color:"#4CAF50",italic:true}]
