# 1) desenchant all the endItems from the armorstand before enchant the new one
function lb:kits/select/desench_all
# 2) enchant the new item selected, here the slot 4
item modify entity @s weapon.mainhand lb:select
# 4) clear player before refresh his enderchest
clear @p
# 4) refresh the player enderchest from the armortand
function lb:kits/select/refresh_chest
# 5) attribute the scorboard kit with the value of kit1
scoreboard players operation @p kit = @p kit3