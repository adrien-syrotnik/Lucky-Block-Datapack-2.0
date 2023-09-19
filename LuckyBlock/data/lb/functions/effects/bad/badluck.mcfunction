effect give @s unluck infinite 0 true
tellraw @s ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"You get very ","color":"gold"},{"text":"unlucky! D:","color":"dark_red"}]
execute at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 2 1 1
scoreboard players add @s lbunluck 1