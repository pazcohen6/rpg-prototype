class_name Character extends CharacterBody2D 

# const
const MELEE_ATTACK_OFFSET: int = 100
const WALKING_TIME: float = 0.9
const FRAME_RATE: float = 0.08

#stats
@export var strength : int = 5
@export var dexterity : int = 5
@export var intelligence : int = 5
@export var wisdom : int = 5

# defenceive
@export var hit_point : int :
	set(value):
		hit_point = value
		if hit_point <= 0:
			death()
@export var max_hit_point : int = 100
@export var energy_shield : int
@export var max_energy_shield : int = 0
@export var element_resistance : int = 0
@export var armor_defence : int = 0

# offnsive
@export var action_point : int
@export var max_action_point : int = 1
@export var base_critical_chance : int = 5
@export var armor_penetration : int = 0
@export var ignore_resistance : int = 0

# utility
@export var level : int = 1

func _ready() -> void:
	energy_shield = max_energy_shield
	hit_point = max_hit_point
	action_point = max_action_point

# hit func
func take_damage(amount:int, type: Enum.DamageType):
	if type == Enum.DamageType.PHYSICAL:
		amount -= armor_defence
	else:
		amount -= element_resistance
	amount = max(0,amount)
	hit_point -= amount
	
# death func
func death():
	queue_free()

# skill_use func
func skill_use(skill: Enum.Skill, target: Character):
	var skill_data = Data.SKILL_DATA[skill]
	var original_position = position
	var diraction = (target.position-position).normalized() # maybe nee global_position
	var melee_position = target.position - diraction * MELEE_ATTACK_OFFSET
	
	# differant animation for differant casting type
	if target != self:
		if skill_data['delivery'] == Enum.SkillDelivery.MELEE:
			await move(melee_position)
		elif skill_data['delivery'] == Enum.SkillDelivery.PROJECTILE:
			pass
		elif skill_data['delivery'] == Enum.SkillDelivery.STELTH_STRIKE:
			pass
	# if skill_data['delivery'] == Enum.SkillDelivery.INSTANT i just want just to cast the skill animation
	
	var flash_node = target.get_node_or_null("FlashingSprite2D")
	if flash_node:
		flash_node.flash(skill_data['color'])
	await  skill_animation(skill_data['animation'], skill_data['h_frame'], target)
	
	if skill_data['delivery'] == Enum.SkillDelivery.MELEE and target != self:
		await move(original_position)
	
	target.take_damage(skill_data['damage'], skill_data['damage_type'])



func move(to_position:Vector2):
	var tween = create_tween()
	tween.tween_property(self,'position',to_position,WALKING_TIME)
	await tween.finished
	tween.kill()

# TODO
func stelth_strike_move():
	pass

# TODO
func projectain_animation():
	pass

func skill_animation(image:Texture2D,h_frame:int,target: Character):
	var sprite = Sprite2D.new()
	var tween = create_tween()
	target.add_child(sprite)
	sprite.texture = image
	sprite.hframes = h_frame
	sprite.frame = 0
	sprite.z_index = 3
	
	sprite.show()
	for i in range(0,h_frame):
		tween.tween_property(sprite,"frame",i,FRAME_RATE)
	await tween.finished
	tween.kill()
	if sprite:
		sprite.queue_free()
	
