####################################
# Crossbow Check
# Used for checking what (or if a) crossbow ability to use
####################################

execute if entity @a[scores={crossbow=1..},nbt={SelectedItem:{tag:{rail:1}}}] as @a[scores={crossbow=1..},nbt={SelectedItem:{tag:{rail:1}}}] at @s run function styx:runecaster/rail_activate

scoreboard players set @a crossbow 0