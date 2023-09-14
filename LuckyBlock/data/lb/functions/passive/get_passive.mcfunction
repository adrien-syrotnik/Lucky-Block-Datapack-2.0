scoreboard players set max RANDOM 20
function lb:rand

scoreboard players reset @a passif_game

scoreboard players operation @a passif_game = @s RANDOM

# if one of this passif is activated, play the sound and start the timer to show the passive to the users
execute if score @s passif_game matches 0..4 as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 2 1
execute if score @s passif_game matches 0..4 run function lb:passive/timer/p

# if not, start the game normally
execute unless score @s passif_game matches 0..4 run function lb:kits/timer/start