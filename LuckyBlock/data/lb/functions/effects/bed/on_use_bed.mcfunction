# look arround for the bed and make an explosion
scoreboard players reset @s useBedRed
function lb:effects/bed/detect_in_aera
execute positioned ~3 ~ ~3 run function lb:effects/bed/detect_in_aera
execute positioned ~ ~ ~3 run function lb:effects/bed/detect_in_aera
execute positioned ~-3 ~ ~3 run function lb:effects/bed/detect_in_aera
execute positioned ~3 ~ ~ run function lb:effects/bed/detect_in_aera
execute positioned ~-3 ~ ~ run function lb:effects/bed/detect_in_aera
execute positioned ~3 ~ ~-3 run function lb:effects/bed/detect_in_aera
execute positioned ~ ~ ~-3 run function lb:effects/bed/detect_in_aera
execute positioned ~-3 ~ ~-3 run function lb:effects/bed/detect_in_aera
