-- Info.lua

-- Implements the g_PluginInfo standard plugin description
 
 g_PluginInfo = 
{
 
 		Name = "Commands",
 		Version = "1",
 		Date = "2014-09-20",
 		SourceLocation = "",
 		Description = "[[Set of commands]]",
 		
 		Commands =
 		{
 		        ["/throw"] =
 		        {
 		              Permission = "bc.throw",
 		              Handler = HandleThrowCommand,
 		              HelpString = " ~ Shoot a projectile"
 		              
 		        },
 		        
 		        ["/thunderbolt"] =
 		        {
 		              Alias = "/strike",
 		              Permission = "bc.thunderbolt",
 		              Handler = HandlerThunderboltCommand,
 		              HelpString = " ~ Create a thunderbolt",
 		              
 		        },
 		        
 		        ["/kick-all"] =
 		        {
 		              Alias = "/kicka",
 		              Permission = "bc.kickall",
 		              Handler = HandlerKickAllCommand,
 		              HelpString = " ~ Kick all the players",
 		              
 		        },

 		}
 
}
