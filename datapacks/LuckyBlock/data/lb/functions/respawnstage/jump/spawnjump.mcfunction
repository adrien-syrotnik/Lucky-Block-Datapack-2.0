execute if score PlatformType level matches 0 run function lb:respawnstage/jump/spawnjump_wood
execute if score PlatformType level matches 1 run function lb:respawnstage/jump/spawnjump_clay
execute if score PlatformType level matches 2 run function lb:respawnstage/jump/spawnjump_mixed

execute at @a[scores={kit=6}] if score @s currentplayer = @p currentplayer as @p run function lb:kits/effects/mario