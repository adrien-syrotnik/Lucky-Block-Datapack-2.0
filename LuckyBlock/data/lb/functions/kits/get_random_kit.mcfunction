# once kit1, kit2, kit3 are defined, we can use them to get a random kit if the player wants to, or if he didn't choose a kit
scoreboard players set max RANDOM 3

function lb:rand

# if score RANDOM is 0, then the player will get kit1
execute if score @s RANDOM matches 0 run scoreboard players operation @s kit = @s kit1
# same for kit2 and kit3
execute if score @s RANDOM matches 1 run scoreboard players operation @s kit = @s kit2
execute if score @s RANDOM matches 2 run scoreboard players operation @s kit = @s kit3