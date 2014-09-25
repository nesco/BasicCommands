function HandleKickAllCommand(Split, Player)

		local CommandPrefix = "/kick"
		local CommandSuffix = ""
		
		ExecuteForEachPlayer(Player, CommandPrefix, CommandSuffix)
		
		return true;
end
