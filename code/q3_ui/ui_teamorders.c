/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.

This file is part of Quake III Arena source code.

Quake III Arena source code is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.

Quake III Arena source code is distributed in the hope that it will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

Modified by Greg Dolley [1/1/2008]
===========================================================================
*/
//
/*
=======================================================================

TEAM ORDERS MENU

=======================================================================
*/

//
// ***GREGS_VC9_PORT_MOD*** 
//
// Module level change
// -------------------
//
// Note: changed "generic" to "generic_mc" throughout this module since generic is a keyword in .NET [***TAG***: MC++].
// I didn't comment every line for this change since it would've required marking nearly 2,500 lines throughout the
// entire codebase.
//

#include "ui_local.h"


#define ART_FRAME		"menu/art/addbotframe"
#define ART_BACK0		"menu/art/back_0"
#define ART_BACK1		"menu/art/back_1"	

#define ID_LIST_BOTS		10
#define ID_LIST_CTF_ORDERS	11
#define ID_LIST_TEAM_ORDERS	12


typedef struct {
	menuframework_s	menu;

	menutext_s		banner;
	menubitmap_s	frame;

	menulist_s		list;

	menubitmap_s	back;

	int				gametype;
	int				numBots;
	int				selectedBot;
	char			*bots[9];
	char			botNames[9][16];
} teamOrdersMenuInfo_t;

static teamOrdersMenuInfo_t	teamOrdersMenuInfo;

#define NUM_CTF_ORDERS		7
static const char *ctfOrders[] = {
	"I Am the Leader",
	"Defend the Base",
	"Follow Me",
	"Get Enemy Flag",
	"Camp Here",
	"Report",
	"I Relinquish Command",
	NULL
};
static const char *ctfMessages[] = {
	"i am the leader",
	"%s defend the base",
	"%s follow me",
	"%s get enemy flag",
	"%s camp here",
	"%s report",
	"i stop being the leader",
	NULL
};

#define NUM_TEAM_ORDERS		6
static const char *teamOrders[] = {
	"I Am the Leader",
	"Follow Me",
	"Roam",
	"Camp Here",
	"Report",
	"I Relinquish Command",
	NULL
};
static const char *teamMessages[] = {
	"i am the leader",
	"%s follow me",
	"%s roam",
	"%s camp here",
	"%s report",
	"i stop being the leader",
	NULL
};


/*
===============
UI_TeamOrdersMenu_BackEvent
===============
*/
static void UI_TeamOrdersMenu_BackEvent( void *ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}
	UI_PopMenu();
}


/*
===============
UI_TeamOrdersMenu_SetList
===============
*/
static void UI_TeamOrdersMenu_SetList( int id ) {
	switch( id ) {
	default:
	case ID_LIST_BOTS:
		teamOrdersMenuInfo.list.generic_mc.id = id;
		teamOrdersMenuInfo.list.numitems = teamOrdersMenuInfo.numBots;
		teamOrdersMenuInfo.list.itemnames = (const char **)teamOrdersMenuInfo.bots;
		 break;

	case ID_LIST_CTF_ORDERS:
		teamOrdersMenuInfo.list.generic_mc.id = id;
		teamOrdersMenuInfo.list.numitems = NUM_CTF_ORDERS;
		teamOrdersMenuInfo.list.itemnames = ctfOrders;
		break;

	case ID_LIST_TEAM_ORDERS:
		teamOrdersMenuInfo.list.generic_mc.id = id;
		teamOrdersMenuInfo.list.numitems = NUM_TEAM_ORDERS;
		teamOrdersMenuInfo.list.itemnames = teamOrders;
		break;
	}

	teamOrdersMenuInfo.list.generic_mc.bottom = teamOrdersMenuInfo.list.generic_mc.top + teamOrdersMenuInfo.list.numitems * PROP_HEIGHT;
}


/*
=================
UI_TeamOrdersMenu_Key
=================
*/
sfxHandle_t UI_TeamOrdersMenu_Key( int key ) {
	menulist_s	*l;
	int	x;
	int	y;
	int	index;

	l = (menulist_s	*)Menu_ItemAtCursor( &teamOrdersMenuInfo.menu );
	if( l != &teamOrdersMenuInfo.list ) {
		return Menu_DefaultKey( &teamOrdersMenuInfo.menu, key );
	}

	switch( key ) {
		case K_MOUSE1:
			x = l->generic_mc.left;
			y = l->generic_mc.top;
			if( UI_CursorInRect( x, y, l->generic_mc.right - x, l->generic_mc.bottom - y ) ) {
				index = (uis.cursory - y) / PROP_HEIGHT;
				l->oldvalue = l->curvalue;
				l->curvalue = index;

				if( l->generic_mc.callback ) {
					l->generic_mc.callback( l, QM_ACTIVATED );
					return menu_move_sound;
				}
			}
			return menu_null_sound;

		case K_KP_UPARROW:
		case K_UPARROW:
			l->oldvalue = l->curvalue;

			if( l->curvalue == 0 ) {
				l->curvalue = l->numitems - 1;
			}
			else {
				l->curvalue--;
			}
			return menu_move_sound;

		case K_KP_DOWNARROW:
		case K_DOWNARROW:
			l->oldvalue = l->curvalue;

			if( l->curvalue == l->numitems - 1 ) {
				l->curvalue = 0;;
			}
			else {
				l->curvalue++;
			}
			return menu_move_sound;
	}

	return Menu_DefaultKey( &teamOrdersMenuInfo.menu, key );
}


