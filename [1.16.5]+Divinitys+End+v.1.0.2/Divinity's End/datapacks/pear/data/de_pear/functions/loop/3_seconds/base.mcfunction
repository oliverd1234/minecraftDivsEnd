execute as @a[predicate=de_pear:items/serenade] run tag @s add serenade
execute as @a[tag=serenade] at @s run execute as @e[type=#cartographer_core:hostile,distance=..12,sort=random,limit=1] at @s run function de_pear:items/serenade
tag @a[tag=serenade] remove serenade

schedule function de_pear:loop/3_seconds/base 3s