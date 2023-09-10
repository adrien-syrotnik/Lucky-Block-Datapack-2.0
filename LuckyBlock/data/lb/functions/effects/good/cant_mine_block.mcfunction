execute at @p run effect give @a[distance=1..] mining_fatigue 3 50 true
tellraw @p ["",{"text":"[Lucky Block] Vos ennemis ","color":"gold"},{"text":"ne peut plus miner de blocs","color":"dark_red"},{"text":" pendant ","color":"gold"},{"text":"3 secondes","color":"dark_red"}]
execute at @p run tellraw @a[distance=1..] ["",{"text":"[Lucky Block] Vous ","color":"gold"},{"text":"ne pouvez plus miner de blocs","color":"dark_red"},{"text":" pendant ","color":"gold"},{"text":"3 secondes","color":"dark_red"}]
execute at @a run playsound minecraft:entity.villager.no ambient @s ~ ~ ~ 2 0.5 1