function HandleKickAllCommand(Split, Player)

		local kickPlayer = function(OtherPlayer)
				
				local str = "/kick " .. OtherPlayer:GetName()
				
				if (OtherPlayer:GetName() ~= Player:GetName()) then
						cRoot:Get():GetPluginManager():ExecuteCommand(Player, str)
				end
		
		end
		cRoot:Get():ForEachPlayer(kickPlayer)
		
		return true;
end
