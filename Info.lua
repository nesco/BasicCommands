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
 		        
 		        ["/lightning"] =
 		        {
 		              Alias = "/thunderbolt",
 		              Permission = "bc.lighting",
 		              Handler = HandleThunderboltCommand,
 		              HelpString = " ~ Create lightnings",
 		              
 		        },
 		        
 		        ["/kick-all"] =
 		        {
 		              Alias = "/kickall",
 		              Permission = "bc.kickall",
 		              Handler = HandleKickAllCommand,
 		              HelpString = " ~ Kick all the players",
 		              
 		        },

 		}
 
}
