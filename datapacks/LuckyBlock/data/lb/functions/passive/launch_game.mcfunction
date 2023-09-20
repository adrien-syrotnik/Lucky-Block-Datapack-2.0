execute if score @p passif_game matches 1 run tellraw @a ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"Random kit activated: ","color":"dark_green"},{"text":"The kit selection has been cancelled.","color":"gold"}]
execute if score @p passif_game matches 1 as @a run function lb:kits/get_full_random_kit
execute if score @p passif_game matches 1 run function lb:starttimer/start

execute unless score @p passif_game matches 1 run function lb:kits/timer/start