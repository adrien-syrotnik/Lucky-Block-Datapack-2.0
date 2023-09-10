# 1) desenchant all the endItems from the armorstand before enchant the new one
function lb:kits/select/desench_all
# 2) enchant the new item selected
item modify entity @s weapon.offhand lb:select
# 4) clear player before refresh his enderchest
clear @p
# 4) refresh the player enderchest from the armortand
function lb:kits/select/refresh_chest
# 5) attribute the scorboard kit with the value of kit2
scoreboard players operation @p kit = @p kit2