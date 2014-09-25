function GetBlockXYZFromTrace(Player)
		local World = Player.GetWorld
		local Tracer = cTracer(World)
		
		local EyePos = Vector3f(Player:GetEyePosition().x, Player:GetEyePosition().y, Player:GetEyePosition().z)
		local EyeVector = Vector3f(Player:GetLooVector().x, Player:GetLookVector().y, Player:GetLookVector().z)
		Tracer:Trace(EyePos, EyeVector, 50)
		return Tracer.BlockHitPosition.x, Tracer.BlockHitPosition.y, Tracer.BlockHitPosition.z
end

function Strike(Name)
		if not Player:GetWorld():DoWithPlayer(Name,
				function(Player)
						Player:GetWorld:GetWorld():CastThunderbolt(Player:GetPosX(), Player:GetPosY(), Player:GetPosZ())
				end
		) then
				return false
		else
			return true
		end
end

function Throw(Player, ProjectileName, Speed)
		local Direction = Player:GetThrowSpeed(speed)
		local Pos = Player:GetThrowStartPos()
		local Item = cItem()
		
		local ProjectileName = string.lower(ProjectileName)
		local Projectile = ProjectileTable[ProjectileName]
		
		return Player:GetWorld():CreateProjectile(Pos.x, Pos.y, Pos.z, Projectile, Player, Item, Direction)
end

function ExecuteForAll(CommandPrefix, Player, CommandSuffix)
		local ExecuteCommand = function(OtherPlayer)
					
					local FinalCommand = CommandPrefix .. " " .. OtherPlayer:GetName .. " " .. CommandSuffix
					
					if (OtherPlayer:GetName() ~= Player:GetName()) then
								cRoot:GetPluginManager():ExecuteCommand(Player, FinalCommand)
					end
		end
		cRoot:ForEachPlayer(ExecuteCommand)
		
		return true;
end

local ProjectileTable = 
{
			["arrow"]			= 60,
			["snowball"]		= 61,
			["egg"]				= 62,
			["fireball"]		= 63,
			["firecharge"]		= 64,
			["enderpearl"] 		= 65,
			["skull"]			= 66
			["splashpotion"]	= 73,
			["expbottle"]		= 76,
			["firework"]		= 77,
			["fishingfloat"]	= 90,
}
