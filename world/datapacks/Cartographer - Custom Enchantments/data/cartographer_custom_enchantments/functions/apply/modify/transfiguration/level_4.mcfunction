data modify block 0 0 0 Items[0].tag merge value {Transfiguration:4}
data modify block 0 0 0 Items[0].tag.display.Lore prepend value "{\"text\":\"Transfiguration IV\",\"color\":\"gray\",\"italic\":false}"

function cartographer_core:helper/items/return_item
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0