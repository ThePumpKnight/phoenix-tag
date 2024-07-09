class PTag_SpawnerReplacer : StaticEventHandler
{
	override void CheckReplacement(ReplaceEvent e)
	{
		CVar replaceRunes = CVar.FindCVar('ptag_replacerunes');
		CVar replaceItems = CVar.FindCVar('ptag_replaceitems');
		CVar replaceWeapons = CVar.FindCVar('ptag_replaceweapons');

		// Runes
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
						// G: uncomment when SpreadRune is fixed
/*						case 3:
							e.Replacement = "SpreadRune";
							break;*/
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

		// Items
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

		// Weapons
		if (replaceWeapons.GetBool())
		{
			let cls = e.Replacee.GetClassName();
			switch (cls)
			{
				case 'PlasmaRifle':
					if (random(0, 1) == 1)
						e.Replacement = "Railgun";
					else
						e.Replacement = "PlasmaRifle";
					break;
				case 'Chaingun':
					if (random(0, 1) == 1)
						e.Replacement = "Minigun";
					else
						e.Replacement = "Chaingun";
					break;
				case 'RocketLauncher':
					if (random(0, 1) == 1)
						e.Replacement = "GrenadeLauncher";
					else
						e.Replacement = "RocketLauncher";
					break;
				case 'BFG9000':
					if (random(0, 1) == 1)
						e.Replacement = "BFG10K";
					else
						e.Replacement = "BFG9000";
					break;
			}
		}
	}
}