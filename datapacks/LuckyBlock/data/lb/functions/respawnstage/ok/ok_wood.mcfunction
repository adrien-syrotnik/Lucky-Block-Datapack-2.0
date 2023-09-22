#spawn switch with randomstage + tp

#spawn barrier
execute if score @s randomstage matches 0..5 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-7 minecraft:barrier
execute if score @s randomstage matches 0..5 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-7 minecraft:barrier

execute if score @s randomstage matches 6..11 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-12 minecraft:barrier
execute if score @s randomstage matches 6..11 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-12 minecraft:barrier

execute if score @s randomstage matches 12..17 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-17 minecraft:barrier
execute if score @s randomstage matches 12..17 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-17 minecraft:barrier


#New 1ere ligne - WOOD EDITION
execute if score @s randomstage matches 0 at @s run clone -11 1 53 -15 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 0 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 0 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 1 at @s run clone -18 5 53 -22 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 1 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 1 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 2 at @s run clone -25 4 53 -29 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 2 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 2 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 3 at @s run clone -32 5 53 -36 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 3 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 3 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 4 at @s run clone -39 5 53 -43 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 4 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 4 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 5 at @s run clone -46 5 53 -50 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 5 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 5 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}


#New 2eme ligne - WOOD EDITION
execute if score @s randomstage matches 6 at @s run clone -15 -1 44 -11 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 6 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 6 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 6 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 7 at @s run clone -22 -1 44 -18 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 7 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 7 at @s run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 7 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 8 at @s run clone -29 -1 44 -25 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 8 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 8 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 8 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 9 at @s run clone -36 -1 44 -32 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 9 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 9 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 9 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 10 at @s run clone -43 -1 44 -39 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 10 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 10 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 10 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 11 at @s run clone -50 -1 44 -46 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 11 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 11 at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 11 at @s run summon armor_stand ~ ~-1 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

#New 3eme ligne - WOOD EDITION
execute if score @s randomstage matches 12 at @s run clone -15 -1 30 -11 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 12 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 13 at @s run clone -22 -1 30 -18 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 13 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 14 at @s run clone -29 -1 30 -25 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 14 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 15 at @s run clone -36 -1 30 -32 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 15 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~-2 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 16 at @s run clone -43 -1 30 -39 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 16 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~1 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~1 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 17 at @s run clone -50 -1 30 -46 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 17 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 17 at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 17 at @s run summon armor_stand ~ ~-1 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 17 at @s run summon armor_stand ~ ~-1 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

scoreboard players operation @s next_score += @s weightstagetoadd

# Add stats to the player linked to the armor stand
scoreboard players add @p platform_stat 1