tellraw @a {"text":"As you rummage the heart for the disc of all divinity, you feel a cold sense of dread, as a hush falls over the beast...","color":"#A10000"}

schedule clear de_pear:final/heartbeat_frantic_1
schedule clear de_pear:final/heartbeat_frantic_2
schedule clear de_pear:final/heartbeat_very_frantic_1
schedule clear de_pear:final/heartbeat_very_frantic_2
schedule clear de_pear:final/heartbeat_1
schedule clear de_pear:final/heartbeat_2
schedule clear de_pear:final/roar_1
schedule clear de_pear:final/roar_2
schedule clear de_pear:final/roar_3
schedule clear de_pear:final/ambient_1
schedule clear de_pear:final/ambient_2

tag @a add final_pause

schedule function de_pear:final/angered 6s
