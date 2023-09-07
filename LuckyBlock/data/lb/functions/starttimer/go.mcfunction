title @a title {"text":"GO","color":"dark_red"}
execute as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 2

scoreboard players set @a abandon 0
item replace entity @a container.17 with redstone_block{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}} 1

execute as @e[tag=startwait] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~-2 air replace barrier

scoreboard players set @a timerun 0
scoreboard players set ingame ingame 1
bossbar set minecraft:timer visible true