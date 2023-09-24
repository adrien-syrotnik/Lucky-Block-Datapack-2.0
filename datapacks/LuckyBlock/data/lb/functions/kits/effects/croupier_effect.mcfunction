scoreboard players set max RANDOM 16
function lb:rand

execute if score @s RANDOM matches 0 run effect give @s minecraft:night_vision 20 1
execute if score @s RANDOM matches 1 run effect give @s minecraft:water_breathing 20 1
execute if score @s RANDOM matches 2 run effect give @s minecraft:fire_resistance 10 1
execute if score @s RANDOM matches 3 run effect give @s minecraft:speed 5 0
execute if score @s RANDOM matches 4 run effect give @s minecraft:slowness 5 0
execute if score @s RANDOM matches 5 run effect give @s minecraft:strength 10 1
execute if score @s RANDOM matches 6 run effect give @s minecraft:weakness 10 0
execute if score @s RANDOM matches 7 run effect give @s minecraft:jump_boost 5 1
execute if score @s RANDOM matches 8 run effect give @s minecraft:luck 10 1
execute if score @s RANDOM matches 9 run effect give @s minecraft:unluck 10 1
execute if score @s RANDOM matches 10 run effect give @s minecraft:slow_falling 10 1
execute if score @s RANDOM matches 11 run effect give @s minecraft:instant_damage 1 0
execute if score @s RANDOM matches 12 run effect give @s minecraft:poison 3 0
execute if score @s RANDOM matches 13 run effect give @s minecraft:regeneration 3 0
execute if score @s RANDOM matches 14 run effect give @s minecraft:instant_health 1 1

execute if score @s RANDOM matches 15 run effect give @s minecraft:night_vision 20 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:water_breathing 20 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:fire_resistance 10 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:speed 5 0
execute if score @s RANDOM matches 15 run effect give @s minecraft:slowness 5 0
execute if score @s RANDOM matches 15 run effect give @s minecraft:strength 10 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:weakness 10 0
execute if score @s RANDOM matches 15 run effect give @s minecraft:jump_boost 5 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:luck 10 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:unluck 10 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:slow_falling 10 1
execute if score @s RANDOM matches 15 run effect give @s minecraft:instant_damage 1 0
execute if score @s RANDOM matches 15 run effect give @s minecraft:poison 3 0
execute if score @s RANDOM matches 15 run effect give @s minecraft:regeneration 3 0
execute if score @s RANDOM matches 15 run effect give @s minecraft:instant_health 1 1
execute if score @s RANDOM matches 15 run tellraw @s [{"text":"bellobito","color":"gold","bold":true,"obfuscated":true},{"text":" MAGIC SALSA ","color":"aqua","bold":true,"obfuscated":false},{"text":"bellobito","bold":true,"obfuscated":true}]

