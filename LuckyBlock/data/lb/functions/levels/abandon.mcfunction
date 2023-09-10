execute as @a[scores={abandon=0,abandon_death=0},gamemode=survival] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block",tag:{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}}},{Slot:17b}]}] run scoreboard players set @s abandon 1

execute as @a[scores={abandon_death=1..}] run item replace entity @s container.17 with redstone_block{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}} 1
execute as @a[scores={abandon_death=1..}] run scoreboard players set @s abandon_death 0

execute as @a[scores={abandon=1}] at @s run function lb:levels/has_abandonned

# Kill all item that are the abandonned redstone block
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",tag:{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}}}}]