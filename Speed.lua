function HandleSpeedCommand(Split, Player)
			if (#Split == 2) then
					SetGlobalMaxSpeed(tonumber(Split[2]))
					return true
					
			elseif (#Split == 3) then
					SetMaxSpeed(Player, tonumber(Split[2]), Split[3])
					return true
					
			elseif (#Split == 4) then
					if not Player:GetWorld():DoWithPlayer(Split[2], SetMaxSpeed(a_Player, tonumber(Split[3]), Split[4])
					) then
								Player:SendMessage(cChatColor.Rose .. "Player couldn't be found.")
								return true
					end
			end
			
			Player:SendMessage(cChatColor.Blue .. "Usage: " .. Split[1] .. " [player] speed [mode]")
			Player:SendMessage(cChatColor.Blue .. "Mode : walking, flying, sprinting")
			return true
end
					 
			