/*
=================
UI_TeamOrdersMenu_ListDraw
=================
*/
static void UI_TeamOrdersMenu_ListDraw( void *self ) {
	menulist_s	*l;
	int			x;
	int			y;
	int			i;
	float		*color;
	qboolean	hasfocus;
	int			style;

	l = (menulist_s *)self;

	hasfocus = (qboolean)(l->generic_mc.parent->cursor == l->generic_mc.menuPosition); // ***GREGS_VC9_PORT_MOD*** -- added typecast(s)

	x =	320;//l->generic_mc.x;
	y =	l->generic_mc.y;
	for( i = 0; i < l->numitems; i++ ) {
		style = UI_LEFT|UI_SMALLFONT|UI_CENTER;
		if( i == l->curvalue ) {
			color = color_yellow;
			if( hasfocus ) {
				style |= UI_PULSE;
			}
		}
		else {
			color = color_orange;
		}

		UI_DrawProportionalString( x, y, l->itemnames[i], style, color );
		y += PROP_HEIGHT;
	}
}


/*
===============
UI_TeamOrdersMenu_ListEvent
===============
*/
static void UI_TeamOrdersMenu_ListEvent( void *ptr, int event ) {
	int		id;
	int		selection;
	char	message[256];

	if (event != QM_ACTIVATED)
		return;

	id = ((menulist_s *)ptr)->generic_mc.id;
	selection = ((menulist_s *)ptr)->curvalue;

	if( id == ID_LIST_BOTS ) {
		teamOrdersMenuInfo.selectedBot = selection;
		if( teamOrdersMenuInfo.gametype == GT_CTF ) {
			UI_TeamOrdersMenu_SetList( ID_LIST_CTF_ORDERS );
		}
		else {
			UI_TeamOrdersMenu_SetList( ID_LIST_TEAM_ORDERS );
		}
		return;
	}

	if( id == ID_LIST_CTF_ORDERS ) {
		Com_sprintf( message, sizeof(message), ctfMessages[selection], teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.selectedBot] );
	}
	else {
		Com_sprintf( message, sizeof(message), teamMessages[selection], teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.selectedBot] );
	}

	trap_Cmd_ExecuteText( EXEC_APPEND, va( "say_team \"%s\"\n", message ) );
	UI_PopMenu();
}


/*
===============
UI_TeamOrdersMenu_BuildBotList
===============
*/
static void UI_TeamOrdersMenu_BuildBotList( void ) {
	uiClientState_t	cs;
	int		numPlayers;
	int		isBot;
	int		n;
	char	playerTeam;
	char	botTeam;
	char	info[MAX_INFO_STRING];

	for( n = 0; n < 9; n++ ) {
		teamOrdersMenuInfo.bots[n] = teamOrdersMenuInfo.botNames[n];
	}

	trap_GetClientState( &cs );

	Q_strncpyz( teamOrdersMenuInfo.botNames[0], "Everyone", 16 );
	teamOrdersMenuInfo.numBots = 1;

	trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) );
	numPlayers = atoi( Info_ValueForKey( info, "sv_maxclients" ) );
	teamOrdersMenuInfo.gametype = atoi( Info_ValueForKey( info, "g_gametype" ) );

	for( n = 0; n < numPlayers && teamOrdersMenuInfo.numBots < 9; n++ ) {
		trap_GetConfigString( CS_PLAYERS + n, info, MAX_INFO_STRING );

		playerTeam = TEAM_SPECTATOR; // bk001204 = possible uninit use

		if( n == cs.clientNum ) {
			playerTeam = *Info_ValueForKey( info, "t" );
			continue;
		}

		isBot = atoi( Info_ValueForKey( info, "skill" ) );
		if( !isBot ) {
			continue;
		}

		botTeam = *Info_ValueForKey( info, "t" );
		if( botTeam != playerTeam ) {
			continue;
		}

		Q_strncpyz( teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.numBots], Info_ValueForKey( info, "n" ), 16 );
		Q_CleanStr( teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.numBots] );
		teamOrdersMenuInfo.numBots++;
	}
}


