#player1 and player2 with currentplayer scoreboard

scoreboard players operation max RANDOM = @e[name="GameManager", type=armor_stand, limit=1] nbplayers
function lb:rand

scoreboard players add @s RANDOM 1
scoreboard players operation player1 currentplayer = @s RANDOM

function lb:effects/selectsecondplayerswap

execute as @a if score @s currentplayer = player1 currentplayer run scoreboard players operation player1 breakLB = @s breakLB
execute as @a if score @s currentplayer = player2 currentplayer run scoreboard players operation player2 breakLB = @s breakLB

#change players location and change NextStage scoreboard 
execute as @e[name="NextStage", type=armor_stand] if score @s currentplayer = player1 currentplayer run scoreboard players set @s 0 1
execute as @e[name="NextStage", type=armor_stand] if score @s currentplayer = player1 currentplayer run scoreboard players operation @s currentplayer = player2 currentplayer

execute as @e[name="NextStage", type=armor_stand] unless score @s 0 matches 1 if score @s currentplayer = player2 currentplayer run scoreboard players operation @s currentplayer = player1 currentplayer

scoreboard players reset @e[scores={0=1}] 0

#tp players to their new location
execute as @e[name="NextStage", type=armor_stand] if score @s currentplayer = player1 currentplayer at @s as @a if score @s currentplayer = @e[name="NextStage", type=armor_stand,limit=1,sort=nearest] currentplayer run tp @s ~ -10 -1000 180 0
execute as @e[name="NextStage", type=armor_stand] if score @s currentplayer = player2 currentplayer at @s as @a if score @s currentplayer = @e[name="NextStage", type=armor_stand,limit=1,sort=nearest] currentplayer run tp @s ~ -10 -1000 180 0

#change players spawnpoint
execute as @a at @s if score @s currentplayer = player1 currentplayer run function lb:spawnpoint
execute as @a at @s if score @s currentplayer = player2 currentplayer run function lb:spawnpoint

#inverser score breakLB
execute as @a if score @s currentplayer = player1 currentplayer run scoreboard players operation @s breakLB = player2 breakLB
execute as @a if score @s currentplayer = player2 currentplayer run scoreboard players operation @s breakLB = player1 breakLB

#tellraw
execute as @a if score @s currentplayer = player1 currentplayer run scoreboard players set @s 0 1
execute as @a if score @s currentplayer = player2 currentplayer run scoreboard players set @s 0 2
tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@a[scores={0=1}]","bold":true,"color":"dark_red"},{"text":" and ","color":"gold"},{"selector":"@a[scores={0=2}]","bold":true,"color":"dark_red"},{"text":" switched their line!","color":"gold"}]
execute as @a at @s if score @s 0 matches 1..2 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1.8 1
scoreboard players set @a 0 0

#Respawn reset
execute as @a if score @s currentplayer = player1 currentplayer at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=Respawn] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] at @e[type=!player,sort=nearest,limit=1,tag=Respawn] positioned ~ ~ ~5 run fill ~-2 ~-1 ~-3 ~2 ~-1 ~-7 minecraft:white_stained_glass
execute as @a if score @s currentplayer = player1 currentplayer at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=Respawn] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] at @e[type=!player,sort=nearest,limit=1,tag=Respawn] positioned ~ ~ ~5 run fill ~-2 ~-1 ~-5 ~2 ~-1 ~-5 minecraft:sea_lantern

execute as @a if score @s currentplayer = player2 currentplayer at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=Respawn] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] at @e[type=!player,sort=nearest,limit=1,tag=Respawn] positioned ~ ~ ~5 run fill ~-2 ~-1 ~-3 ~2 ~-1 ~-7 minecraft:white_stained_glass
execute as @a if score @s currentplayer = player2 currentplayer at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=Respawn] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] at @e[type=!player,sort=nearest,limit=1,tag=Respawn] positioned ~ ~ ~5 run fill ~-2 ~-1 ~-5 ~2 ~-1 ~-5 minecraft:sea_lantern