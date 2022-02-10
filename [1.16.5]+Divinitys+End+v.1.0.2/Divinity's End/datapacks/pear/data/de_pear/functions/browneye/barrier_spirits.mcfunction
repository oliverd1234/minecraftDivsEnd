execute as @e[tag=barrier_spirit] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}

execute as @s at @s run tp @e[tag=barrier_spirit,distance=10..] @s