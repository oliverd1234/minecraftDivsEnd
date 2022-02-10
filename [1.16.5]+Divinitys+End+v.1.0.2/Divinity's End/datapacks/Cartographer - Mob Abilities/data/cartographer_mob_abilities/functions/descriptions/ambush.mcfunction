tellraw @p[scores={no_hndbk_pmpt=0}] [{"text":"❰ ","color":"gold","bold":true,"italic":false},{"text":"Enemy Observations ","color":"#FF7D7D","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Ambush","color":"gold","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"The enemy laughs, and after a brief delay, teleports directly behind the nearest player. After teleporting, the enemy cannot move or attack for 1 second.","color":"gray","italic":false}]}},{"text":" has been discovered!","color":"#FFE0A3","bold":false,"italic":false}]
tellraw @p[scores={no_hndbk_pmpt=0}] {"text":"Hover over the ability in chat to see its description!","color":"#FFE0A3","italic":false}
tellraw @p[scores={no_hndbk_pmpt=0}] {"text":"Open Advancements to see Enemy Observations!","color":"#FFE0A3","italic":false}
execute as @p[scores={no_hndbk_pmpt=0}] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1.2
execute as @p[scores={no_hndbk_pmpt=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5