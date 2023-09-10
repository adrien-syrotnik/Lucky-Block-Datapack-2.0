execute positioned 0 0 0 run scoreboard players operation @r[scores={currentplayer=0}] currentplayer = @e[name="GameManager", type=armor_stand, limit=1] currentplayer

execute as @a if score @s currentplayer = @e[name="GameManager", type=armor_stand, limit=1] currentplayer at @e[name="SpawnPlayer", type=armor_stand, limit=1] run tp @s ~ ~ ~ ~180 ~

execute as @a if score @s currentplayer = @e[name="GameManager", type=armor_stand, limit=1] currentplayer at @e[name="SpawnPlayer", type=armor_stand, limit=1] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"NextStage"}'}
execute as @a if score @s currentplayer = @e[name="GameManager", type=armor_stand, limit=1] currentplayer at @e[name="SpawnPlayer", type=armor_stand, limit=1] positioned ~ ~-1 ~ run scoreboard players operation @e[type=armor_stand, limit=1,sort=nearest,name="NextStage"] currentplayer = @s currentplayer

#execute as @a if score @s currentplayer = @e[name="GameManager", type=armor_stand, limit=1] currentplayer at @e[name="SpawnPlayer", type=armor_stand, limit=1] positioned ~ ~-1 ~ run tp @e[type=armor_stand, limit=1,sort=nearest,name="NextStage"] ~ ~ ~-5

execute as @a if score @s currentplayer = @e[name="GameManager", type=armor_stand, limit=1] currentplayer at @e[name="SpawnPlayer", type=armor_stand, limit=1] run clone -1 -27 6 5 -24 1 ~-3 ~-2 ~-2


#teleport the armor stand for the next player
execute as @e[name="SpawnPlayer", type=armor_stand, limit=1] at @s run tp @s ~6 ~ ~

#if score ok while loop
scoreboard players add @e[name="GameManager", type=armor_stand] currentplayer 1
execute as @e[name="GameManager", type=armor_stand] if score @s currentplayer <= @s nbplayers run function lb:initplayer