/*
===============
UI_TeamOrdersMenu_Init
===============
*/
static void UI_TeamOrdersMenu_Init( void ) {
	UI_TeamOrdersMenu_Cache();

	memset( &teamOrdersMenuInfo, 0, sizeof(teamOrdersMenuInfo) );
	teamOrdersMenuInfo.menu.fullscreen = qfalse;
	teamOrdersMenuInfo.menu.key = UI_TeamOrdersMenu_Key;

	UI_TeamOrdersMenu_BuildBotList();

	teamOrdersMenuInfo.banner.generic_mc.type		= MTYPE_BTEXT;
	teamOrdersMenuInfo.banner.generic_mc.x			= 320;
	teamOrdersMenuInfo.banner.generic_mc.y			= 16;
	teamOrdersMenuInfo.banner.string			= "TEAM ORDERS";
	teamOrdersMenuInfo.banner.color				= color_white;
	teamOrdersMenuInfo.banner.style				= UI_CENTER;

	teamOrdersMenuInfo.frame.generic_mc.type		= MTYPE_BITMAP;
	teamOrdersMenuInfo.frame.generic_mc.flags		= QMF_INACTIVE;
	teamOrdersMenuInfo.frame.generic_mc.name		= ART_FRAME;
	teamOrdersMenuInfo.frame.generic_mc.x			= 320-233;
	teamOrdersMenuInfo.frame.generic_mc.y			= 240-166;
	teamOrdersMenuInfo.frame.width				= 466;
	teamOrdersMenuInfo.frame.height				= 332;

	teamOrdersMenuInfo.list.generic_mc.type		= MTYPE_SCROLLLIST;
	teamOrdersMenuInfo.list.generic_mc.flags		= QMF_PULSEIFFOCUS;
	teamOrdersMenuInfo.list.generic_mc.ownerdraw	= UI_TeamOrdersMenu_ListDraw;
	teamOrdersMenuInfo.list.generic_mc.callback	= UI_TeamOrdersMenu_ListEvent;
	teamOrdersMenuInfo.list.generic_mc.x			= 320-64;
	teamOrdersMenuInfo.list.generic_mc.y			= 120;

	teamOrdersMenuInfo.back.generic_mc.type		= MTYPE_BITMAP;
	teamOrdersMenuInfo.back.generic_mc.name		= ART_BACK0;
	teamOrdersMenuInfo.back.generic_mc.flags		= QMF_LEFT_JUSTIFY|QMF_PULSEIFFOCUS;
	teamOrdersMenuInfo.back.generic_mc.callback	= UI_TeamOrdersMenu_BackEvent;
	teamOrdersMenuInfo.back.generic_mc.x			= 0;
	teamOrdersMenuInfo.back.generic_mc.y			= 480-64;
	teamOrdersMenuInfo.back.width				= 128;
	teamOrdersMenuInfo.back.height				= 64;
	teamOrdersMenuInfo.back.focuspic			= ART_BACK1;

	Menu_AddItem( &teamOrdersMenuInfo.menu, &teamOrdersMenuInfo.banner );
	Menu_AddItem( &teamOrdersMenuInfo.menu, &teamOrdersMenuInfo.frame );
	Menu_AddItem( &teamOrdersMenuInfo.menu, &teamOrdersMenuInfo.list );
	Menu_AddItem( &teamOrdersMenuInfo.menu, &teamOrdersMenuInfo.back );

	teamOrdersMenuInfo.list.generic_mc.left = 220;
	teamOrdersMenuInfo.list.generic_mc.top = teamOrdersMenuInfo.list.generic_mc.y;
	teamOrdersMenuInfo.list.generic_mc.right = 420;
	UI_TeamOrdersMenu_SetList( ID_LIST_BOTS );
}


/*
=================
UI_TeamOrdersMenu_Cache
=================
*/
void UI_TeamOrdersMenu_Cache( void ) {
	trap_R_RegisterShaderNoMip( ART_FRAME );
	trap_R_RegisterShaderNoMip( ART_BACK0 );
	trap_R_RegisterShaderNoMip( ART_BACK1 );
}


/*
===============
UI_TeamOrdersMenu
===============
*/
void UI_TeamOrdersMenu( void ) {
	UI_TeamOrdersMenu_Init();
	UI_PushMenu( &teamOrdersMenuInfo.menu );
}


/*
===============
UI_TeamOrdersMenu_f
===============
*/
void UI_TeamOrdersMenu_f( void ) {
	uiClientState_t	cs;
	char	info[MAX_INFO_STRING];
	int		team;

	// make sure it's a team game
	trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) );
	teamOrdersMenuInfo.gametype = atoi( Info_ValueForKey( info, "g_gametype" ) );
	if( teamOrdersMenuInfo.gametype < GT_TEAM ) {
		return;
	}

	// not available to spectators
	trap_GetClientState( &cs );
	trap_GetConfigString( CS_PLAYERS + cs.clientNum, info, MAX_INFO_STRING );
	team = atoi( Info_ValueForKey( info, "t" ) );
	if( team == TEAM_SPECTATOR ) {
		return;
	}

	UI_TeamOrdersMenu();
}
