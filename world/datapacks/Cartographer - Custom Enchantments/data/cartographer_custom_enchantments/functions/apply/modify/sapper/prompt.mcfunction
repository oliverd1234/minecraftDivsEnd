tellraw @s [{"text":"Currently Adding ","color":"yellow","bold":true},{"text":"Sapper ","color":"red","bold":true},{"text":"to Held Item.","bold":true}]
tellraw @s {"text":"Select a Level:","color":"aqua"}
tellraw @s {"text":"[Level I]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Level 1 to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/sapper/level_1"}}
tellraw @s {"text":"[Level II]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Level 2 to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/sapper/level_2"}}
tellraw @s {"text":"[Level III]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Level 3 to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/sapper/level_3"}}
tellraw @s {"text":"[Level IV]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Level 4 to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/sapper/level_4"}}


playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0