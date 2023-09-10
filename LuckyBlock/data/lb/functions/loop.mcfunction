execute if score ingame ingame matches 1 run function lb:best_distance


function lb:spawn/armor_stand_animation

function lb:levels/abandon
function lb:kits/loop

function lb:stage
function lb:spawnlb
function lb:effects/spawnpotion
function lb:advancement_jeb

execute as @a[gamemode=survival] at @s if block ~ ~-1 ~ white_wool run function lb:finish
execute as @a[gamemode=survival] at @s if block ~ ~-1 ~ black_wool run function lb:finish

function lb:respawn

function lb:effects/loop

effect give @a minecraft:saturation 2 1 true

execute if score ingame ingame matches 1 as @a if score @s ingame matches 1 run scoreboard players add @s timerun 1

execute as @a at @p run xp set @s 1 levels
execute as @a at @p run xp set @s 0 points

execute as @e[type=minecraft:sheep,name="jeb_"] at @s run particle minecraft:ambient_entity_effect ~0 ~0 ~0 0.1 0.1 0.1 1 100 force

execute as @a[scores={on_death=1..}] at @s run function lb:events/ondeath