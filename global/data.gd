extends Node

const COLOR = {
	Enum.DamageType.PHYSICAL : Color.GAINSBORO,
	Enum.DamageType.FIRE : Color.CRIMSON,
	Enum.DamageType.COLD : Color.AQUA,
	Enum.DamageType.PSYCHIC : Color.DARK_VIOLET,
	Enum.DamageType.DARK : Color.DARK_SLATE_BLUE
}

const SKILL_DATA = {
	Enum.Skill.SWORD_SWING: {
		'animation': preload('res://graphics/skill effect/physical/sword_swing.png'),
		'h_frame': 14,
		'color': COLOR[Enum.DamageType.PHYSICAL],
		#icon
		'damage': 34,
		'damage_type' : Enum.DamageType.PHYSICAL,
		'action_point': 1,
		'delivery' : Enum.SkillDelivery.MELEE
	},
	Enum.Skill.SWORD_SWEEP: {
		'animation': preload('res://graphics/skill effect/physical/sword_sweep.png'),
		'h_frame': 15,
		'color': COLOR[Enum.DamageType.PHYSICAL],
		#icon
		'damage' : 34,
		'damage_type' : Enum.DamageType.PHYSICAL,
		'action_point': 1,
		'delivery' : Enum.SkillDelivery.MELEE
	},
	Enum.Skill.FLAME_RING: {
		'animation': preload('res://graphics/skill effect/fire/flame_ring.png'),
		'h_frame': 15,
		'color': COLOR[Enum.DamageType.FIRE],
		#icon
		'damage' : 34,
		'damage_type' : Enum.DamageType.FIRE,
		'action_point': 1,
		'delivery' : Enum.SkillDelivery.INSTANT
	}}

const ITEM_DATA = {}
