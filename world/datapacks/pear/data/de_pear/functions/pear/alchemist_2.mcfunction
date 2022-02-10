tellraw @a [{"text":"<","color":"gray"},{"text":"The Alchemist","color":"dark_aqua"},{"text":"> My city... my beloved and forever lost city. You might be wondering how it ended this way? What those creatures were? You deserve to know, if you wish to tread forward.","color":"gray"}]
tag @a add alchemist_2
execute as @e[tag=alchemist_ghost] at @s run playsound minecraft:entity.villager.trade neutral @a[distance=..10] ~ ~ ~ 1 1

schedule function de_pear:pear/alchemist_2_2 6s