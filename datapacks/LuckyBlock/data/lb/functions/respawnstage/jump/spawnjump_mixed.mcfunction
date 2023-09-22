#random number generator
scoreboard players set max RANDOM 14
function lb:rand

fill ~-3 ~-3 ~-3 ~-3 ~20 ~-23 minecraft:barrier
fill ~3 ~-3 ~-3 ~3 ~20 ~-23 minecraft:barrier

execute if score @s RANDOM matches 0 run clone -8 -1 11 -4 2 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 1 run clone -1 -1 11 3 2 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 2 run clone 6 -1 11 10 7 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 3 run clone 13 -1 11 17 7 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 4 run clone 20 -1 11 24 5 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 5 run clone 27 -1 11 31 5 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 6 run clone 34 -3 11 38 8 -8 ~-2 ~-5 ~-22

execute if score @s RANDOM matches 7 run clone 41 -3 11 45 8 -8 ~-2 ~-5 ~-22

#New jump : WOOD EDITION
execute if score @s RANDOM matches 8 run clone -15 -1 11 -11 4 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 9 run clone -22 -1 11 -18 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 10 run clone -29 -1 11 -25 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 11 run clone -36 -1 11 -32 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 12 run clone -43 -1 11 -39 6 -8 ~-2 ~-3 ~-22

execute if score @s RANDOM matches 13 run clone -50 -2 11 -46 6 -8 ~-2 ~-4 ~-22



tp @s ~ ~ ~-20