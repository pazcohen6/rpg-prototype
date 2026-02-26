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
		'animation': {0: preload('res://graphics/skill effect/physical/sword_swing.png')},
		'h_frame': {0:14},
		'rotation' : 0,
		'color': COLOR[Enum.DamageType.PHYSICAL],
		#icon
		'damage': 10,
		'damage_type' : Enum.DamageType.PHYSICAL,
		'action_point': 1,
		'delivery' : Enum.SkillDelivery.MELEE
	},
	Enum.Skill.SWORD_SWEEP: {
		'animation': {0: preload('res://graphics/skill effect/physical/sword_sweep.png')},
		'h_frame': {0: 15},
		'rotation' : 0,
		'color': COLOR[Enum.DamageType.PHYSICAL],
		#icon
		'damage' : 10,
		'damage_type' : Enum.DamageType.PHYSICAL,
		'action_point': 1,
		'delivery' : Enum.SkillDelivery.STELTH_STRIKE
	},
	Enum.Skill.FLAME_RING: {
		'animation': {0: preload('res://graphics/skill effect/fire/flame_ring.png'), 1: preload('res://graphics/skill effect/fire/flame_ring_projectile.png')},
		'h_frame': {0:15 , 1:10},
		'rotation' : 10,
		'color': COLOR[Enum.DamageType.FIRE],
		#icon
		'damage' : 1,
		'damage_type' : Enum.DamageType.FIRE,
		'action_point': 1,
		'delivery' : Enum.SkillDelivery.PROJECTILE
	},
	Enum.Skill.STEALTH: {
		'animation': {0: preload('res://graphics/skill effect/stealth.png')},
		'h_frame': {0:15},
		'rotation' : 0,
		'color': COLOR[Enum.DamageType.PHYSICAL],
		#icon
		'damage' : 0,
		'damage_type' : Enum.DamageType.PHYSICAL,
		'action_point': 1,
		'delivery' : Enum.SkillDelivery.STELTH_STRIKE
	}}

const ITEM_DATA = {}
