local mType = Game.createMonsterType("Headpecker")
local monster = {}

monster.description = "a Headpecker"
monster.experience = 12050
monster.outfit = {
	lookType = 1557,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 2275
monster.Bestiary = {
	class = "Bird",
	race = BESTY_RACE_BIRD,
	toKill = 5000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 100,
	Stars = 3,
	Occurrence = 0,
	Locations = "Sea Serpent Area and Seacrest Grounds."
}

monster.health = 14700
monster.maxHealth = 14700
monster.race = "blood"
monster.corpse = 39319
monster.speed = 217
monster.manaCost = 0
monster.maxSummons = 0


monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "The Moon Goddess is ashamed of you!", yell = false},
}

monster.loot = {
	{id = 39546, chance = 0},
	{name = "Crystal Coin", chance = 10000, maxCount = 3},
	{name = "Furry Club", chance = 7730},
	{name = "Headpecker Beak", chance = 3090},
	{name = "Headpecker Feather", chance = 10000},
	{name = "Spike Sword", chance = 15640},
	{name = "Titan Axe", chance = 1980},
	{name = "Gold Ingot", chance = 2430},
	{name = "Wand of Starstorm", chance = 430},
	{name = "serpent sword", chance = 90},
	{name = "relic sword", chance = 430},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 300, maxDamage = -801},
	{name ="combat", interval = 2000, chance = 47, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1500, effect = CONST_ME_YELLOWSMOKE, target = true},
	{name ="combat", interval = 2000, chance = 31, type = COMBAT_LIFEDRAIN, minDamage = -800, maxDamage = -1500, radius = 4, effect = CONST_ME_DRAWBLOOD, target = false},
}

monster.defenses = {
	defense = 68,
	armor = 68,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)