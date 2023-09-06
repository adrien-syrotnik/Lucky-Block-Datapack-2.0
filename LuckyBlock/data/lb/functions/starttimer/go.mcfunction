title @a title {"text":"GO","color":"dark_red"}
execute as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 2

execute as @e[tag=startwait] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~-2 air replace barrier

scoreboard players set @a timerun 0
scoreboard players set ingame ingame 1
bossbar set minecraft:timer visible true