effect give @s luck infinite 0 true
tellraw @s ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"You get very ","color":"gold"},{"text":"lucky! :D","color":"dark_red"}]
playsound entity.player.levelup master @s ~ ~ ~ 2 2 1

scoreboard players add @s lbluck 1