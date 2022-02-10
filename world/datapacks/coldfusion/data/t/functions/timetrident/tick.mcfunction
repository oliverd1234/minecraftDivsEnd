
# /give @p trident{display:{Name:'{"text":"Trident of Time","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Riptide IV","color":"gray","italic":false}','{"text":" "}','{"text":"Bend the very fabric of time","color":"dark_gray","italic":false}','{"text":"to reach your destination","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Temporal Storm","color":"gray","italic":false,"underlined":true}','{"text":"Deals 5x damage and grants","color":"dark_gray","italic":false}','{"text":"immunity to fall damage","color":"dark_gray","italic":false}','{"text":"while flying with Riptide.","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:7,Unbreakable:1b,timetrident:1b,Enchantments:[{id:"minecraft:riptide",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-729428737,751062592,-1765663393,843334149]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.1,Operation:0,UUID:[I;-200267019,1238912642,-1366305132,-1806722825]}]} 1

###################
# Trident of Time #
###################

# Keep track of which hand players are holding the time trident in (0=not holding,1=main hand,2=off hand)
scoreboard players set @a TRIDENT_HAND 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:trident",tag:{timetrident:1b}}}] TRIDENT_HAND 1
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:trident",tag:{timetrident:1b}}]}] TRIDENT_HAND 2

# When riptide is used, activate the trident's cooldown
# This gives the riptide a minimum duration so it can be used effectively in close quarters
tag @a[scores={TRIDENT_USED=1..,TRIDENT_HIT=0,TRIDENT_HAND=1..}] add RIPTIDE
scoreboard players set @a[scores={TRIDENT_USED=1..,TRIDENT_HAND=1..}] TRIDENT_COOLDOWN 10
scoreboard players set @a[scores={TRIDENT_USED=1..,TRIDENT_HAND=1..}] TRIDENT_USED 0

# Reduce the cooldown by 1 every game tick
scoreboard players remove @a[scores={TRIDENT_COOLDOWN=1..}] TRIDENT_COOLDOWN 1

# While the player is using riptide, replace the trident with a duplicate that does a ton of extra damage (replace once/tick so it can't be used midair)
clear @a[scores={TRIDENT_HAND=1..},tag=RIPTIDE] minecraft:trident{timetrident:1b}
replaceitem entity @a[scores={TRIDENT_HAND=1},tag=RIPTIDE] weapon.mainhand trident{display:{Name:'{"text":"Trident of Time (Riptide)","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Riptide III","color":"gray","italic":false}','{"text":" "}','{"text":"Bend the very fabric of time","color":"dark_gray","italic":false}','{"text":"to reach your destination","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Temporal Storm","color":"gray","italic":false,"underlined":true}','{"text":"Riptide deals 5x damage","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:7,Unbreakable:1b,timetrident:1b,riptide:1b,Enchantments:[{id:"minecraft:riptide",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:30,Operation:0,UUID:[I;-729428737,751062592,-1765663393,843334149]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.1,Operation:0,UUID:[I;-200267019,1238912642,-1366305132,-1806722825]}]}
replaceitem entity @a[scores={TRIDENT_HAND=2},tag=RIPTIDE] weapon.offhand trident{display:{Name:'{"text":"Trident of Time (Riptide)","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Riptide III","color":"gray","italic":false}','{"text":" "}','{"text":"Bend the very fabric of time","color":"dark_gray","italic":false}','{"text":"to reach your destination","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Temporal Storm","color":"gray","italic":false,"underlined":true}','{"text":"Riptide deals 5x damage","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:7,Unbreakable:1b,timetrident:1b,riptide:1b,Enchantments:[{id:"minecraft:riptide",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:30,Operation:0,UUID:[I;-729428737,751062592,-1765663393,843334149]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.1,Operation:0,UUID:[I;-200267019,1238912642,-1366305132,-1806722825]}]}
execute as @a[tag=RIPTIDE] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 1 force
execute as @a[tag=RIPTIDE] run effect give @s slow_falling 1 0 true

# Play a sound effect & particle burst when the player collides with an enemy during riptide
execute as @a[scores={TRIDENT_HAND=1..,TRIDENT_HIT=150..}] at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1
execute as @a[scores={TRIDENT_HAND=1..,TRIDENT_HIT=150..}] at @s run particle minecraft:white_ash ~0.5 ~2 ~0.5 0.3 0.3 0.3 1 100
execute as @a[scores={TRIDENT_HAND=1..,TRIDENT_HIT=150..}] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 1
execute as @a[scores={TRIDENT_HAND=1..,TRIDENT_HIT=150..}] at @s run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute as @a[scores={TRIDENT_HAND=1..,TRIDENT_HIT=150..}] at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 1

# When the trident comes off cooldown and the player is grounded, reset the trident to its original state
execute as @a[tag=RIPTIDE,scores={TRIDENT_COOLDOWN=0}] if data entity @s {OnGround:1b} run effect clear @s slow_falling
execute as @a[tag=RIPTIDE,scores={TRIDENT_COOLDOWN=0}] if data entity @s {OnGround:1b} run tag @s remove RIPTIDE
execute as @a[tag=!RIPTIDE,scores={TRIDENT_COOLDOWN=0},nbt={SelectedItem:{id:"minecraft:trident",tag:{timetrident:1b,riptide:1b}}}] at @s run replaceitem entity @s weapon.mainhand trident{display:{Name:'{"text":"Trident of Time","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Riptide III","color":"gray","italic":false}','{"text":" "}','{"text":"Bend the very fabric of time","color":"dark_gray","italic":false}','{"text":"to reach your destination","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Temporal Storm","color":"gray","italic":false,"underlined":true}','{"text":"Riptide deals 5x damage","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:7,Unbreakable:1b,timetrident:1b,riptide:0b,Enchantments:[{id:"minecraft:riptide",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-729428737,751062592,-1765663393,843334149]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.1,Operation:0,UUID:[I;-200267019,1238912642,-1366305132,-1806722825]}]}
execute as @a[tag=!RIPTIDE,scores={TRIDENT_COOLDOWN=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:trident",tag:{timetrident:1b,riptide:1b}}]}] at @s run replaceitem entity @s weapon.offhand trident{display:{Name:'{"text":"Trident of Time","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Riptide III","color":"gray","italic":false}','{"text":" "}','{"text":"Bend the very fabric of time","color":"dark_gray","italic":false}','{"text":"to reach your destination","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Temporal Storm","color":"gray","italic":false,"underlined":true}','{"text":"Riptide deals 5x damage","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:7,Unbreakable:1b,timetrident:1b,riptide:0b,Enchantments:[{id:"minecraft:riptide",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-729428737,751062592,-1765663393,843334149]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.1,Operation:0,UUID:[I;-200267019,1238912642,-1366305132,-1806722825]}]}
execute as @a[tag=!RIPTIDE,scores={TRIDENT_COOLDOWN=0}] run stopsound @a * minecraft:item.armor.equip_generic

# Reset scoreboards
scoreboard players set @a TRIDENT_HIT 0


