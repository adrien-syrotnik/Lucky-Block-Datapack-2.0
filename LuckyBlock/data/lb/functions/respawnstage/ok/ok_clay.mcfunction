#spawn switch with randomstage + tp

#spawn barrier
execute if score @s randomstage matches 0..4 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-7 minecraft:barrier
execute if score @s randomstage matches 0..4 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-7 minecraft:barrier

execute if score @s randomstage matches 5..10 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-12 minecraft:barrier
execute if score @s randomstage matches 5..10 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-12 minecraft:barrier

execute if score @s randomstage matches 11..16 at @s run fill ~-3 ~-3 ~-3 ~-3 ~20 ~-17 minecraft:barrier
execute if score @s randomstage matches 11..16 at @s run fill ~3 ~-3 ~-3 ~3 ~20 ~-17 minecraft:barrier


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


#2eme ligne
execute if score @s randomstage matches 5 at @s run clone -8 -1 44 -4 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 5 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 5 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 5 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 6 at @s run clone -1 -1 44 3 5 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 6 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 6 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 6 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 7 at @s run clone 6 -1 44 10 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 7 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 7 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 7 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 8 at @s run clone 13 -1 44 17 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 8 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 8 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 8 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 9 at @s run clone 20 -1 44 24 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 9 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 9 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 9 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 10 at @s run clone 27 -1 44 31 1 35 ~-2 ~-3 ~-12
execute if score @s randomstage matches 10 at @s run tp @s ~ ~ ~-10
execute if score @s randomstage matches 10 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 10 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

#3eme ligne
execute if score @s randomstage matches 11 at @s run clone -8 -1 30 -4 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 11 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 11 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 11 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 11 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 12 at @s run clone -1 -1 30 3 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 12 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 12 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 13 at @s run clone 6 -1 30 10 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 13 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 13 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 14 at @s run clone 13 -1 30 17 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 14 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 14 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 15 at @s run clone 20 -1 30 24 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 15 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~ ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 15 at @s run summon armor_stand ~ ~-2 ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

execute if score @s randomstage matches 16 at @s run clone 27 -1 30 31 1 16 ~-2 ~-3 ~-17
execute if score @s randomstage matches 16 at @s run tp @s ~ ~ ~-15
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~-2 ~5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}
execute if score @s randomstage matches 16 at @s run summon armor_stand ~ ~ ~10 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"SpawnLB"}'}

scoreboard players operation @s next_score += @s weightstagetoadd

# Add stats to the player linked to the armor stand
scoreboard players add @p platform_stat 1





