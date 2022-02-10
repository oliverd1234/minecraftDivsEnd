scoreboard players set @s damage_queue 2
scoreboard players set @s[scores={effect_bleed=1..}] damage_queue 4

execute if entity @s[scores={effect_bleed=1..}] run scoreboard players add @a[tag=!serenade_charge,tag=serenade,scores={echo_charges=2}] echo_charges 1
execute if entity @s[scores={effect_bleed=1..}] run scoreboard players add @a[tag=!serenade_charge,tag=serenade,scores={echo_charges=..1}] echo_charges 2
execute if entity @s[scores={effect_bleed=1..}] run execute as @a[tag=!serenade_charge,tag=serenade,scores={echo_charges=..2}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 0.5 0.5
execute if entity @s[scores={effect_bleed=1..}] run execute as @a[tag=!serenade_charge,tag=serenade,scores={echo_charges=..2}] at @s run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 2
execute if entity @s[scores={effect_bleed=1..}] run tag @a[tag=!serenade_charge,tag=serenade] add serenade_charge

execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=0,echo_charges=3}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=0,echo_charges=2}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=0,echo_charges=1}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=0,echo_charges=0}] actionbar [{"text":"⚔ <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> ⚔","color":"red","italic":false}]

execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1}] times 0 45 5
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1}] times 0 45 5
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1}] title {"text":" "}
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1}] title {"text":" "}

execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1,echo_charges=3}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1,echo_charges=2}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1,echo_charges=1}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
execute if entity @s[scores={effect_bleed=1..}] run title @a[tag=serenade,scores={ui_location=1,echo_charges=0}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]


function cartographer_core:helper/deal_damage/by_score
function cartographer_core:helper/deal_damage/invulnerable_tick

scoreboard players add @s[scores={effect_bleed=1..},type=#cartographer_core:hostile] effect_bleed 11

execute unless entity @s[type=#cartographer_core:hostile,scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 4
