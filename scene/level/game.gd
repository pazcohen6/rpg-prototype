extends Node2D

@onready var player = $Object/Player
@onready var enemy = $Object/enemy

func _ready() -> void:
	for i in range(2):
		if player and enemy:
			await player.skill_use(player.skill_set.pick_random(),enemy)
		if player and enemy:
			await enemy.skill_use(Enum.Skill.FLAME_RING,player)
