function HandleLightningCommand(Split, Player)
		if #Split == 1 then
				Player:GetWorld():CastThunderbolt(GetBlockXYZFromTrace(Player))
				return true
		elseif #Split == 2 then
				if Player:HasPermission("bc.lightning.forplayer") then
						if not Strike(Player, Split[2]) then
							Player:SendMessage(cChatColor.Rose .. "Player couldn't be found.")
							return true
						end
				else
						Player:SendMessage(cChatColor.Rose .. "You don't have permissions for this command!")
						return true
				end
		end
		
		Player:SendMessage(cChatColor.Blue .. "Lightning created!")
		return true
end
