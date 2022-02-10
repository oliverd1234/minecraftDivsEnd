tellraw @a [{"text":"<","color":"gray"},{"text":"The Alchemist","color":"dark_aqua"},{"text":"> The second option is to ","color":"gray"},{"text":"open my office here, and use the mask within.","color":"aqua","bold":true},{"text":" The office is locked by a key, unfortunately confiscated by the city guard. ","color":"gray"},{"text":"It is likely hidden somewhere in the city.","color":"aqua","bold":true}]
execute as @e[tag=alchemist_ghost] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=alchemist_ghost] at @s run playsound minecraft:entity.villager.trade neutral @a[distance=..10] ~ ~ ~ 1 1

schedule function de_pear:pear/alchemist_3_4 9s