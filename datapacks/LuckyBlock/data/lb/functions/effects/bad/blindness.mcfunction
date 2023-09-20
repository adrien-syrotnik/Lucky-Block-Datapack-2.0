execute at @s run effect give @a[distance=1..] blindness 3 1
execute run tellraw @s ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"Your opponents become ","color":"gold"},{"text":"blind","color":"dark_red"},{"text":"!","color":"gold"}]
execute at @a run playsound minecraft:entity.squid.squirt ambient @s ~ ~ ~ 2 1 1 
scoreboard players add @s lbunluck 1