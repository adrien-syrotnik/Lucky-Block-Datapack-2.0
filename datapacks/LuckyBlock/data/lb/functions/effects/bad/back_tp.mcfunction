particle minecraft:dragon_breath ~ ~0.5 ~ 0 0 0 .5 100
playsound minecraft:entity.enderman.teleport ambient @a
execute at @s run tp @s ~ -2 ~20 ~ ~
scoreboard players set 3 3 3
execute if score @s breakLB <= 3 3 run advancement grant @s only lb:lucky_block/tp_spawn
scoreboard players add @s lbunluck 1