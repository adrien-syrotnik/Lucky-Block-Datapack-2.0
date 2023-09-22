#random number generator
scoreboard players set max RANDOM 6
function lb:rand

fill ~-3 ~-3 ~-3 ~-3 ~20 ~-23 minecraft:barrier
fill ~3 ~-3 ~-3 ~3 ~20 ~-23 minecraft:barrier

#New jump : WOOD EDITION
execute if score @s RANDOM matches 0 run clone -15 -1 11 -11 4 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 1 run clone -22 -1 11 -18 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 2 run clone -29 -1 11 -25 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 3 run clone -36 -1 11 -32 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 4 run clone -43 -1 11 -39 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 5 run clone -50 -2 11 -46 6 -8 ~-2 ~-4 ~-22



tp @s ~ ~ ~-20