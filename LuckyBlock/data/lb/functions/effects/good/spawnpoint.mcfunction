#set the location and the player before
setblock ~ ~ ~ beacon
spawnpoint @s ~ ~1 ~ 180
particle dust_color_transition 1.000 1.000 1.000 1 1.000 0.902 0.031 ~ ~ ~ 1 1 1 1 100 normal
tellraw @p ["",{"text":"[Lucky Block] You unlock a new ","color":"gold"},{"text":"checkpoint ","color":"dark_red"},{"text":"at ","color":"gold"},{"text":"this position.","color":"dark_red"}]