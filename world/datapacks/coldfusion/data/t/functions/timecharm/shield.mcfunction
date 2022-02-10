
#########################
# Time Traveler's Charm #
#########################

particle minecraft:enchanted_hit ~3 ~1 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~1 ~-2 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~1 ~-1 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~1 ~0 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~1 ~1 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~1 ~2 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~1 ~3 0 0 0 0 1

particle minecraft:enchanted_hit ~-3 ~1 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~1 ~-2 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~1 ~-1 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~1 ~0 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~1 ~1 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~1 ~2 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~1 ~3 0 0 0 0 1

particle minecraft:enchanted_hit ~2 ~1 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~1 ~1 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~0 ~1 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~-1 ~1 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~-2 ~1 ~3 0 0 0 0 1

particle minecraft:enchanted_hit ~2 ~1 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~1 ~1 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~0 ~1 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~-1 ~1 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~-2 ~1 ~-3 0 0 0 0 1

particle minecraft:enchanted_hit ~3 ~2 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~2 ~-2 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~2 ~-1 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~2 ~0 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~2 ~1 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~2 ~2 0 0 0 0 1
particle minecraft:enchanted_hit ~3 ~2 ~3 0 0 0 0 1

particle minecraft:enchanted_hit ~-3 ~2 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~2 ~-2 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~2 ~-1 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~2 ~0 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~2 ~1 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~2 ~2 0 0 0 0 1
particle minecraft:enchanted_hit ~-3 ~2 ~3 0 0 0 0 1

particle minecraft:enchanted_hit ~2 ~2 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~1 ~2 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~0 ~2 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~-1 ~2 ~3 0 0 0 0 1
particle minecraft:enchanted_hit ~-2 ~2 ~3 0 0 0 0 1

particle minecraft:enchanted_hit ~2 ~2 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~1 ~2 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~0 ~2 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~-1 ~2 ~-3 0 0 0 0 1
particle minecraft:enchanted_hit ~-2 ~2 ~-3 0 0 0 0 1

tag @e[type=arrow] add tcprojectile
tag @e[type=fireball] add tcprojectile
tag @e[type=small_fireball] add tcprojectile

execute as @e[type=arrow,distance=0..3] run tag @s add playerarrow
execute as @e[tag=tcprojectile,distance=3..5,tag=!playerarrow] at @s run function t:timecharm/block

playsound minecraft:block.chorus_flower.grow master @a ~ ~ ~ 0.7 1 0