#(/scoreboard players set EnablePassive 1 1)
scoreboard players operation EnablePassive 1 >< EnablePassive 0

execute if score EnablePassive 1 matches 1 run setblock 5001 100 5012 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"**************"}','{"text":"True","color":"green","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score EnablePassive 1 matches 0 run setblock 5001 100 5012 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"**************"}','{"text":"False","color":"dark_red","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
