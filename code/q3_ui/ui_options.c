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

Modified by Greg Dolley [1/2/2008]
===========================================================================
*/
/*
=======================================================================

SYSTEM CONFIGURATION MENU

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


#define ART_FRAMEL			"menu/art/frame2_l"
#define ART_FRAMER			"menu/art/frame1_r"
#define ART_BACK0			"menu/art/back_0"
#define ART_BACK1			"menu/art/back_1"

#define ID_GRAPHICS			10
#define ID_DISPLAY			11
#define ID_SOUND			12
#define ID_NETWORK			13
#define ID_BACK				14

#define VERTICAL_SPACING	34

typedef struct {
	menuframework_s	menu;

	menutext_s		banner;
	menubitmap_s	framel;
	menubitmap_s	framer;

	menutext_s		graphics;
	menutext_s		display;
	menutext_s		sound;
	menutext_s		network;
	menubitmap_s	back;
} optionsmenu_t;

static optionsmenu_t	s_options;


/*
=================
Options_Event
=================
*/
static void Options_Event( void* ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_GRAPHICS:
		UI_GraphicsOptionsMenu();
		break;

	case ID_DISPLAY:
		UI_DisplayOptionsMenu();
		break;

	case ID_SOUND:
		UI_SoundOptionsMenu();
		break;

	case ID_NETWORK:
		UI_NetworkOptionsMenu();
		break;

	case ID_BACK:
		UI_PopMenu();
		break;
	}
}


/*
===============
SystemConfig_Cache
===============
*/
void SystemConfig_Cache( void ) {
	trap_R_RegisterShaderNoMip( ART_FRAMEL );
	trap_R_RegisterShaderNoMip( ART_FRAMER );
	trap_R_RegisterShaderNoMip( ART_BACK0 );
	trap_R_RegisterShaderNoMip( ART_BACK1 );
}

/*
===============
Options_MenuInit
===============
*/
void Options_MenuInit( void ) {
	int				y;
	uiClientState_t	cstate;

	memset( &s_options, 0, sizeof(optionsmenu_t) );

	SystemConfig_Cache();
	s_options.menu.wrapAround = qtrue;

	trap_GetClientState( &cstate );
	if ( cstate.connState >= CA_CONNECTED ) {
		s_options.menu.fullscreen = qfalse;
	}
	else {
		s_options.menu.fullscreen = qtrue;
	}

	s_options.banner.generic_mc.type	= MTYPE_BTEXT;
	s_options.banner.generic_mc.flags	= QMF_CENTER_JUSTIFY;
	s_options.banner.generic_mc.x		= 320;
	s_options.banner.generic_mc.y		= 16;
	s_options.banner.string		    = "SYSTEM SETUP";
	s_options.banner.color			= color_white;
	s_options.banner.style			= UI_CENTER;

	s_options.framel.generic_mc.type  = MTYPE_BITMAP;
	s_options.framel.generic_mc.name  = ART_FRAMEL;
	s_options.framel.generic_mc.flags = QMF_INACTIVE;
	s_options.framel.generic_mc.x	   = 8;  
	s_options.framel.generic_mc.y	   = 76;
	s_options.framel.width  	   = 256;
	s_options.framel.height  	   = 334;

	s_options.framer.generic_mc.type  = MTYPE_BITMAP;
	s_options.framer.generic_mc.name  = ART_FRAMER;
	s_options.framer.generic_mc.flags = QMF_INACTIVE;
	s_options.framer.generic_mc.x	   = 376;
	s_options.framer.generic_mc.y	   = 76;
	s_options.framer.width  	   = 256;
	s_options.framer.height  	   = 334;

	y = 168;
	s_options.graphics.generic_mc.type		= MTYPE_PTEXT;
	s_options.graphics.generic_mc.flags	= QMF_CENTER_JUSTIFY|QMF_PULSEIFFOCUS;
	s_options.graphics.generic_mc.callback	= Options_Event;
	s_options.graphics.generic_mc.id		= ID_GRAPHICS;
	s_options.graphics.generic_mc.x		= 320;
	s_options.graphics.generic_mc.y		= y;
	s_options.graphics.string			= "GRAPHICS";
	s_options.graphics.color			= color_red;
	s_options.graphics.style			= UI_CENTER;

	y += VERTICAL_SPACING;
	s_options.display.generic_mc.type		= MTYPE_PTEXT;
	s_options.display.generic_mc.flags		= QMF_CENTER_JUSTIFY|QMF_PULSEIFFOCUS;
	s_options.display.generic_mc.callback	= Options_Event;
	s_options.display.generic_mc.id		= ID_DISPLAY;
	s_options.display.generic_mc.x			= 320;
	s_options.display.generic_mc.y			= y;
	s_options.display.string			= "DISPLAY";
	s_options.display.color				= color_red;
	s_options.display.style				= UI_CENTER;

	y += VERTICAL_SPACING;
	s_options.sound.generic_mc.type		= MTYPE_PTEXT;
	s_options.sound.generic_mc.flags		= QMF_CENTER_JUSTIFY|QMF_PULSEIFFOCUS;
	s_options.sound.generic_mc.callback	= Options_Event;
	s_options.sound.generic_mc.id			= ID_SOUND;
	s_options.sound.generic_mc.x			= 320;
	s_options.sound.generic_mc.y			= y;
	s_options.sound.string				= "SOUND";
	s_options.sound.color				= color_red;
	s_options.sound.style				= UI_CENTER;

	y += VERTICAL_SPACING;
	s_options.network.generic_mc.type		= MTYPE_PTEXT;
	s_options.network.generic_mc.flags		= QMF_CENTER_JUSTIFY|QMF_PULSEIFFOCUS;
	s_options.network.generic_mc.callback	= Options_Event;
	s_options.network.generic_mc.id		= ID_NETWORK;
	s_options.network.generic_mc.x			= 320;
	s_options.network.generic_mc.y			= y;
	s_options.network.string			= "NETWORK";
	s_options.network.color				= color_red;
	s_options.network.style				= UI_CENTER;

	s_options.back.generic_mc.type	    = MTYPE_BITMAP;
	s_options.back.generic_mc.name     = ART_BACK0;
	s_options.back.generic_mc.flags    = QMF_LEFT_JUSTIFY|QMF_PULSEIFFOCUS;
	s_options.back.generic_mc.callback = Options_Event;
	s_options.back.generic_mc.id	    = ID_BACK;
	s_options.back.generic_mc.x		= 0;
	s_options.back.generic_mc.y		= 480-64;
	s_options.back.width  		    = 128;
	s_options.back.height  		    = 64;
	s_options.back.focuspic         = ART_BACK1;

	Menu_AddItem( &s_options.menu, ( void * ) &s_options.banner );
	Menu_AddItem( &s_options.menu, ( void * ) &s_options.framel );
	Menu_AddItem( &s_options.menu, ( void * ) &s_options.framer );
	Menu_AddItem( &s_options.menu, ( void * ) &s_options.graphics );
	Menu_AddItem( &s_options.menu, ( void * ) &s_options.display );
	Menu_AddItem( &s_options.menu, ( void * ) &s_options.sound );
	Menu_AddItem( &s_options.menu, ( void * ) &s_options.network );
	Menu_AddItem( &s_options.menu, ( void * ) &s_options.back );
}


/*
===============
UI_SystemConfigMenu
===============
*/
void UI_SystemConfigMenu( void ) {
	Options_MenuInit();
	UI_PushMenu ( &s_options.menu );
}
