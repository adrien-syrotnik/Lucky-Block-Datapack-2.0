scoreboard players set max RANDOM 3
function lb:rand

effect give @s minecraft:instant_health 1 0 true

tellraw @s [{"text":"[Lucky Block] ","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"Vous avez gagné 2 ","color":"gold","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"❤","color":"red","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":".","color":"gold","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}]