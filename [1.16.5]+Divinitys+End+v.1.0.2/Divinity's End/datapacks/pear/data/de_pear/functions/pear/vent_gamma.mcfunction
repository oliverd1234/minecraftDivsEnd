execute as @a at @s run playsound minecraft:item.elytra.flying block @s ~ ~ ~ 1 0.5
execute as @a at @s run playsound minecraft:item.totem.use block @a ~ ~ ~ 0.4 0.5

tellraw @a [{"text":"The mechanism groans and shudders, roaring back to life... ","color":"dark_aqua","bold":false,"italic":false},{"text":"Vent Gamma","color":"green","bold":true},{"text":" is now active, and part of the blight has been cleansed from the tower.","bold":false,"italic":false}]

setblock 1024 92 -686 redstone_lamp[lit=true] replace

tag @a add vent_gamma