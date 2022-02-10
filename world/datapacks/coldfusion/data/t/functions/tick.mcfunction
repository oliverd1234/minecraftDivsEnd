
# Trident of time commands
function t:timetrident/tick
function t:gatlingbow/tick
function t:betabow/tick
function t:timecharm/tick

# Crystal commands

#CHANGE THIS ENTITY INTO A UUID CFDE000-0000-0000-0000-000000000000
#/summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"TRController"}',UUID:[I;217964544,0,0,0]}

execute as CFDE000-0000-0000-0000-000000000000 at @s run function t:crystals/tick

# Infinite tridents chest

execute as CFDE000-0000-0000-0000-000000000000 at @s if block 3409 67 -105 air run setblock 3409 67 -105 chest[facing=north]
execute as CFDE000-0000-0000-0000-000000000000 at @s if block 3761 60 -135 air run setblock 3761 60 -135 chest[facing=south]

execute as CFDE000-0000-0000-0000-000000000000 at @s if block 3409 67 -105 chest{Items:[]} run data merge block 3409 67 -105 {Items:[{Slot:13b,id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text":"Trident of Time","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Riptide III","color":"gray","italic":false}','{"text":" "}','{"text":"Bend the very fabric of time","color":"dark_gray","italic":false}','{"text":"to reach your destination","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Temporal Storm","color":"gray","italic":false,"underlined":true}','{"text":"Riptide deals 5x damage","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:7,Unbreakable:1b,timetrident:1b,Enchantments:[{id:"minecraft:riptide",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-729428737,751062592,-1765663393,843334149]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.1,Operation:0,UUID:[I;-200267019,1238912642,-1366305132,-1806722825]}]}}]}
execute as CFDE000-0000-0000-0000-000000000000 at @s if block 3761 60 -135 chest{Items:[]} run data merge block 3761 60 -135 {Items:[{Slot:13b,id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text":"Trident of Time","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Riptide III","color":"gray","italic":false}','{"text":" "}','{"text":"Bend the very fabric of time","color":"dark_gray","italic":false}','{"text":"to reach your destination","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Temporal Storm","color":"gray","italic":false,"underlined":true}','{"text":"Riptide deals 5x damage","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:7,Unbreakable:1b,timetrident:1b,Enchantments:[{id:"minecraft:riptide",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-729428737,751062592,-1765663393,843334149]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.1,Operation:0,UUID:[I;-200267019,1238912642,-1366305132,-1806722825]}]}}]}
