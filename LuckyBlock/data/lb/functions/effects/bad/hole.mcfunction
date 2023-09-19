scoreboard players set max RANDOM 3
function lb:rand


execute if score @s RANDOM matches 0 run fill ~-1 ~1 ~-1 ~1 ~-8 ~1 minecraft:air destroy
execute if score @s RANDOM matches 0 run setblock ~ ~-1 ~ minecraft:obsidian

execute if score @s RANDOM matches 1 positioned ~-1 ~ ~ run fill ~-1 ~1 ~-1 ~1 ~-8 ~1 minecraft:air destroy
execute if score @s RANDOM matches 1 positioned ~-1 ~ ~ run setblock ~ ~-1 ~ minecraft:obsidian

execute if score @s RANDOM matches 2 positioned ~1 ~ ~ run fill ~-1 ~1 ~-1 ~1 ~-8 ~1 minecraft:air destroy
execute if score @s RANDOM matches 2 positioned ~1 ~ ~ run setblock ~ ~-1 ~ minecraft:obsidian

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1