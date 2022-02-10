tellraw @a [{"text":"<","color":"gray"},{"text":"The Alchemist","color":"dark_aqua"},{"text":"> Any emeralds you may find within the city, you may bring them to me. I can transmute them into more helpful materials. I will repair this vent here for you, now that you are armed with all the advice I can give. Good luck traveler.","color":"gray"}]
execute as @e[tag=alchemist_ghost] at @s run tp @s ~ ~ ~ facing entity @p feet
setblock 1023 85 -685 warped_button[face=floor,facing=east] replace
particle end_rod 1023 85 -685 0.2 0.2 0.2 0.05 20 normal
execute as @e[tag=alchemist_ghost] at @s run playsound minecraft:block.anvil.use neutral @a[distance=..10] ~ ~ ~ 1 1.5

forceload add 1024 -688
forceload add 1022 -687
forceload add 1022 -691