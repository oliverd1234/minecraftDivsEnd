#Soulguard
execute as @a[nbt={Inventory:[{Slot:102b,tag:{soulchest:1}}]}] at @s run function kunii:soulchest/soulchest

#Necromancy
tag @a remove adri_necro
tag @a[tag=!adri_necro,nbt={SelectedItem:{tag:{necro:1}}}] add adri_necro
tag @a[tag=!adri_necro,nbt={Inventory:[{Slot:-106b,tag:{necro:2}}]}] add adri_necro
tag @a[tag=!adri_necro,nbt={Inventory:[{Slot:103b,tag:{necro:3}}]}] add adri_necro
execute as @a[tag=adri_necro,limit=1,sort=arbitrary] at @s run function kunii:necromancy/tick
