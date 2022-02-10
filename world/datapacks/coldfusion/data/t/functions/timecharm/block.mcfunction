
#########################
# Time Traveler's Charm #
#########################

particle minecraft:nautilus ~ ~1 ~ 0 0 0 1 50 normal
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:heart_of_the_sea",tag:{timecharm:1b}}]}] speed 5 1 true
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:heart_of_the_sea",tag:{timecharm:1b}}]}] jump_boost 5 1 true
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:heart_of_the_sea",tag:{timecharm:1b}}]}] strength 5 2 true
kill @s