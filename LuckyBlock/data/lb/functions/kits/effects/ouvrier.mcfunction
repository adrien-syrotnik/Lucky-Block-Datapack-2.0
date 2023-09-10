scoreboard players set max RANDOM 3
function lb:rand

execute if score @s RANDOM matches 0 run give @s stone_pickaxe

execute if score @s RANDOM matches 1 run give @s stone_axe

execute if score @s RANDOM matches 2 run give @s stone_sword


