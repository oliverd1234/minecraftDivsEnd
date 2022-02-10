#removing cooldown score
execute if score @s of.cooldown matches 1.. run scoreboard players remove @s of.cooldown 1

#ending cooldown if player has cooldown item and cooldown = 0 and no other player nearby has cooldown
execute if score @s of.cooldown matches 0 if predicate of:has_cooldown_item unless entity @a[scores={of.cooldown=1..},distance=..16] run function of:player/end_cooldown