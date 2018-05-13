#include <sourcemod>
#include <sdktools>
#include <cstrike>
#include <sdkhooks>

#pragma semicolon 1

ConVar mp_match_end_changelevel = null;
ConVar mp_match_end_restart = null;

public Plugin myinfo = 
{
	name = "Mapchooser Fix",
	author = "Diogoonair",
	description = "Fix for mapchooser.",
	version = "1.0",
};

public void OnPluginStart()
{	
	SetConVarInt(FindConVar("mp_match_end_changelevel"), 1);
	SetConVarInt(FindConVar("mp_match_end_restart"), 0);
}

public OnMapStart()
{
	SetConVarInt(FindConVar("mp_match_end_changelevel"), 1);
	SetConVarInt(FindConVar("mp_match_end_restart"), 0);
}
