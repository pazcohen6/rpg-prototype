extends Character

var xp : int = 0
var xp_to_levelup : int = 1000

var skill_set : Array = [Enum.Skill.FLAME_RING, Enum.Skill.SWORD_SWEEP]

func _ready() -> void:
	rest_hp()
	super._ready()


func skill_use(skill: Enum.Skill, target: Character):
	if skill_set.has(skill):
		await super.skill_use(skill,target)

func add_skill(skill: Enum.Skill):
	if skill_set.size() < 8:
		skill_set.append(skill)

func remove_skill(skill: Enum.Skill):
	if skill_set.has(skill):
		skill_set.erase(skill)

func xp_gain(amount:int):
	if amount > 0:
		xp += amount
	if xp >= xp_to_levelup:
		level_up()

func level_up():
	level += 1
	xp -= xp_to_levelup
	xp_to_levelup = xp_to_levelup + 200 * level
	strength += 1

func rest_hp():
	hit_point = max_hit_point