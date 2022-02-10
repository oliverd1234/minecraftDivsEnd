#Necro lvl
scoreboard players set @s necromancy 0
execute if entity @s[nbt={SelectedItem:{tag:{necro:1}}}] run scoreboard players add @s necromancy 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{necro:2}}]}] run scoreboard players add @s necromancy 1
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{necro:3}}]}] run scoreboard players add @s necromancy 1

#Effect
execute at @e[tag=necro_tagged] run particle minecraft:witch ~ ~1 ~ .2 .5 .2 .5 1
execute at @e[tag=necro_tagged] run particle dust 0.263 0.200 0.388 2 ~ ~1 ~ 0 0 0 0 1 normal


#Proc
execute as @e[type=item,nbt={Item:{tag:{necro:1b}}}] at @s run function kunii:necromancy/proc