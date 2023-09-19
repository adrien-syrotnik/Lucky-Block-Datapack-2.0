#(/scoreboard players set EnablePassive
# -2 false
# -1 random
# 0 - 4, set passive to all players (passif_game)

scoreboard players add EnablePassive level 1
# if more than 3, set to 0
execute if score EnablePassive level matches 5.. run scoreboard players set EnablePassive level -2

execute if score EnablePassive level matches -2 run setblock 5011 100 4998 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"False","color":"dark_red","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score EnablePassive level matches -1 run setblock 5011 100 4998 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Random","color":"gold","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":"(≈ 1/2 game)","italic":true,"color":"gold","bold":false}','{"text":"**************"}']}} destroy
execute if score EnablePassive level matches 0 run setblock 5011 100 4998 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Keep Inventory","color":"green","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score EnablePassive level matches 0 run scoreboard players set @a passif_game 0
execute if score EnablePassive level matches 1 run setblock 5011 100 4998 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Random Kits","color":"green","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score EnablePassive level matches 1 run scoreboard players set @a passif_game 1
execute if score EnablePassive level matches 2 run setblock 5011 100 4998 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"2 In a Raw","color":"green","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score EnablePassive level matches 2 run scoreboard players set @a passif_game 2
execute if score EnablePassive level matches 3 run setblock 5011 100 4998 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Double Effect","color":"green","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score EnablePassive level matches 3 run scoreboard players set @a passif_game 3
execute if score EnablePassive level matches 4 run setblock 5011 100 4998 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"**************"}','{"text":"Triple Effect","color":"green","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_passive_sign"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score EnablePassive level matches 4 run scoreboard players set @a passif_game 4
