execute if score ingame ingame matches 1 run function lb:best_distance


function lb:spawn/armor_stand_animation


function lb:stage
function lb:spawnlb
function lb:effects/spawnpotion

execute as @a[gamemode=survival] at @s if block ~ ~-1 ~ white_wool run function lb:finish
execute as @a[gamemode=survival] at @s if block ~ ~-1 ~ black_wool run function lb:finish

function lb:respawn

function lb:effects/effects

effect give @a minecraft:saturation 2 1 true

execute if score ingame ingame matches 1 as @a if score @s ingame matches 1 run scoreboard players add @s timerun 1




execute if score ingame ingame matches 1 run kill @e[tag=startwait]
#execute unless score ingame ingame matches 1 as @a at @s if score @s currentplayer = @e[tag=startwait,distance=..2,limit=1] currentplayer at @e[tag=startwait,distance=..2,limit=1] rotated as @s run tp @s ~ ~ ~