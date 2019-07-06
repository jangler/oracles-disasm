; These are values given to Link or an item's "collisionType" variable. It affects how
; enemies will react to the item on collision.
;
; Items have these values assigned in "data/itemAttributes.s".
;
; Upon collision with enemies, the corresponding value from the item is written to the
; Enemy or Part object's var2a. Bit 7 is set to indicate that the collision just occurred.
;
; See also:
;  constants/collisionEffects.s (list of effects that may occur on collision)
;  data/objectCollisionReactionSets.s (defines which collision effects occur when)
;
; Be careful about rearranging these; certain enemies check ranges of values, not just
; specific ones (ie. everything from L1_SWORD to EXPERT_PUNCH).

.enum 0
	COLLISIONTYPE_LINK			db ; $00: Collision with link, companion
	COLLISIONTYPE_L1_SHIELD			db ; $01: Level 1 shield collision
	COLLISIONTYPE_L2_SHIELD			db ; $02: Level 2 shield
	COLLISIONTYPE_L3_SHIELD			db ; $03: Level 3 shield
	COLLISIONTYPE_L1_SWORD			db ; $04: Level 1 sword, minecart
	COLLISIONTYPE_L2_SWORD			db ; $05: Level 2 sword
	COLLISIONTYPE_L3_SWORD			db ; $06: Level 3 sword
	COLLISIONTYPE_BIGGORON_SWORD		db ; $07: Biggoron's sword
	COLLISIONTYPE_SWORDSPIN			db ; $08: Sword spin (any level?)
	COLLISIONTYPE_SWORD_HELD		db ; $09: Sword being held out (any level?)
	COLLISIONTYPE_FIST_PUNCH		db ; $0a: Punch (fist ring, unused item)
	COLLISIONTYPE_EXPERT_PUNCH		db ; $0b: Punch (expert's ring)
	COLLISIONTYPE_SHOVEL			db ; $0c: Shovel (bumps enemies)
	COLLISIONTYPE_SWITCH_HOOK		db ; $0d: Switch hook
	COLLISIONTYPE_0e			db ; $0e:
	COLLISIONTYPE_0f			db ; $0f: Instant death - maybe dimitri?
	COLLISIONTYPE_10			db ; $10:
	COLLISIONTYPE_11			db ; $11:

	; Collisions $00-$11 are considered "direct attacks" from Link, for the purpose of
	; ambi's guards (they notice him right away), while $11-$1f are indirect attacks?

	COLLISIONTYPE_CANE_OF_SOMARIA		db ; $12: Cane of Somaria, other harmless things?
	COLLISIONTYPE_13			db ; $13:
	COLLISIONTYPE_14			db ; $14:
	COLLISIONTYPE_SOMARIA_BLOCK		db ; $15: Cane of Somaria block
	COLLISIONTYPE_16			db ; $16: Object being thrown (ie. sign)
	COLLISIONTYPE_BOOMERANG			db ; $17: Boomerang (both levels?)
	COLLISIONTYPE_BOMB			db ; $18: Bomb, bombchu
	COLLISIONTYPE_SWORD_BEAM		db ; $19: Sword beam
	COLLISIONTYPE_MYSTERY_SEED		db ; $1a: Mystery seed
	COLLISIONTYPE_EMBER_SEED		db ; $1b: Ember seed
	COLLISIONTYPE_SCENT_SEED		db ; $1c: Scent seed
	COLLISIONTYPE_PEGASUS_SEED		db ; $1d: Pegasus seed
	COLLISIONTYPE_GALE_SEED			db ; $1e: Gale seed
	COLLISIONTYPE_1f			db ; $1f: Probably unused

	; Values above $20 don't fit into "spriteCollisionReactionSets" table, and so can
	; only be used if hard-coded somewhere. These values should never be written to an
	; item's "collisionType", but may be written to an enemy's "var2a".

	; COLLISIONEFFECT_ELECTRIC_SHOCK overrides the actual collisionType with this.
	COLLISIONTYPE_ELECTRIC_SHOCK		db ; $20

.ende