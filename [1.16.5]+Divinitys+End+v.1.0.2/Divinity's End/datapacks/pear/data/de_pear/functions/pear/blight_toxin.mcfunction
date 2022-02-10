execute if block ~ ~ ~ cave_air run tag @s add blight_toxin
execute if block ~ ~ ~-1 cave_air run tag @s add blight_toxin
execute if block ~ ~ ~1 cave_air run tag @s add blight_toxin
execute if block ~1 ~ ~ cave_air run tag @s add blight_toxin
execute if block ~-1 ~ ~ cave_air run tag @s add blight_toxin
execute if block ~1 ~ ~1 cave_air run tag @s add blight_toxin
execute if block ~-1 ~ ~-1 cave_air run tag @s add blight_toxin
execute if block ~1 ~ ~-1 cave_air run tag @s add blight_toxin
execute if block ~-1 ~ ~1 cave_air run tag @s add blight_toxin
execute if block ~ ~1 ~ cave_air run tag @s add blight_toxin
execute if block ~ ~1 ~-1 cave_air run tag @s add blight_toxin
execute if block ~ ~1 ~1 cave_air run tag @s add blight_toxin
execute if block ~1 ~1 ~ cave_air run tag @s add blight_toxin
execute if block ~-1 ~1 ~ cave_air run tag @s add blight_toxin
execute if block ~1 ~1 ~1 cave_air run tag @s add blight_toxin
execute if block ~-1 ~1 ~-1 cave_air run tag @s add blight_toxin
execute if block ~1 ~1 ~-1 cave_air run tag @s add blight_toxin
execute if block ~-1 ~1 ~1 cave_air run tag @s add blight_toxin
execute if block ~ ~-1 ~ cave_air run tag @s add blight_toxin
execute if block ~ ~-1 ~-1 cave_air run tag @s add blight_toxin
execute if block ~ ~-1 ~1 cave_air run tag @s add blight_toxin
execute if block ~1 ~-1 ~ cave_air run tag @s add blight_toxin
execute if block ~-1 ~-1 ~ cave_air run tag @s add blight_toxin
execute if block ~1 ~-1 ~1 cave_air run tag @s add blight_toxin
execute if block ~-1 ~-1 ~-1 cave_air run tag @s add blight_toxin
execute if block ~1 ~-1 ~-1 cave_air run tag @s add blight_toxin
execute if block ~-1 ~-1 ~1 cave_air run tag @s add blight_toxin

effect give @s[tag=blight_toxin] slowness 2 2 true
effect give @s[tag=blight_toxin] weakness 2 2 true
effect give @s[tag=blight_toxin] poison 2 4 true
effect give @s[tag=blight_toxin] nausea 4 0 true

playsound minecraft:entity.phantom.swoop player @s[tag=blight_toxin] ~ ~ ~ 1 2

execute as @s[tag=blight_toxin] at @s run particle minecraft:warped_spore ~ ~1 ~ 0.5 0.5 0.5 1 300

title @s[tag=blight_toxin] actionbar {"text":"Suffering from Blight Toxin! Cleanse the area first!","color":"dark_aqua","italic":false}

tag @s[tag=blight_toxin] remove blight_toxin