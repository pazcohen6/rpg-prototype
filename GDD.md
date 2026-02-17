# 1. Game Overview

## Working Title:

Project Umbra

## Genre:

Turn-based RPG.

## Inspiration:

- Sonny - old browser game 
- Dungeon & Dragons
- Divinity series by Larian Studios

## Core Idea:

A turn-based combat RPG focused on skill, items and stat scaling.

## Scope Rule:

- Single player.
- One class at the start
- Combat
- Shop
- Inventory
- Skill Tree

# 2. Core Gameplay Loop

1. Spend gold to buy items
2. Select abilities
3. Enter battle
4. Resolve turn
5. Gain XP and gold
6. Spend stat points to upgrade abilities
7. Unlock skills
8. Repeat

# Core Systems
## Combat System

- turn priority determined by Dexterity stats - higher Dex = higher priority.
- Status Effect will show near the health bar.
- skill cooldowns will show on the skill.
- skills will cost X Action Points.
- the player regains all Action Points at the start of his turn.
- Action Point based system skills require action point based on the damage type.

## Stats System

| **Stat Name**  | **Main Effect**        | **Secondary Effect**|**Third Effect**| **Notes**                          |
|----------------|------------------------|---------------------|----------------|------------------------------------|
| Strength       | Melee Physical Damage  | Hit Point           | NONE           | warrior-type                       |
| Dexterity      | Ranged Physical Damage | Crit Chance         | Speed          | ranger-type also affects turn order|
| Intelligence   | Fire / Ice  Damage     | Ignore Resistance   | NONE           | Wizard-type                        |
| Wisdom         | Dark / Psychic Damage  | Energy Shield       | NONE           | Dark-type                          |

## Skill tree System

- Active and Passive skills.
- Multiple points per skill to strengthen active/passive abilities.
- Leveling up grants multiple skill points to allocate.
- Skill tree is class-specific.
- Some skills require a prerequisite skill to unlock.
 
## Shop System

- Buy items
- Sell items

## Inventory System

- Equipment slots: weapon, body armor, leg armor, helmet, ring, amulet
- Inventory space: 5 x 6
- Fixed affixes for items (static items stats)

# Minimum Viable Product

- One available class
- Start in town
- Basic combat mechanics are testable
- Win
- Gain XP
- Level Up

# Build Order

1. Character class - Basic stat scaling
2. Player character class derived from Character base stat
3. Skill UI (one basic attack later will have up to 8)
4. Enemy class derived from Character base stat
5. Turn manager system
6. Basic combat resolution
7. HP UI and death system
8. Win Condition
9. Level and XP system
10. Skill unlock
11. Status Effect
12. Skill switching
13. Inventory and Equipment
14. Shop
15. Balancing

# Add Lateter
- Tutorial
- Total 4 classes (one for each main stat)
- Party system (player controls up to 3 characters)
- Multi-wave encounters
- Boss encounter
- Multiple cities and enemy themes
- Story
- Subclass (optional)
- UI improvement
- Stat randomization for items
- More balancing

# Things NOT in the start
- Perfect animation
- Visual weapon / armor when change
- Sound effects and music
- Matching animation for actions

### Abbreviations

- HP = Hit Points
- XP = Experience Points
- AP = Action Points
