function HandleThrowCommand(Split, Player)
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
		return true
end

local ProjectileTable =
{
		["arrow"]		= 60,
		["egg"]			= 62,
		["expbottle"]	= 75,
		["fireball"]	= 63,
		["firecharge"]	= 64,
		["skull"]		= 66,
		["snowball"]	= 61,
}
		
function StringToProjectile(Str)
		local StrLower = string.lower(Str)
		return ProjectileTable[StrLower]
end
		
