#spawn switch with randomstage + tp

#spawn barrier
execute if score @s randomstage matches 0..10 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-7 minecraft:barrier
execute if score @s randomstage matches 0..10 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-7 minecraft:barrier

execute if score @s randomstage matches 11..22 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-12 minecraft:barrier
execute if score @s randomstage matches 11..22 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-12 minecraft:barrier

execute if score @s randomstage matches 23..34 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-17 minecraft:barrier
execute if score @s randomstage matches 23..34 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-17 minecraft:barrier


#1ere ligne
execute if score @s randomstage matches 0 at @s run clone -4 1 53 -8 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 0 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 0 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 1 at @s run clone 3 1 53 -1 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 1 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 1 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 2 at @s run clone 10 1 53 6 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 2 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 2 at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 3 at @s run clone 17 1 53 13 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 3 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 3 at @s run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 4 at @s run clone 20 -1 53 24 4 49 ~-2 ~ ~-7
execute if score @s randomstage matches 4 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 4 at @s run summon armor_stand ~ ~6 ~-1 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

#New 1ere ligne - WOOD EDITION
execute if score @s randomstage matches 5 at @s run clone -11 1 53 -15 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 5 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 5 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 6 at @s run clone -18 5 53 -22 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 6 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 6 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 7 at @s run clone -25 4 53 -29 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 7 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 7 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 8 at @s run clone -32 5 53 -36 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 8 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 8 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 9 at @s run clone -39 5 53 -43 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 9 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 9 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 10 at @s run clone -46 5 53 -50 -1 49 ~-2 ~-3 ~-7
execute if score @s randomstage matches 10 at @s run tp @s ~ ~ ~-5
execute if score @s randomstage matches 10 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}


#2eme ligne
execute if score @s randomstage matches 11 at @s run clone -8 -1 44 -4 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 11 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 11 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 11 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 12 at @s run clone -1 -1 44 3 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 12 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 13 at @s run clone 6 -1 44 10 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 13 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 14 at @s run clone 13 -1 44 17 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 14 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 15 at @s run clone 20 -1 44 24 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 15 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 16 at @s run clone 27 -1 44 31 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 16 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

#New 2eme ligne - WOOD EDITION
execute if score @s randomstage matches 17 at @s run clone -15 -1 44 -11 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 17 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 17 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 17 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 18 at @s run clone -22 -1 44 -18 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 18 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 18 at @s run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 18 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 19 at @s run clone -29 -1 44 -25 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 19 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 19 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 19 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 20 at @s run clone -36 -1 44 -32 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 20 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 20 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 20 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 21 at @s run clone -43 -1 44 -39 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 21 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 21 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 21 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 22 at @s run clone -50 -1 44 -46 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 22 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 22 at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 22 at @s run summon armor_stand ~ ~-1 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

#3eme ligne
execute if score @s randomstage matches 23 at @s run clone -8 -1 30 -4 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 23 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 23 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 23 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 23 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 24 at @s run clone -1 -1 30 3 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 24 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 24 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 24 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 24 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 25 at @s run clone 6 -1 30 10 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 25 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 25 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 25 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 25 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 26 at @s run clone 13 -1 30 17 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 26 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 26 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 26 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 26 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 27 at @s run clone 20 -1 30 24 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 27 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 27 at @s run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 27 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 27 at @s run summon armor_stand ~ ~-2 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 28 at @s run clone 27 -1 30 31 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 28 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 28 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 28 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 28 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

#New 3eme ligne - WOOD EDITION
execute if score @s randomstage matches 29 at @s run clone -15 -1 30 -11 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 29 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 29 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 29 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 29 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 30 at @s run clone -22 -1 30 -18 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 30 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 30 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 30 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 30 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 31 at @s run clone -29 -1 30 -25 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 31 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 31 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 31 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 31 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 32 at @s run clone -36 -1 30 -32 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 32 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 32 at @s run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 32 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 32 at @s run summon armor_stand ~ ~-2 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 33 at @s run clone -43 -1 30 -39 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 33 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 33 at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 33 at @s run summon armor_stand ~ ~1 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 33 at @s run summon armor_stand ~ ~1 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 34 at @s run clone -50 -1 30 -46 3 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 34 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 34 at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 34 at @s run summon armor_stand ~ ~-1 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 34 at @s run summon armor_stand ~ ~-1 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

scoreboard players operation @s next_score += @s weightstagetoadd







