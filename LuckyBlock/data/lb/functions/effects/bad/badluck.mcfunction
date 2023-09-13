effect give @p unluck infinite 0 true
tellraw @p ["",{"text":"[Lucky Block] You get very ","color":"gold"},{"text":"lucky! D:","color":"dark_red"}]
execute as @p at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 2 1 1