tellraw @p[scores={no_hndbk_pmpt=0}] [{"text":"❰ ","color":"gold","bold":true,"italic":false},{"text":"Enemy Observations ","color":"#FF7D7D","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Soulfire Nova","color":"gold","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"The enemy charges up, and after a delay, releases a burst of soul fire around it. Players within the burst have 8 health stolen from them (and given to the casting mob).","color":"gray","italic":false}]}},{"text":" has been discovered!","color":"#FFE0A3","bold":false,"italic":false}]
tellraw @p[scores={no_hndbk_pmpt=0}] {"text":"Hover over the ability in chat to see its description!","color":"#FFE0A3","italic":false}
tellraw @p[scores={no_hndbk_pmpt=0}] {"text":"Open Advancements to see Enemy Observations!","color":"#FFE0A3","italic":false}
execute as @p[scores={no_hndbk_pmpt=0}] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1.2
execute as @p[scores={no_hndbk_pmpt=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5