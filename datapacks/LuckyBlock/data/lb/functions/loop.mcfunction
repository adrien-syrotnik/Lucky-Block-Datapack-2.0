 function lb:best_distance
execute if score ingame ingame matches 1 run function lb:worst_distance
execute if score ingame ingame matches 1 run function lb:levels/abandon

function lb:spawn/armor_stand_animation


function lb:kits/loop

function lb:stage
function lb:spawnlb
function lb:effects/spawnpotion
function lb:advancement_jeb

execute as @a[gamemode=survival] at @s if block ~ ~-1 ~ white_wool if entity @e[name="NextStage",type=armor_stand,scores={level=4},distance=..8] run function lb:finish
execute as @a[gamemode=survival] at @s if block ~ ~-1 ~ black_wool if entity @e[name="NextStage",type=armor_stand,scores={level=4},distance=..8] run function lb:finish

function lb:respawn

function lb:effects/loop

effect give @a minecraft:saturation 2 1 true

execute if score ingame ingame matches 1 as @a if score @s ingame matches 1 run scoreboard players add @s timerun 1

execute as @a at @p run xp set @s 1 levels
execute as @a at @p run xp set @s 0 points

execute as @e[type=minecraft:sheep,name="jeb_"] at @s run particle minecraft:ambient_entity_effect ~0 ~0 ~0 0.1 0.1 0.1 1 100 force

#give stats book
execute unless score ingame ingame matches 1 positioned 5000 99 5000 as @a[distance=..100] run function lb:give_stats

execute as @a[scores={music_lol=1..}] at @s run function lb:music
execute as @a[scores={music_lol2=1..}] at @s run function lb:music2

function lb:bossbar
execute as @a[scores={bell=1..},gamemode=adventure] at @s run function lb:bell
execute as @a[scores={bell=1..},gamemode=creative] at @s run scoreboard players set @s bell 0




#armor stand spawn
execute as @e[name="LuckyBlockSpawn"] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[name="LuckyBlockSpawn"] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0 5 force

execute positioned 5000 100 5000 run effect give @a[distance=..50] minecraft:regeneration 2 255 true
execute positioned 5000 100 5000 run effect give @a[distance=..50] minecraft:resistance 2 255 true
execute positioned 5000 100 5000 run tp @a[distance=35..50] 5000 100 5000
execute positioned 5000 100 5000 run gamemode adventure @a[gamemode=survival,distance=..100]



execute as @a[scores={stop_music=1,count_mlg=0}] at @s run function lb:effects/mlg_stop
execute as @a[scores={stop_music=1,water=1..}] at @s run function lb:effects/mlg_stop
scoreboard players remove @a[scores={count_mlg=1..}] count_mlg 1