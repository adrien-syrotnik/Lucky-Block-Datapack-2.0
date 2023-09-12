#executed from armorstand with score top1, and store Position in player top1
execute at @a[scores={abandon=0}] if score @s top1 > @p timerun run scoreboard players add top1old Position 1
execute at @a[scores={abandon=0}] if score @s top2 > @p timerun run scoreboard players add top2old Position 1
execute at @a[scores={abandon=0}] if score @s top3 > @p timerun run scoreboard players add top3old Position 1