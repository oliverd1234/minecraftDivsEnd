####################################
# Evoker Core
# Checks what entities are nearby to activate special abilities/spells
####################################

#Activates if a Vex is detected

execute as @s at @s run execute as @e[distance=..5,type=vex] at @s run function styx:evoker/summon_husk

#Activates if a Evocation Fang is detected

execute as @s at @s run execute if entity @e[distance=..5,type=evoker_fangs] as @s at @s run function styx:evoker/soul_vortex