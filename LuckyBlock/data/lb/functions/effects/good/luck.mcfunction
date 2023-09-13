effect give @p luck infinite 0 true
tellraw @p ["",{"text":"[Lucky Block] You get very ","color":"gold"},{"text":"lucky! :D","color":"dark_red"}]
execute as @p at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 2 1