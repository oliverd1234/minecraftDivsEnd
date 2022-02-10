####################################
# Edge of Styx Core Commands
####################################

execute if entity @a[scores={crossbow=1..}] run execute as @a[scores={crossbow=1..}] at @s run function styx:crossbow

#Scoreboard that tests if a player has fired a crossbow

execute if entity @e[tag=blade_commander] run execute as @e[tag=blade_commander] at @s run function styx:evoke

#Tests if a Fallen Commander is alive

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{devotion:1}}]}] at @s run function styx:devotion

execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{devotion:1}}]}] at @s run scoreboard players set @s devotionKill 0

#Tests if a player is holding the Obol; also deletes the kill count of players NOT holding the Obol