#/give @p crossbow{display:{Name:'{"text":"Beta Bow","italic":false}',Lore:['{"text":"Satiation","color":"gray","italic":false}','{"text":" "}','{"text":"Rare Item","color":"green","italic":false}','{"text":"A mysterious bow that automatically","color":"dark_gray","italic":false}','{"text":"loads arrows from your inventory.","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Timeless Reload","color":"gray","italic":false,"underlined":true}','{"text":"This item is always loaded","color":"dark_gray","italic":false}','{"text":"and ready to fire!","color":"dark_gray","italic":false}']},Enchantments:[{}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b,BetaBow:1b,Satiation:1,Unbreakable:1b} 1

############
# Beta Bow #
############

# If the player has an empty beta bow in their mainhand, replace it with a full beta bow
execute as @a[nbt={Inventory:[{id:"minecraft:arrow"}],SelectedItem:{id:"minecraft:crossbow",tag:{BetaBow:1b,Charged:0b}}}] run clear @s arrow 1
replaceitem entity @a[nbt={Inventory:[{id:"minecraft:arrow"}],SelectedItem:{id:"minecraft:crossbow",tag:{BetaBow:1b,Charged:0b}}}] weapon.mainhand crossbow{display:{Name:'{"text":"Beta Bow","italic":false}',Lore:['{"text":"Satiation","color":"gray","italic":false}','{"text":" "}','{"text":"Rare Item","color":"green","italic":false}','{"text":"A mysterious bow that automatically","color":"dark_gray","italic":false}','{"text":"loads arrows from your inventory.","color":"dark_gray","italic":false}','{"text":" "}','{"text":"Timeless Reload","color":"gray","italic":false,"underlined":true}','{"text":"This item is always loaded","color":"dark_gray","italic":false}','{"text":"and ready to fire!","color":"dark_gray","italic":false}']},Enchantments:[{}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b,BetaBow:1b,Satiation:1,Unbreakable:1b}


