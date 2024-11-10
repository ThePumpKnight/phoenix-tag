class PTag_SpawnerReplacer : StaticEventHandler
{
	override void CheckReplacement(ReplaceEvent e)
	{
		CVar replaceMonsters = CVar.FindCVar('ptag_replacemonsters');
		CVar replaceRunes = CVar.FindCVar('ptag_replacerunes');
		CVar replaceItems = CVar.FindCVar('ptag_replaceitems');
		CVar replaceWeapons = CVar.FindCVar('ptag_replaceweapons');
		CVar disableSpread = CVar.FindCVar('ptag_disablespread');

		// ========================================================
		// Monsters
		// ========================================================
		if (replaceMonsters.GetBool())
		{
			let cls = e.Replacee.GetClassName();
			switch (cls)
			{
				case 'Cacodemon':
					switch (random(1, 7))
					{
						case 1:
						case 2:
							e.Replacement = "Cacolantern";
							break;
						case 3:
							e.Replacement = "Abaddon";
							break;
						default:
							e.Replacement = "Cacodemon";
							break;
					}
					break;
				case 'DoomImp':
					switch (random(1, 6))
					{
						case 1:
							e.Replacement = "DarkImp";
							break;
						default:
							e.Replacement = "DoomImp";
							break;
					}
					break;
				case 'Demon':
					switch (random(1, 6))
					{
						case 1:
							e.Replacement = "BloodDemon";
							break;
						default:
							e.Replacement = "Demon";
							break;
					}
					break;
				case 'BaronOfHell':
					switch (random(1, 8))
					{
						case 1:
							e.Replacement = "Belphegor";
							break;
						default:
							e.Replacement = "BaronOfHell";
							break;
					}
					break;
				case 'Fatso':
					switch (random(1, 8))
					{
						case 1:
							e.Replacement = "Hectebus";
							break;
						default:
							e.Replacement = "Fatso";
							break;
					}
					break;
				case 'ShotgunGuy':
					switch (random(1, 8))
					{
						case 1:
							e.Replacement = "SuperShotgunGuy";
							break;
						default:
							e.Replacement = "ShotgunGuy";
							break;
					}
					break;
			}
		}
		else
		{
			let cls = e.Replacee.GetClassName();
			switch (cls)
			{
				case 'Cacolantern':
				case 'Abaddon':
					e.Replacement = "Cacodemon";
					break;
				case 'DarkImp':
					e.Replacement = "DoomImp";
					break;
				case 'BloodDemon':
					e.Replacement = "Demon";
					break;
				case 'Belphegor':
					e.Replacement = "BaronOfHell";
					break;
				case 'Hectebus':
					e.Replacement = "Fatso";
					break;
				case 'SuperShotgunGuy':
					e.Replacement = "ShotgunGuy";
					break;
			}
		}


		// ========================================================
		// Runes
		// ========================================================
		if (replaceRunes.GetBool())
		{
			let cls = e.Replacee.GetClassName();
			switch (cls)
			{
				case 'InvulnerabilitySphere':
					switch (random(1, 24))
					{
						case 1:
							e.Replacement = "TimeFreezeSphere";
							break;
						case 2:
							e.Replacement = "InvisibilitySphere";
							break;
						case 3:
							e.Replacement = "Doomsphere";
							break;
						case 4:
							e.Replacement = "Guardsphere";
							break;
						case 5:
							e.Replacement = "StrengthRune";
							break;
						case 6:
							e.Replacement = "ResistanceRune";
							break;
						case 7:
							e.Replacement = "RegenerationRune";
							break;
						case 8:
							e.Replacement = "ReflectionRune";
							break;
						case 9:
							e.Replacement = "RageRune";
							break;
						case 10:
							e.Replacement = "HighJumpRune";
							break;
						case 11:
							e.Replacement = "HasteRune";
							break;
						case 12:
							e.Replacement = "DrainRune";
							break;
						default:
							e.Replacement = "InvulnerabilitySphere";
							break;
					}
					break;
				case 'Soulsphere':
					switch (random(1, 19))
					{
						case 1:
							e.Replacement = "TimeFreezeSphere";
							break;
						case 2:
							e.Replacement = "InvisibilitySphere";
							break;
						case 3:
							e.Replacement = "HasteRune";
							break;
						case 4:
						case 5:
						case 6:
						case 7:
						case 8:
						case 9:
							e.Replacement = "ProsperityRune";
							break;
						default:
							e.Replacement = "Soulsphere";
							break;
					}
					break;
				case 'Megasphere':
					switch (random(1, 14))
					{
						case 1:
							e.Replacement = "Doomsphere";
							break;
						case 2:
							e.Replacement = "Guardsphere";
							break;
						case 3:
							e.Replacement = "RegenerationRune";
							break;
						case 4:
							e.Replacement = "ResistanceRune";
							break;
						default:
							e.Replacement = "Megasphere";
							break;
					}
					break;
				case 'Blursphere':
					switch (random(1, 12))
					{
						case 1:
							e.Replacement = "InvisibilitySphere";
							break;
						case 2:
							e.Replacement = "ReflectionRune";
							break;
						case 3:
							if (disableSpread.GetBool())
								e.Replacement = "Blursphere";
							else
								e.Replacement = "SpreadRune";
							break;
						default:
							e.Replacement = "Blursphere";
							break;
					}
					break;
				case 'Berserk':
					switch (random(1, 14))
					{
						case 1:
							e.Replacement = "DrainRune";
							break;
						case 2:
							e.Replacement = "RageRune";
							break;
						case 3:
							e.Replacement = "StrengthRune";
							break;
						case 4:
							e.Replacement = "Doomsphere";
							break;
						default:
							e.Replacement = "Berserk";
							break;
					}
					break;
			}
		}
		// ========================================================
		// Spread Rune
		// ========================================================
		if (disableSpread.GetBool())
		{
			let cls = e.Replacee.GetClassName();
			switch(cls) // Why a simple 'if' statement wasn't working, I have no idea... Sorry, Pump. I didn't realize the mod was broken for a while.
			{
				default:
					switch(random(1, 13))
					{
						case 1:
							e.Replacement = "TimeFreezeSphere";
							break;
						case 2:
							e.Replacement = "Doomsphere";
							break;
						case 3:
							e.Replacement = "Guardsphere";
							break;
						case 4:
							e.Replacement = "StrengthRune";
							break;
						case 5:
							e.Replacement = "ResistanceRune";
							break;
						case 6:
							e.Replacement = "RegenerationRune";
							break;
						case 7:
							e.Replacement = "ReflectionRune";
							break;
						case 8:
							e.Replacement = "RageRune";
							break;
						case 9:
							e.Replacement = "Megasphere";
							break;
						case 10:
							e.Replacement = "HasteRune";
							break;
						case 11:
							e.Replacement = "DrainRune";
							break;
						case 12:
							e.Replacement = "InvulnerabilitySphere";
							break;
						case 13:
							e.Replacement = "Soulsphere";
							break;
					}
				break;
			}
		}

		// ========================================================
		// Items
		// ========================================================
		if (replaceItems.GetBool())
		{
			let cls = e.Replacee.GetClassName();
			switch (cls)
			{
				case 'BlueArmor':
					if (random(0, 1) == 1)
						e.Replacement = "RedArmor";
					else
						e.Replacement = "BlueArmor";
					break;
				case 'ArmorBonus':
					if (random(0, 1) == 1)
						e.Replacement = "MaxArmorBonus";
					else
						e.Replacement = "ArmorBonus";
					break;
				case 'HealthBonus':
					if (random(0, 1) == 1)
						e.Replacement = "MaxHealthBonus";
					else
						e.Replacement = "HealthBonus";
					break;
			}
		}

		// ========================================================
		// Weapons
		// ========================================================
		if (replaceWeapons.GetBool())
		{
			let cls = e.Replacee.GetClassName();
			switch (cls)
			{
				case 'PlasmaRifle':
					if (random(0, 1) == 1)
						e.Replacement = "PTag_Railgun";
					else
						e.Replacement = "PlasmaRifle";
					break;
				case 'Chaingun':
					if (random(0, 1) == 1)
						e.Replacement = "PTag_Minigun";
					else
						e.Replacement = "Chaingun";
					break;
				case 'RocketLauncher':
					if (random(0, 1) == 1)
						e.Replacement = "PTag_GrenadeLauncher";
					else
						e.Replacement = "RocketLauncher";
					break;
				case 'BFG9000':
					if (random(0, 1) == 1)
						e.Replacement = "PTag_BFG10K";
					else
						e.Replacement = "BFG9000";
					break;
			}
		}
		else
		{
			let cls = e.Replacee.GetClassName();
			switch (cls)
			{
				case 'PTag_Railgun':
					e.Replacement = "PlasmaRifle";
					break;
				case 'PTag_Minigun':
					e.Replacement = "Chaingun";
					break;
				case 'PTag_GrenadeLauncher':
					e.Replacement = "RocketLauncher";
					break;
				case 'PTag_BFG10K':
					e.Replacement = "BFG9000";
					break;
			}
		}
	}
}