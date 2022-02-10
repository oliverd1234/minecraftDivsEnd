tellraw @a [{"text":"<","color":"gray"},{"text":"The Alchemist","color":"dark_aqua"},{"text":"> That damn Minoan, he must have confiscated and searched my lab. That might make this harder than I anticipated. No matter...","color":"gray"}]
tag @a add alchemist_3
execute as @e[tag=alchemist_ghost] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=alchemist_ghost] at @s run playsound minecraft:entity.villager.no neutral @a[distance=..10] ~ ~ ~ 1 0.85

schedule function de_pear:pear/alchemist_3_2 5s