#if the stats are empty, set them to 0
execute unless score @s blocktravelled_stat matches 0.. run scoreboard players set @s blocktravelled_stat 0
execute unless score @s blocklbmined_stat matches 0.. run scoreboard players set @s blocklbmined_stat 0
execute unless score @s win matches 0.. run scoreboard players set @s win 0
execute unless score @s platform_stat matches 0.. run scoreboard players set @s platform_stat 0

item replace entity @s hotbar.8 with written_book{display:{Name:'{"text":"Stats"}',Lore:['{"text":"Show your stats of the game"}']},title:"Statistics",author:"Aidia",generation:0,pages:['[{"text":"Stats of ","color":"black"},{"selector":"@s","color":"dark_red","italic":true,"bold": true},{"text":"\\n\\n","bold":false},{"text":"Blocks travelled : ","hoverEvent":{"action":"show_text","value":[{"text":"Numbers of blocks travelled during a game for win (only the distance from the start to the end)","color":"gold","italic":true}]}},{"score":{"name":"@s","objective":"blocktravelled_stat"},"color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold","italic":true}]}},{"text":"\\n\\n","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold","italic":true}]}},{"text":"LuckyBlocks mined : ","hoverEvent":{"action":"show_text","value":[{"text":"How many LuckyBlock did you mine?","color":"gold","italic":true}]}},{"score":{"name":"@s","objective":"blocklbmined_stat"},"color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold","italic":true}]}},{"text":"\\n\\n","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold","italic":true}]}},{"text":"Victories : ","hoverEvent":{"action":"show_text","value":[{"text":"Show how many times  a player win a game in LuckyBlock","color":"gold","italic":true}]}},{"score":{"name":"@s","objective":"win"},"color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold","italic":true}]}},{"text":"\\n\\n","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold","italic":true}]}},{"text":"Platforms generated : ","hoverEvent":{"action":"show_text","value":[{"text":"How many platforms did you spawn during your games?","color":"gold","italic":true}]}},{"score":{"name":"@s","objective":"platform_stat"},"color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"gold","italic":true}]}}]']} 1