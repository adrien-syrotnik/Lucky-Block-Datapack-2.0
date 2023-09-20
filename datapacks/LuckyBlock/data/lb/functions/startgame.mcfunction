#set number of players in the GameManager score "player"

gamemode survival @a
tp @r -1000 -10 -1000

kill @e[name=NextStage, type=armor_stand]

scoreboard players reset @e[name="GameManager", type=armor_stand] nbplayers
execute as @a run scoreboard players add @e[name="GameManager", type=armor_stand] nbplayers 1

scoreboard players set @a currentplayer 0
scoreboard players set @e[name="GameManager", type=armor_stand] currentplayer 1

#summon the initial armor stand SpawnPlayer
summon armor_stand -1000 -10 -1000 {NoGravity:1b,Marker:0b,Invisible:0b,CustomName:'{"text":"SpawnPlayer"}'}

execute as @e[name="GameManager", type=armor_stand] if score @s currentplayer <= @s nbplayers run function lb:initplayer


scoreboard players set @a breakLB 0
scoreboard players set @e[name="NextStage", type=armor_stand] next_score 0
scoreboard players operation @e[name="NextStage", type=armor_stand] maxweightstage = level0weight maxweightstage
scoreboard players set @e[name="NextStage", type=armor_stand] level 0
scoreboard players set @a finish 0
scoreboard players set @a death 0
scoreboard players set @a ingame 1
scoreboard players reset @a oldideffect
scoreboard players reset @a Position

execute as @a at @s run function lb:spawnpoint

kill @e[name="SpawnPlayer", type=armor_stand]


effect give @a instant_health 1 10 true

gamerule keepInventory false

# start timer for choosing a passive or not / ONLY if passive are enabled
execute unless score EnablePassive level matches -2 run function lb:passive/get_passive
# else start timer for choosing a class
execute if score EnablePassive level matches -2 run function lb:kits/timer/start

