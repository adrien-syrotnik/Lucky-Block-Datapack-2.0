title @a title {"text":"GO","color":"dark_red"}
execute as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 2

scoreboard players set @a abandon 0
item replace entity @a container.17 with redstone_block{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}} 1

execute as @e[tag=startwait] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~-2 air replace barrier
kill @e[tag=startwait]

scoreboard players set @a timerun 0
scoreboard players set ingame ingame 1
bossbar set minecraft:timer visible true
effect clear @a minecraft:resistance

execute as @a[scores={kit=1}] at @s run function lb:kits/effects/ouvrier
execute as @a[scores={kit=3}] at @s run function lb:kits/effects/pretre_effect
execute as @a[scores={kit=4}] at @s run function lb:kits/effects/tank_schedule
execute as @a[scores={kit=7}] at @s run function lb:kits/effects/sorcier
execute as @a[scores={kit=9}] at @s run function lb:kits/effects/auspice