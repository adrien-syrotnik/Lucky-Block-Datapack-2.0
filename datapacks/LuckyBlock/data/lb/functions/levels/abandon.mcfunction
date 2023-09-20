#tellraw score abandon
# execute as @a run tellraw @s [{"text":"Abdandon : ","color":"dark_red"},{"score":{"name":"@s","objective":"abandon"}},{"text":" Death : ","color":"dark_red"},{"score":{"name":"@s","objective":"abandon_death"}}]
# execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:redstone_block",tag:{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}}},{Slot:17b}]}] run tellraw @s [{"text":"Have item","color":"green"}]
# execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block",tag:{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}}},{Slot:17b}]}] run tellraw @s [{"text":"Don't have item","color":"red"}]
# #same with the tag
# execute as @a if entity @s[tag=death_reset_abandon] run tellraw @s [{"text":"Have tag","color":"green"}]
# execute as @a unless entity @s[tag=death_reset_abandon] run tellraw @s [{"text":"Don't have tag","color":"red"}]



execute as @a[scores={abandon=0..2},gamemode=survival] unless score @s abandon_death matches 1..20 unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block",tag:{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}}},{Slot:17b}]}] run scoreboard players add @s abandon 1

execute as @a[scores={abandon_death=2..}] run item replace entity @s container.17 with redstone_block{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}} 1
execute as @a[scores={abandon_death=2..}] run scoreboard players set @s abandon 0
execute as @a[scores={abandon_death=21..}] run scoreboard players set @s abandon_death 0


#debug to tell the score of abandon and abandon_death
execute as @a[scores={abandon=3}] unless score @s abandon_death matches 1..20 at @s run function lb:levels/has_abandonned

# Kill all item that are the abandonned redstone block
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",tag:{display:{Name:'{"text":"Give up?","color":"dark_red","bold":false,"italic":true}',Lore:['{"text":"Click on the item to ff"}']}}}}]

scoreboard players add @a[scores={abandon_death=1..20}] abandon_death 1