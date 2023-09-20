# 1) desenchant all the endItems from the armorstand before enchant the new one
function lb:kits/select/desench_all
clear @p
function lb:kits/select/refresh_chest
item modify entity @p enderchest.22 lb:select
# get random kit
execute as @p at @s run function lb:kits/get_random_kit