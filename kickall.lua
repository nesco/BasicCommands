function HandleKickAllCommand(Split, Player)
		if (Split[2] == nil) then
				Player:SendMessage("Usage: " .. Split[1] .. " [arrow|egg|expbottle|fireball|firecharge|skull|snowball] ")
				return true
		end
		
		local Projectile = StringToProjectile(Split[2])
		if (Projectile == nil) then
				Player:SendMessage("Usage: " .. Split[1] .. " [arrow|egg|expbottle|fireball|firecharge|skull|snowball] ")
				return true
		end
		
		local speed = 30
		local direction = Player:GetThrowSpeed(speed)
		local Item = cItem()
		local pos = Player:GetThrowStartPos()
		local id = Player:GetWorld():CreateProjectile(pos.x, pos.y, pos.z, Projectile, Player, Item, direction)
		return true;
en
