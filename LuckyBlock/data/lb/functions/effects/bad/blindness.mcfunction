execute as @p at @s run effect give @a[distance=1..] blindness 3 1
execute run tellraw @p ["",{"text":"[Lucky Block] Your opponents become ","color":"gold"},{"text":"blind","color":"dark_red"},{"text":"!","color":"gold"}]
execute at @a run playsound minecraft:entity.squid.squirt ambient @s ~ ~ ~ 2 1 1 