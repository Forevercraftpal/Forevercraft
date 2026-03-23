$execute unless predicate {"condition":"minecraft:random_chance","chance":$(illusionerspawning)} run return fail

summon illusioner ~ ~ ~ {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:power":2,"minecraft:punch":1}}}}}
tp @s ~ -3000 ~
kill @s