extends Node2D

func _ready() -> void:
	var player = $Object/player
	var enemy = $Object/enemy
	print(enemy.hit_point)
	
	await enemy.skill_use(Enum.Skill.FLAME_RING, player)
	print(player.hit_point)
	await enemy.skill_use(Enum.Skill.SWORD_SWING, player)
	print(player.hit_point)
	await enemy.skill_use(Enum.Skill.SWORD_SWEEP, player)
	print(player.hit_point)
	
	print('  ')
	await enemy.skill_use(Enum.Skill.SWORD_SWEEP, enemy)
	print(enemy.hit_point)
	await enemy.skill_use(Enum.Skill.FLAME_RING, enemy)
	print(enemy.hit_point)
	
