scoreboard players set max RANDOM 5
function lb:rand

playsound minecraft:item.goat_horn.sound.0 ambient @a

execute if score @s RANDOM matches 0 run summon cow ~ ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 0 run summon cow ~-1 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 0 run summon cow ~-2 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}

execute if score @s RANDOM matches 1 run summon cow ~2 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 1 run summon cow ~ ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 1 run summon cow ~1 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}

execute if score @s RANDOM matches 2 run summon cow ~2 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 2 run summon cow ~ ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 2 run summon cow ~-2 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}

execute if score @s RANDOM matches 3 run summon cow ~-2 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 3 run summon cow ~-1 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 3 run summon cow ~1 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}

execute if score @s RANDOM matches 4 run summon cow ~2 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 4 run summon cow ~1 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}
execute if score @s RANDOM matches 4 run summon cow ~-1 ~ ~-25 {NoGravity:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Meuhhhh"}'}

#execute as @e[name="Meuhhhh",limit=3,sort=nearest] at @s run tp @s ~ ~ ~ ~180 ~
execute positioned ~ ~ ~-25 run scoreboard players set @e[name="Meuhhhh",limit=3,sort=nearest] count 100