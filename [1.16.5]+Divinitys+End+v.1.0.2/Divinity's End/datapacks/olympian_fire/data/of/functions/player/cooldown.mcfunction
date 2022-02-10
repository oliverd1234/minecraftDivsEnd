#removing score
execute if score @s of.cooldown matches 1.. run scoreboard players remove @s of.cooldown 1

#ending cooldown if player has cooldown item 
execute if score @s of.cooldown matches 0 if predicate of:has_cooldown_item run function of:player/end_cooldown