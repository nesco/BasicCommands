function HandleThrowCommand(Split, Player)
		if (Split[2] == nil) then
				SendMessage(Player, "Usage: " .. Split(1) .. " [arrow|egg|expbottle|fireball|firecharge|skull|snwoball] ")
				return true
		end
		
		local Projectile = StringToProjectile(Split[2])
		if (Projectile == nil) then
				SendMessage(Player, "Usage: " .. Split(1) .. " [arrow|egg|expbottle|fireball|firecharge|skull|snwoball] ")
				return true
		end
		
		local speed = 2
		local direction = Player:GetLookVector*speed 
		
		Player:GetWorld():CreateProjectile(GetBlockXYZFromTrace(Player), Projectile, Player, direction)
		
end

local ProjectileTable =
{
		["arrow"]		= pkArrow,
		["egg"]			= pkEgg,
		["expbottle"]	= pkExpBottle,
		["fireball"]	= pkGhastFireball,
		["firecharge"]	= pkFireCharge,
		["skull"]		= pkWitherSkull,
		["snwoball"]	= pkSnowball,
}
		
function StringToProjectile(Str)

		local StrLower = string.lower(Str)
		return ProjectileTable[StrLower]
end
		
