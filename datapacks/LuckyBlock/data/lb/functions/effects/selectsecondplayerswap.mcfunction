scoreboard players operation max RANDOM = @e[name="GameManager", type=armor_stand, limit=1] nbplayers
function lb:rand

scoreboard players add @s RANDOM 1


scoreboard players operation player2 currentplayer = @s RANDOM

execute if score player1 currentplayer = player2 currentplayer run function lb:effects/selectsecondplayerswap

