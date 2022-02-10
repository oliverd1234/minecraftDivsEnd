function cartographer_custom_enchantments:loop/calc_enchant/reset

#TODO: WHAT??????? Update: The answer is mojang.
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_feet] at @s unless entity @s[nbt={Inventory:[{Slot:100b}]}] run replaceitem entity @s armor.feet minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_legs] at @s unless entity @s[nbt={Inventory:[{Slot:101b}]}] run replaceitem entity @s armor.legs minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_chest] at @s unless entity @s[nbt={Inventory:[{Slot:102b}]}] run replaceitem entity @s armor.chest minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_head] at @s unless entity @s[nbt={Inventory:[{Slot:103b}]}] run replaceitem entity @s armor.head minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_offhand] at @s unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_mainhand] at @s unless entity @s[nbt={SelectedItem:{}}] run replaceitem entity @s weapon.mainhand minecraft:air

#Specific to Divinity's End (this will be removed in the next version) do the babylon armor calculation.
scoreboard players set @s[predicate=de_pear:items/babylon_head,predicate=de_pear:items/babylon_chest,predicate=de_pear:items/babylon_legs,predicate=de_pear:items/babylon_feet] evasion 2

function cartographer_custom_enchantments:loop/calc_enchant/head
function cartographer_custom_enchantments:loop/calc_enchant/chest
function cartographer_custom_enchantments:loop/calc_enchant/legs
function cartographer_custom_enchantments:loop/calc_enchant/feet
function cartographer_custom_enchantments:loop/calc_enchant/offhand
function cartographer_custom_enchantments:loop/calc_enchant/mainhand
function cartographer_custom_enchantments:loop/calc_enchant/set_max

function cartographer_custom_enchantments:loop/calc_enchant/auto_charge
function cartographer_custom_enchantments:loop/calc_enchant/curse_two_handed
function cartographer_custom_enchantments:loop/calc_enchant/curse_malevolence

advancement revoke @s only cartographer_custom_enchantments:inventory_changed