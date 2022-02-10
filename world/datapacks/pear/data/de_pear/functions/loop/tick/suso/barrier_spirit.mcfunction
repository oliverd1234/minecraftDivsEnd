particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 1
execute if entity @s[tag=life_spirit] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.4 0.4 0.4 0 10
execute if entity @s[tag=death_spirit] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.4 0.4 0.4 0 10
execute if entity @s[tag=sound_spirit] run particle minecraft:dust 0.75 0.75 0.75 1 ~ ~ ~ 0.4 0.4 0.4 0 10
execute if entity @s[tag=void_spirit] run particle minecraft:dust 0.25 0.25 0.25 1 ~ ~ ~ 0.4 0.4 0.4 0 10