scoreboard players set max RANDOM 3
function lb:rand

execute if score @s RANDOM matches 2 run function lb:kits/effects/croupier_effect

