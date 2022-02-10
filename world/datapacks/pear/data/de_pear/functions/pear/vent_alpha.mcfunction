execute as @a at @s run playsound minecraft:item.elytra.flying block @s ~ ~ ~ 1 0.5
execute as @a at @s run playsound minecraft:item.totem.use block @a ~ ~ ~ 0.4 0.5

tellraw @a [{"text":"The mechanism groans and shudders, roaring back to life... ","color":"dark_aqua","bold":false,"italic":false},{"text":"Vent Alpha","color":"red","bold":true},{"text":" is now active, and part of the blight has been cleansed from the tower.","bold":false,"italic":false}]

setblock 1023 92 -690 redstone_lamp[lit=true] replace

schedule function de_pear:pear/alchemist_vent 3s

tag @a add vent_alpha