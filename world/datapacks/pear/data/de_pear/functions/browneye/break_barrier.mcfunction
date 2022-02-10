execute unless entity @e[tag=barrier_key] run kill @e[tag=barrier_marker]
execute unless entity @e[tag=barrier_key] run kill @e[tag=barrier_spirit_holder]

execute unless entity @e[tag=barrier_key] run tellraw @a {"text":"Fully stabilized with Life, Death, Sound, and Void, the barrier comes crashing down. The Lord of the Multiverse's portal tower can once again be entered.","color":"#D787FF","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}
execute unless entity @e[tag=barrier_key] run execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 10 0.5
execute unless entity @e[tag=barrier_key] run execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 0.5