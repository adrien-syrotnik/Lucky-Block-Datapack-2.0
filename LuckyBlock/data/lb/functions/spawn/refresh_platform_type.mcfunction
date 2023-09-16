scoreboard players add PlatformType level 1
# if more than 3, set to 0
execute if score PlatformType level matches 3.. run scoreboard players set PlatformType level 0

execute if score PlatformType level matches 0 run setblock 4999 100 5012 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"**************"}','{"text":"Wood","color":"#7D2E00","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_platform_type"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score PlatformType level matches 1 run setblock 4999 100 5012 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"**************"}','{"text":"Hardened clay","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_platform_type"}}','{"text":""}','{"text":"**************"}']}} destroy
execute if score PlatformType level matches 2 run setblock 4999 100 5012 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"**************"}','{"text":"Mixed","color":"green","clickEvent":{"action":"run_command","value":"function lb:spawn/refresh_platform_type"}}','{"text":""}','{"text":"**************"}']}} destroy