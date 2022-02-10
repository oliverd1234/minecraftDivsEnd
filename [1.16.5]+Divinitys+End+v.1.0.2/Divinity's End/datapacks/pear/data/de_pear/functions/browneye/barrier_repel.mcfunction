execute if entity @e[type=ender_pearl,distance=..25] run tellraw @a {"text":"The unstable barrier around the tower shatters the pearl, destroying its connection to you. Perhaps it would be a better use of time to stabilize the barrier.","color":"#D787FF","italic":false}

execute if entity @e[type=ender_pearl,distance=..25] run execute as @a at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 10 0.5

kill @e[type=ender_pearl,distance=..25]

execute as @a[gamemode=survival,distance=..25] at @s run summon lightning_bolt ~ ~ ~
effect give @a[gamemode=survival,distance=..25] nausea 7 0 true
effect give @a[gamemode=survival,distance=..25] blindness 1 0

tellraw @a[gamemode=survival,distance=..25] {"text":"As you attempt to enter the tower, you are violently thrown away from it. Perhaps it is best to stabilize the barrier before entering...","color":"#D787FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}

execute as @a[distance=..25,gamemode=survival] at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 10 0.5

execute as @a[gamemode=survival,distance=..25] at @s run summon lightning_bolt -249.0 54 -1475.0

tp @a[gamemode=survival,distance=..25] -249.0 54 -1475.0


execute if entity @a[distance=..30] run particle minecraft:dragon_breath ~ ~ ~ 10 10 10 0.05 120