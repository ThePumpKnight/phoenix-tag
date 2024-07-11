//=================================================================================================
//
// Prosperity rune
//
//=================================================================================================

class PowerProsperity : Powerup
{
	Default
	{
		Inventory.Icon "RPRSC0";
	}
	override void InitEffect()
	{
		Super.InitEffect();
		if (owner && owner.player)
		{
			PlayerPawn(owner).bonushealth += 50;
			let arm = BasicArmor(owner.FindInventory('BasicArmor'));
			if (arm)
			{
				arm.bonuscount += 50;
			}
		}
	}
	override void EndEffect()
	{
		if (owner && owner.player)
		{
			PlayerPawn(owner).bonushealth -= 50;
			let arm = BasicArmor(owner.FindInventory('BasicArmor'));
			if (arm)
			{
				arm.bonuscount -= 50;
			}
		}
		Super.EndEffect();
	}
}

class ProsperityRune : PowerupGiver
{
	Default
	{
		+COUNTITEM
		+NOGRAVITY
		+FLOATBOB
		+INVENTORY.AUTOACTIVATE
		Inventory.MaxAmount 1;
		Inventory.Icon "RPRSC0";
		Inventory.PickupMessage "You got the Prosperity rune!";
		Inventory.PickupAnnouncerEntry "prosperity";
		Powerup.Duration 0x7FFFFFFD;
		Powerup.Type "PowerProsperity";
	}
	States
	{
		Spawn:
			RPRS ABCDE 6;
			Loop;
	}
	
	// dedicated function that adds a value to health and armor maximums:
	void ModifyOwnerHealthArmor(int value)
	{
		if (!owner || !owner.player) return;
		PlayerPawn(owner).bonushealth += value;
		let arm = BasicArmor(owner.FindInventory('BasicArmor'));
		if (arm)
		{
			arm.bonuscount += value;
		}
	}

	// Destroy when changing levels:
	override void Travelled()
	{
		self.Destroy();
		ModifyOwnerHealthArmor(-50);
	}

	// Destroy when owner dies:
	override void OwnerDied()
	{
		self.Destroy();
		ModifyOwnerHealthArmor(-50);
	}

	// Increase counts when this item is given:
	override void AttachToOwner(Actor other)
	{
		Super.AttachToOwner(other);
		ModifyOwnerHealthArmor(50);
	}

	// Decrease counts when this item is removed:
	override void DetachFromOwner()
	{
		ModifyOwnerHealthArmor(-50);
		Super.DetachFromOwner();
	}
}