data
align 4
LABELV gameCvarTable
address g_cheats
address $53
address $54
byte 4 0
byte 4 0
byte 4 0
skip 4
byte 4 0
address $55
address $56
byte 4 68
byte 4 0
byte 4 0
skip 4
byte 4 0
address $57
address $58
byte 4 64
byte 4 0
byte 4 0
skip 4
address g_restarted
address $59
address $60
byte 4 64
byte 4 0
byte 4 0
skip 4
byte 4 0
address $61
address $54
byte 4 68
byte 4 0
byte 4 0
skip 4
address g_gametype
address $62
address $60
byte 4 38
byte 4 0
byte 4 0
skip 4
address g_maxclients
address $63
address $64
byte 4 37
byte 4 0
byte 4 0
skip 4
address g_maxGameClients
address $65
address $60
byte 4 37
byte 4 0
byte 4 0
skip 4
address g_dmflags
address $66
address $60
byte 4 5
byte 4 0
byte 4 1
skip 4
address g_fraglimit
address $67
address $68
byte 4 1029
byte 4 0
byte 4 1
skip 4
address g_timelimit
address $69
address $60
byte 4 1029
byte 4 0
byte 4 1
skip 4
address g_capturelimit
address $70
address $64
byte 4 1029
byte 4 0
byte 4 1
skip 4
address g_synchronousClients
address $71
address $60
byte 4 8
byte 4 0
byte 4 0
skip 4
address g_friendlyFire
address $72
address $60
byte 4 1
byte 4 0
byte 4 1
skip 4
address g_teamAutoJoin
address $73
address $60
byte 4 1
skip 12
address g_teamForceBalance
address $74
address $60
byte 4 1
skip 12
address g_warmup
address $75
address $68
byte 4 1
byte 4 0
byte 4 1
skip 4
address g_doWarmup
address $76
address $60
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_log
address $77
address $78
byte 4 1
byte 4 0
byte 4 0
skip 4
address g_logSync
address $79
address $60
byte 4 1
byte 4 0
byte 4 0
skip 4
address g_password
address $80
address $54
byte 4 2
byte 4 0
byte 4 0
skip 4
address g_banIPs
address $81
address $54
byte 4 1
byte 4 0
byte 4 0
skip 4
address g_filterBan
address $82
address $83
byte 4 1
byte 4 0
byte 4 0
skip 4
address g_needpass
address $84
address $60
byte 4 68
byte 4 0
byte 4 0
skip 4
address g_dedicated
address $85
address $60
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_speed
address $86
address $87
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_gravity
address $88
address $89
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_knockback
address $90
address $91
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_quadfactor
address $92
address $93
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_weaponRespawn
address $94
address $95
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_weaponTeamRespawn
address $96
address $97
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_forcerespawn
address $98
address $68
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_inactivity
address $99
address $60
byte 4 0
byte 4 0
byte 4 1
skip 4
address g_debugMove
address $100
address $60
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_debugDamage
address $101
address $60
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_debugAlloc
address $102
address $60
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_motd
address $103
address $54
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_blood
address $104
address $83
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_podiumDist
address $105
address $106
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_podiumDrop
address $107
address $108
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_allowVote
address $109
address $83
byte 4 1
byte 4 0
byte 4 0
skip 4
address g_listEntity
address $110
address $60
byte 4 0
byte 4 0
byte 4 0
skip 4
address g_smoothClients
address $111
address $83
byte 4 0
byte 4 0
byte 4 0
skip 4
address pmove_fixed
address $112
address $60
byte 4 8
byte 4 0
byte 4 0
skip 4
address pmove_msec
address $113
address $64
byte 4 8
byte 4 0
byte 4 0
skip 4
address g_rankings
address $114
address $60
byte 4 0
byte 4 0
byte 4 0
skip 4
align 4
LABELV gameCvarTableSize
byte 4 46
export vmMain
code
proc vmMain 16 12
file "../g_main.c"
line 205
;1:/*
;2:===========================================================================
;3:Copyright (C) 1999-2005 Id Software, Inc.
;4:
;5:This file is part of Quake III Arena source code.
;6:
;7:Quake III Arena source code is free software; you can redistribute it
;8:and/or modify it under the terms of the GNU General Public License as
;9:published by the Free Software Foundation; either version 2 of the License,
;10:or (at your option) any later version.
;11:
;12:Quake III Arena source code is distributed in the hope that it will be
;13:useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
;14:MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;15:GNU General Public License for more details.
;16:
;17:You should have received a copy of the GNU General Public License
;18:along with Foobar; if not, write to the Free Software
;19:Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
;20:
;21:Modified by Greg Dolley [1/1/2008]
;22:===========================================================================
;23:*/
;24://
;25:
;26:#include "g_local.h"
;27:
;28:level_locals_t	level;
;29:
;30:typedef struct {
;31:	vmCvar_t	*vmCvar;
;32:	char		*cvarName;
;33:	char		*defaultString;
;34:	int			cvarFlags;
;35:	int			modificationCount;  // for tracking changes
;36:	qboolean	trackChange;	    // track this variable, and announce if changed
;37:  qboolean teamShader;        // track and if changed, update shader state
;38:} cvarTable_t;
;39:
;40:gentity_t		g_entities[MAX_GENTITIES];
;41:gclient_t		g_clients[MAX_CLIENTS];
;42:
;43:vmCvar_t	g_gametype;
;44:vmCvar_t	g_dmflags;
;45:vmCvar_t	g_fraglimit;
;46:vmCvar_t	g_timelimit;
;47:vmCvar_t	g_capturelimit;
;48:vmCvar_t	g_friendlyFire;
;49:vmCvar_t	g_password;
;50:vmCvar_t	g_needpass;
;51:vmCvar_t	g_maxclients;
;52:vmCvar_t	g_maxGameClients;
;53:vmCvar_t	g_dedicated;
;54:vmCvar_t	g_speed;
;55:vmCvar_t	g_gravity;
;56:vmCvar_t	g_cheats;
;57:vmCvar_t	g_knockback;
;58:vmCvar_t	g_quadfactor;
;59:vmCvar_t	g_forcerespawn;
;60:vmCvar_t	g_inactivity;
;61:vmCvar_t	g_debugMove;
;62:vmCvar_t	g_debugDamage;
;63:vmCvar_t	g_debugAlloc;
;64:vmCvar_t	g_weaponRespawn;
;65:vmCvar_t	g_weaponTeamRespawn;
;66:vmCvar_t	g_motd;
;67:vmCvar_t	g_synchronousClients;
;68:vmCvar_t	g_warmup;
;69:vmCvar_t	g_doWarmup;
;70:vmCvar_t	g_restarted;
;71:vmCvar_t	g_log;
;72:vmCvar_t	g_logSync;
;73:vmCvar_t	g_blood;
;74:vmCvar_t	g_podiumDist;
;75:vmCvar_t	g_podiumDrop;
;76:vmCvar_t	g_allowVote;
;77:vmCvar_t	g_teamAutoJoin;
;78:vmCvar_t	g_teamForceBalance;
;79:vmCvar_t	g_banIPs;
;80:vmCvar_t	g_filterBan;
;81:vmCvar_t	g_smoothClients;
;82:vmCvar_t	pmove_fixed;
;83:vmCvar_t	pmove_msec;
;84:vmCvar_t	g_rankings;
;85:vmCvar_t	g_listEntity;
;86:#ifdef MISSIONPACK
;87:vmCvar_t	g_obeliskHealth;
;88:vmCvar_t	g_obeliskRegenPeriod;
;89:vmCvar_t	g_obeliskRegenAmount;
;90:vmCvar_t	g_obeliskRespawnDelay;
;91:vmCvar_t	g_cubeTimeout;
;92:vmCvar_t	g_redteam;
;93:vmCvar_t	g_blueteam;
;94:vmCvar_t	g_singlePlayer;
;95:vmCvar_t	g_enableDust;
;96:vmCvar_t	g_enableBreath;
;97:vmCvar_t	g_proxMineTimeout;
;98:#endif
;99:
;100:// bk001129 - made static to avoid aliasing
;101:static cvarTable_t		gameCvarTable[] = {
;102:	// don't override the cheat state set by the system
;103:	{ &g_cheats, "sv_cheats", "", 0, 0, qfalse },
;104:
;105:	// noset vars
;106:	{ NULL, "gamename", GAMEVERSION , CVAR_SERVERINFO | CVAR_ROM, 0, qfalse  },
;107:	{ NULL, "gamedate", __DATE__ , CVAR_ROM, 0, qfalse  },
;108:	{ &g_restarted, "g_restarted", "0", CVAR_ROM, 0, qfalse  },
;109:	{ NULL, "sv_mapname", "", CVAR_SERVERINFO | CVAR_ROM, 0, qfalse  },
;110:
;111:	// latched vars
;112:	{ &g_gametype, "g_gametype", "0", CVAR_SERVERINFO | CVAR_USERINFO | CVAR_LATCH, 0, qfalse  },
;113:
;114:	{ &g_maxclients, "sv_maxclients", "8", CVAR_SERVERINFO | CVAR_LATCH | CVAR_ARCHIVE, 0, qfalse  },
;115:	{ &g_maxGameClients, "g_maxGameClients", "0", CVAR_SERVERINFO | CVAR_LATCH | CVAR_ARCHIVE, 0, qfalse  },
;116:
;117:	// change anytime vars
;118:	{ &g_dmflags, "dmflags", "0", CVAR_SERVERINFO | CVAR_ARCHIVE, 0, qtrue  },
;119:	{ &g_fraglimit, "fraglimit", "20", CVAR_SERVERINFO | CVAR_ARCHIVE | CVAR_NORESTART, 0, qtrue },
;120:	{ &g_timelimit, "timelimit", "0", CVAR_SERVERINFO | CVAR_ARCHIVE | CVAR_NORESTART, 0, qtrue },
;121:	{ &g_capturelimit, "capturelimit", "8", CVAR_SERVERINFO | CVAR_ARCHIVE | CVAR_NORESTART, 0, qtrue },
;122:
;123:	{ &g_synchronousClients, "g_synchronousClients", "0", CVAR_SYSTEMINFO, 0, qfalse  },
;124:
;125:	{ &g_friendlyFire, "g_friendlyFire", "0", CVAR_ARCHIVE, 0, qtrue  },
;126:
;127:	{ &g_teamAutoJoin, "g_teamAutoJoin", "0", CVAR_ARCHIVE  },
;128:	{ &g_teamForceBalance, "g_teamForceBalance", "0", CVAR_ARCHIVE  },
;129:
;130:	{ &g_warmup, "g_warmup", "20", CVAR_ARCHIVE, 0, qtrue  },
;131:	{ &g_doWarmup, "g_doWarmup", "0", 0, 0, qtrue  },
;132:	{ &g_log, "g_log", "games.log", CVAR_ARCHIVE, 0, qfalse  },
;133:	{ &g_logSync, "g_logSync", "0", CVAR_ARCHIVE, 0, qfalse  },
;134:
;135:	{ &g_password, "g_password", "", CVAR_USERINFO, 0, qfalse  },
;136:
;137:	{ &g_banIPs, "g_banIPs", "", CVAR_ARCHIVE, 0, qfalse  },
;138:	{ &g_filterBan, "g_filterBan", "1", CVAR_ARCHIVE, 0, qfalse  },
;139:
;140:	{ &g_needpass, "g_needpass", "0", CVAR_SERVERINFO | CVAR_ROM, 0, qfalse },
;141:
;142:	{ &g_dedicated, "dedicated", "0", 0, 0, qfalse  },
;143:
;144:	{ &g_speed, "g_speed", "320", 0, 0, qtrue  },
;145:	{ &g_gravity, "g_gravity", "800", 0, 0, qtrue  },
;146:	{ &g_knockback, "g_knockback", "1000", 0, 0, qtrue  },
;147:	{ &g_quadfactor, "g_quadfactor", "3", 0, 0, qtrue  },
;148:	{ &g_weaponRespawn, "g_weaponrespawn", "5", 0, 0, qtrue  },
;149:	{ &g_weaponTeamRespawn, "g_weaponTeamRespawn", "30", 0, 0, qtrue },
;150:	{ &g_forcerespawn, "g_forcerespawn", "20", 0, 0, qtrue },
;151:	{ &g_inactivity, "g_inactivity", "0", 0, 0, qtrue },
;152:	{ &g_debugMove, "g_debugMove", "0", 0, 0, qfalse },
;153:	{ &g_debugDamage, "g_debugDamage", "0", 0, 0, qfalse },
;154:	{ &g_debugAlloc, "g_debugAlloc", "0", 0, 0, qfalse },
;155:	{ &g_motd, "g_motd", "", 0, 0, qfalse },
;156:	{ &g_blood, "com_blood", "1", 0, 0, qfalse },
;157:
;158:	{ &g_podiumDist, "g_podiumDist", "80", 0, 0, qfalse },
;159:	{ &g_podiumDrop, "g_podiumDrop", "70", 0, 0, qfalse },
;160:
;161:	{ &g_allowVote, "g_allowVote", "1", CVAR_ARCHIVE, 0, qfalse },
;162:	{ &g_listEntity, "g_listEntity", "0", 0, 0, qfalse },
;163:
;164:#ifdef MISSIONPACK
;165:	{ &g_obeliskHealth, "g_obeliskHealth", "2500", 0, 0, qfalse },
;166:	{ &g_obeliskRegenPeriod, "g_obeliskRegenPeriod", "1", 0, 0, qfalse },
;167:	{ &g_obeliskRegenAmount, "g_obeliskRegenAmount", "15", 0, 0, qfalse },
;168:	{ &g_obeliskRespawnDelay, "g_obeliskRespawnDelay", "10", CVAR_SERVERINFO, 0, qfalse },
;169:
;170:	{ &g_cubeTimeout, "g_cubeTimeout", "30", 0, 0, qfalse },
;171:	{ &g_redteam, "g_redteam", "Stroggs", CVAR_ARCHIVE | CVAR_SERVERINFO | CVAR_USERINFO , 0, qtrue, qtrue },
;172:	{ &g_blueteam, "g_blueteam", "Pagans", CVAR_ARCHIVE | CVAR_SERVERINFO | CVAR_USERINFO , 0, qtrue, qtrue  },
;173:	{ &g_singlePlayer, "ui_singlePlayerActive", "", 0, 0, qfalse, qfalse  },
;174:
;175:	{ &g_enableDust, "g_enableDust", "0", CVAR_SERVERINFO, 0, qtrue, qfalse },
;176:	{ &g_enableBreath, "g_enableBreath", "0", CVAR_SERVERINFO, 0, qtrue, qfalse },
;177:	{ &g_proxMineTimeout, "g_proxMineTimeout", "20000", 0, 0, qfalse },
;178:#endif
;179:	{ &g_smoothClients, "g_smoothClients", "1", 0, 0, qfalse},
;180:	{ &pmove_fixed, "pmove_fixed", "0", CVAR_SYSTEMINFO, 0, qfalse},
;181:	{ &pmove_msec, "pmove_msec", "8", CVAR_SYSTEMINFO, 0, qfalse},
;182:
;183:	{ &g_rankings, "g_rankings", "0", 0, 0, qfalse}
;184:
;185:};
;186:
;187:// bk001129 - made static to avoid aliasing
;188:static int gameCvarTableSize = sizeof( gameCvarTable ) / sizeof( gameCvarTable[0] );
;189:
;190:
;191:void G_InitGame( int levelTime, int randomSeed, int restart );
;192:void G_RunFrame( int levelTime );
;193:void G_ShutdownGame( int restart );
;194:void CheckExitRules( void );
;195:
;196:
;197:/*
;198:================
;199:vmMain
;200:
;201:This is the only way control passes into the module.
;202:This must be the very first function compiled into the .q3vm file
;203:================
;204:*/
;205:int vmMain( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11  ) {
line 206
;206:	switch ( command ) {
ADDRLP4 0
ADDRFP4 0
INDIRI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
LTI4 $116
ADDRLP4 0
INDIRI4
CNSTI4 10
GTI4 $116
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $129
ADDP4
INDIRP4
JUMPV
lit
align 4
LABELV $129
address $118
address $119
address $120
address $124
address $122
address $123
address $125
address $121
address $126
address $127
address $128
code
LABELV $118
line 208
;207:	case GAME_INIT:
;208:		G_InitGame( arg0, arg1, arg2 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 12
INDIRI4
ARGI4
ADDRGP4 G_InitGame
CALLV
pop
line 209
;209:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $119
line 211
;210:	case GAME_SHUTDOWN:
;211:		G_ShutdownGame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 G_ShutdownGame
CALLV
pop
line 212
;212:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $120
line 214
;213:	case GAME_CLIENT_CONNECT:
;214:		return (int)ClientConnect( arg0, (qboolean)arg1, (qboolean)arg2 ); // ***GREGS_VC9_PORT_MOD*** -- added typecast(s)
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 12
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 ClientConnect
CALLP4
ASGNP4
ADDRLP4 4
INDIRP4
CVPU4 4
CVUI4 4
RETI4
ADDRGP4 $115
JUMPV
LABELV $121
line 216
;215:	case GAME_CLIENT_THINK:
;216:		ClientThink( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientThink
CALLV
pop
line 217
;217:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $122
line 219
;218:	case GAME_CLIENT_USERINFO_CHANGED:
;219:		ClientUserinfoChanged( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLV
pop
line 220
;220:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $123
line 222
;221:	case GAME_CLIENT_DISCONNECT:
;222:		ClientDisconnect( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientDisconnect
CALLV
pop
line 223
;223:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $124
line 225
;224:	case GAME_CLIENT_BEGIN:
;225:		ClientBegin( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientBegin
CALLV
pop
line 226
;226:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $125
line 228
;227:	case GAME_CLIENT_COMMAND:
;228:		ClientCommand( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientCommand
CALLV
pop
line 229
;229:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $126
line 231
;230:	case GAME_RUN_FRAME:
;231:		G_RunFrame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 G_RunFrame
CALLV
pop
line 232
;232:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $115
JUMPV
LABELV $127
line 234
;233:	case GAME_CONSOLE_COMMAND:
;234:		return ConsoleCommand();
ADDRLP4 8
ADDRGP4 ConsoleCommand
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
RETI4
ADDRGP4 $115
JUMPV
LABELV $128
line 236
;235:	case BOTAI_START_FRAME:
;236:		return BotAIStartFrame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 12
ADDRGP4 BotAIStartFrame
CALLI4
ASGNI4
ADDRLP4 12
INDIRI4
RETI4
ADDRGP4 $115
JUMPV
LABELV $116
line 239
;237:	}
;238:
;239:	return -1;
CNSTI4 -1
RETI4
LABELV $115
endproc vmMain 16 12
export G_Printf
proc G_Printf 1028 12
line 243
;240:}
;241:
;242:
;243:void QDECL G_Printf( const char *fmt, ... ) {
line 247
;244:	va_list		argptr;
;245:	char		text[1024];
;246:
;247:	va_start (argptr, fmt);
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 248
;248:	vsprintf (text, fmt, argptr);
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 vsprintf
CALLI4
pop
line 249
;249:	va_end (argptr);
ADDRLP4 0
CNSTP4 0
ASGNP4
line 251
;250:
;251:	trap_Printf( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Printf
CALLV
pop
line 252
;252:}
LABELV $130
endproc G_Printf 1028 12
export G_Error
proc G_Error 1028 12
line 254
;253:
;254:void QDECL G_Error( const char *fmt, ... ) {
line 258
;255:	va_list		argptr;
;256:	char		text[1024];
;257:
;258:	va_start (argptr, fmt);
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 259
;259:	vsprintf (text, fmt, argptr);
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 vsprintf
CALLI4
pop
line 260
;260:	va_end (argptr);
ADDRLP4 0
CNSTP4 0
ASGNP4
line 262
;261:
;262:	trap_Error( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Error
CALLV
pop
line 263
;263:}
LABELV $132
endproc G_Error 1028 12
export G_FindTeams
proc G_FindTeams 48 12
line 276
;264:
;265:/*
;266:================
;267:G_FindTeams
;268:
;269:Chain together all entities with a matching team field.
;270:Entity teams are used for item groups and multi-entity mover groups.
;271:
;272:All but the first will have the FL_TEAMSLAVE flag set and teammaster field set
;273:All but the last will have the teamchain field set to the next one
;274:================
;275:*/
;276:void G_FindTeams( void ) {
line 281
;277:	gentity_t	*e, *e2;
;278:	int		i, j;
;279:	int		c, c2;
;280:
;281:	c = 0;
ADDRLP4 20
CNSTI4 0
ASGNI4
line 282
;282:	c2 = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 283
;283:	for ( i=1, e=g_entities+i ; i < level.num_entities ; i++,e++ ){
ADDRLP4 16
CNSTI4 1
ASGNI4
ADDRLP4 4
CNSTI4 808
ADDRLP4 16
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
ADDRGP4 $138
JUMPV
LABELV $135
line 284
;284:		if (!e->inuse)
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $140
line 285
;285:			continue;
ADDRGP4 $136
JUMPV
LABELV $140
line 286
;286:		if (!e->team)
ADDRLP4 4
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $142
line 287
;287:			continue;
ADDRGP4 $136
JUMPV
LABELV $142
line 288
;288:		if (e->flags & FL_TEAMSLAVE)
ADDRLP4 4
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1024
BANDI4
CNSTI4 0
EQI4 $144
line 289
;289:			continue;
ADDRGP4 $136
JUMPV
LABELV $144
line 290
;290:		e->teammaster = e;
ADDRLP4 4
INDIRP4
CNSTI4 780
ADDP4
ADDRLP4 4
INDIRP4
ASGNP4
line 291
;291:		c++;
ADDRLP4 20
ADDRLP4 20
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 292
;292:		c2++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 293
;293:		for (j=i+1, e2=e+1 ; j < level.num_entities ; j++,e2++)
ADDRLP4 8
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 4
INDIRP4
CNSTI4 808
ADDP4
ASGNP4
ADDRGP4 $149
JUMPV
LABELV $146
line 294
;294:		{
line 295
;295:			if (!e2->inuse)
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $151
line 296
;296:				continue;
ADDRGP4 $147
JUMPV
LABELV $151
line 297
;297:			if (!e2->team)
ADDRLP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $153
line 298
;298:				continue;
ADDRGP4 $147
JUMPV
LABELV $153
line 299
;299:			if (e2->flags & FL_TEAMSLAVE)
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1024
BANDI4
CNSTI4 0
EQI4 $155
line 300
;300:				continue;
ADDRGP4 $147
JUMPV
LABELV $155
line 301
;301:			if (!strcmp(e->team, e2->team))
ADDRLP4 28
CNSTI4 656
ASGNI4
ADDRLP4 4
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
INDIRP4
ARGP4
ADDRLP4 32
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
NEI4 $157
line 302
;302:			{
line 303
;303:				c2++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 304
;304:				e2->teamchain = e->teamchain;
ADDRLP4 36
CNSTI4 776
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 36
INDIRI4
ADDP4
ADDRLP4 4
INDIRP4
ADDRLP4 36
INDIRI4
ADDP4
INDIRP4
ASGNP4
line 305
;305:				e->teamchain = e2;
ADDRLP4 4
INDIRP4
CNSTI4 776
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
line 306
;306:				e2->teammaster = e;
ADDRLP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRLP4 4
INDIRP4
ASGNP4
line 307
;307:				e2->flags |= FL_TEAMSLAVE;
ADDRLP4 40
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1024
BORI4
ASGNI4
line 310
;308:
;309:				// make sure that targets only point at the master
;310:				if ( e2->targetname ) {
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $159
line 311
;311:					e->targetname = e2->targetname;
ADDRLP4 44
CNSTI4 652
ASGNI4
ADDRLP4 4
INDIRP4
ADDRLP4 44
INDIRI4
ADDP4
ADDRLP4 0
INDIRP4
ADDRLP4 44
INDIRI4
ADDP4
INDIRP4
ASGNP4
line 312
;312:					e2->targetname = NULL;
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
CNSTP4 0
ASGNP4
line 313
;313:				}
LABELV $159
line 314
;314:			}
LABELV $157
line 315
;315:		}
LABELV $147
line 293
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
ASGNP4
LABELV $149
ADDRLP4 8
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $146
line 316
;316:	}
LABELV $136
line 283
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
ADDRLP4 4
INDIRP4
CNSTI4 808
ADDP4
ASGNP4
LABELV $138
ADDRLP4 16
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $135
line 318
;317:
;318:	G_Printf ("%i teams with %i entities\n", c, c2);
ADDRGP4 $161
ARGP4
ADDRLP4 20
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 319
;319:}
LABELV $134
endproc G_FindTeams 48 12
export G_RemapTeamShaders
proc G_RemapTeamShaders 0 0
line 321
;320:
;321:void G_RemapTeamShaders() {
line 333
;322:#ifdef MISSIONPACK
;323:	char string[1024];
;324:	float f = level.time * 0.001;
;325:	Com_sprintf( string, sizeof(string), "team_icon/%s_red", g_redteam.string );
;326:	AddRemap("textures/ctf2/redteam01", string, f); 
;327:	AddRemap("textures/ctf2/redteam02", string, f); 
;328:	Com_sprintf( string, sizeof(string), "team_icon/%s_blue", g_blueteam.string );
;329:	AddRemap("textures/ctf2/blueteam01", string, f); 
;330:	AddRemap("textures/ctf2/blueteam02", string, f); 
;331:	trap_SetConfigstring(CS_SHADERSTATE, BuildShaderStateConfig());
;332:#endif
;333:}
LABELV $162
endproc G_RemapTeamShaders 0 0
export G_RegisterCvars
proc G_RegisterCvars 20 16
line 341
;334:
;335:
;336:/*
;337:=================
;338:G_RegisterCvars
;339:=================
;340:*/
;341:void G_RegisterCvars( void ) {
line 344
;342:	int			i;
;343:	cvarTable_t	*cv;
;344:	qboolean remapped = qfalse;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 346
;345:
;346:	for ( i = 0, cv = gameCvarTable ; i < gameCvarTableSize ; i++, cv++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
ADDRGP4 gameCvarTable
ASGNP4
ADDRGP4 $167
JUMPV
LABELV $164
line 347
;347:		trap_Cvar_Register( cv->vmCvar, cv->cvarName,
ADDRLP4 0
INDIRP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 12
ADDP4
INDIRI4
ARGI4
ADDRGP4 trap_Cvar_Register
CALLV
pop
line 349
;348:			cv->defaultString, cv->cvarFlags );
;349:		if ( cv->vmCvar )
ADDRLP4 0
INDIRP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $168
line 350
;350:			cv->modificationCount = cv->vmCvar->modificationCount;
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ASGNI4
LABELV $168
line 352
;351:
;352:		if (cv->teamShader) {
ADDRLP4 0
INDIRP4
CNSTI4 24
ADDP4
INDIRI4
CNSTI4 0
EQI4 $170
line 353
;353:			remapped = qtrue;
ADDRLP4 8
CNSTI4 1
ASGNI4
line 354
;354:		}
LABELV $170
line 355
;355:	}
LABELV $165
line 346
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 28
ADDP4
ASGNP4
LABELV $167
ADDRLP4 4
INDIRI4
ADDRGP4 gameCvarTableSize
INDIRI4
LTI4 $164
line 357
;356:
;357:	if (remapped) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $172
line 358
;358:		G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 359
;359:	}
LABELV $172
line 362
;360:
;361:	// check some things
;362:	if ( g_gametype.integer < 0 || g_gametype.integer >= GT_MAX_GAME_TYPE ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 0
LTI4 $178
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 8
LTI4 $174
LABELV $178
line 363
;363:		G_Printf( "g_gametype %i is out of range, defaulting to 0\n", g_gametype.integer );
ADDRGP4 $179
ARGP4
ADDRGP4 g_gametype+12
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 364
;364:		trap_Cvar_Set( "g_gametype", "0" );
ADDRGP4 $62
ARGP4
ADDRGP4 $60
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 365
;365:	}
LABELV $174
line 367
;366:
;367:	level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+352
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 368
;368:}
LABELV $163
endproc G_RegisterCvars 20 16
export G_UpdateCvars
proc G_UpdateCvars 28 12
line 375
;369:
;370:/*
;371:=================
;372:G_UpdateCvars
;373:=================
;374:*/
;375:void G_UpdateCvars( void ) {
line 378
;376:	int			i;
;377:	cvarTable_t	*cv;
;378:	qboolean remapped = qfalse;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 380
;379:
;380:	for ( i = 0, cv = gameCvarTable ; i < gameCvarTableSize ; i++, cv++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
ADDRGP4 gameCvarTable
ASGNP4
ADDRGP4 $187
JUMPV
LABELV $184
line 381
;381:		if ( cv->vmCvar ) {
ADDRLP4 0
INDIRP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $188
line 382
;382:			trap_Cvar_Update( cv->vmCvar );
ADDRLP4 0
INDIRP4
INDIRP4
ARGP4
ADDRGP4 trap_Cvar_Update
CALLV
pop
line 384
;383:
;384:			if ( cv->modificationCount != cv->vmCvar->modificationCount ) {
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
EQI4 $190
line 385
;385:				cv->modificationCount = cv->vmCvar->modificationCount;
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ASGNI4
line 387
;386:
;387:				if ( cv->trackChange ) {
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
INDIRI4
CNSTI4 0
EQI4 $192
line 388
;388:					trap_SendServerCommand( -1, va("print \"Server: %s changed to %s\n\"", 
ADDRGP4 $194
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 16
ADDP4
ARGP4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 390
;389:						cv->cvarName, cv->vmCvar->string ) );
;390:				}
LABELV $192
line 392
;391:
;392:				if (cv->teamShader) {
ADDRLP4 0
INDIRP4
CNSTI4 24
ADDP4
INDIRI4
CNSTI4 0
EQI4 $195
line 393
;393:					remapped = qtrue;
ADDRLP4 8
CNSTI4 1
ASGNI4
line 394
;394:				}
LABELV $195
line 395
;395:			}
LABELV $190
line 396
;396:		}
LABELV $188
line 397
;397:	}
LABELV $185
line 380
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 28
ADDP4
ASGNP4
LABELV $187
ADDRLP4 4
INDIRI4
ADDRGP4 gameCvarTableSize
INDIRI4
LTI4 $184
line 399
;398:
;399:	if (remapped) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $197
line 400
;400:		G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 401
;401:	}
LABELV $197
line 402
;402:}
LABELV $183
endproc G_UpdateCvars 28 12
export G_InitGame
proc G_InitGame 1032 20
line 410
;403:
;404:/*
;405:============
;406:G_InitGame
;407:
;408:============
;409:*/
;410:void G_InitGame( int levelTime, int randomSeed, int restart ) {
line 413
;411:	int					i;
;412:
;413:	G_Printf ("------- Game Initialization -------\n");
ADDRGP4 $200
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 414
;414:	G_Printf ("gamename: %s\n", GAMEVERSION);
ADDRGP4 $201
ARGP4
ADDRGP4 $56
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 415
;415:	G_Printf ("gamedate: %s\n", __DATE__);
ADDRGP4 $202
ARGP4
ADDRGP4 $58
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 417
;416:
;417:	srand( randomSeed );
ADDRFP4 4
INDIRI4
CVIU4 4
ARGU4
ADDRGP4 srand
CALLV
pop
line 419
;418:
;419:	G_RegisterCvars();
ADDRGP4 G_RegisterCvars
CALLV
pop
line 421
;420:
;421:	G_ProcessIPBans();
ADDRGP4 G_ProcessIPBans
CALLV
pop
line 423
;422:
;423:	G_InitMemory();
ADDRGP4 G_InitMemory
CALLV
pop
line 426
;424:
;425:	// set some level globals
;426:	memset( &level, 0, sizeof( level ) );
ADDRGP4 level
ARGP4
CNSTI4 0
ARGI4
CNSTI4 9212
ARGI4
ADDRGP4 memset
CALLP4
pop
line 427
;427:	level.time = levelTime;
ADDRGP4 level+32
ADDRFP4 0
INDIRI4
ASGNI4
line 428
;428:	level.startTime = levelTime;
ADDRGP4 level+40
ADDRFP4 0
INDIRI4
ASGNI4
line 430
;429:
;430:	level.snd_fry = G_SoundIndex("sound/player/fry.wav");	// FIXME standing in lava / slime
ADDRGP4 $206
ARGP4
ADDRLP4 4
ADDRGP4 G_SoundIndex
CALLI4
ASGNI4
ADDRGP4 level+348
ADDRLP4 4
INDIRI4
ASGNI4
line 432
;431:
;432:	if ( g_gametype.integer != GT_SINGLE_PLAYER && g_log.string[0] ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $207
ADDRGP4 g_log+16
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $207
line 433
;433:		if ( g_logSync.integer ) {
ADDRGP4 g_logSync+12
INDIRI4
CNSTI4 0
EQI4 $211
line 434
;434:			trap_FS_FOpenFile( g_log.string, &level.logFile, FS_APPEND_SYNC );
ADDRGP4 g_log+16
ARGP4
ADDRGP4 level+20
ARGP4
CNSTI4 3
ARGI4
ADDRGP4 trap_FS_FOpenFile
CALLI4
pop
line 435
;435:		} else {
ADDRGP4 $212
JUMPV
LABELV $211
line 436
;436:			trap_FS_FOpenFile( g_log.string, &level.logFile, FS_APPEND );
ADDRGP4 g_log+16
ARGP4
ADDRGP4 level+20
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 trap_FS_FOpenFile
CALLI4
pop
line 437
;437:		}
LABELV $212
line 438
;438:		if ( !level.logFile ) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
NEI4 $218
line 439
;439:			G_Printf( "WARNING: Couldn't open logfile: %s\n", g_log.string );
ADDRGP4 $221
ARGP4
ADDRGP4 g_log+16
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 440
;440:		} else {
ADDRGP4 $208
JUMPV
LABELV $218
line 443
;441:			char	serverinfo[MAX_INFO_STRING];
;442:
;443:			trap_GetServerinfo( serverinfo, sizeof( serverinfo ) );
ADDRLP4 8
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetServerinfo
CALLV
pop
line 445
;444:
;445:			G_LogPrintf("------------------------------------------------------------\n" );
ADDRGP4 $223
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 446
;446:			G_LogPrintf("InitGame: %s\n", serverinfo );
ADDRGP4 $224
ARGP4
ADDRLP4 8
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 447
;447:		}
line 448
;448:	} else {
ADDRGP4 $208
JUMPV
LABELV $207
line 449
;449:		G_Printf( "Not logging to disk.\n" );
ADDRGP4 $225
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 450
;450:	}
LABELV $208
line 452
;451:
;452:	G_InitWorldSession();
ADDRGP4 G_InitWorldSession
CALLV
pop
line 455
;453:
;454:	// initialize all entities for this game
;455:	memset( g_entities, 0, MAX_GENTITIES * sizeof(g_entities[0]) );
ADDRGP4 g_entities
ARGP4
CNSTI4 0
ARGI4
CNSTI4 827392
ARGI4
ADDRGP4 memset
CALLP4
pop
line 456
;456:	level.gentities = g_entities;
ADDRGP4 level+4
ADDRGP4 g_entities
ASGNP4
line 459
;457:
;458:	// initialize all clients for this game
;459:	level.maxclients = g_maxclients.integer;
ADDRGP4 level+24
ADDRGP4 g_maxclients+12
INDIRI4
ASGNI4
line 460
;460:	memset( g_clients, 0, MAX_CLIENTS * sizeof(g_clients[0]) );
ADDRGP4 g_clients
ARGP4
CNSTI4 0
ARGI4
CNSTI4 49664
ARGI4
ADDRGP4 memset
CALLP4
pop
line 461
;461:	level.clients = g_clients;
ADDRGP4 level
ADDRGP4 g_clients
ASGNP4
line 464
;462:
;463:	// set client fields on player ents
;464:	for ( i=0 ; i<level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $232
JUMPV
LABELV $229
line 465
;465:		g_entities[i].client = level.clients + i;
CNSTI4 808
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities+516
ADDP4
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 466
;466:	}
LABELV $230
line 464
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $232
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $229
line 471
;467:
;468:	// always leave room for the max number of clients,
;469:	// even if they aren't all used, so numbers inside that
;470:	// range are NEVER anything but clients
;471:	level.num_entities = MAX_CLIENTS;
ADDRGP4 level+12
CNSTI4 64
ASGNI4
line 474
;472:
;473:	// let the server system know where the entites are
;474:	trap_LocateGameData( level.gentities, level.num_entities, sizeof( gentity_t ), 
ADDRGP4 level+4
INDIRP4
ARGP4
ADDRGP4 level+12
INDIRI4
ARGI4
CNSTI4 808
ARGI4
ADDRGP4 level
INDIRP4
ARGP4
CNSTI4 776
ARGI4
ADDRGP4 trap_LocateGameData
CALLV
pop
line 478
;475:		&level.clients[0].ps, sizeof( level.clients[0] ) );
;476:
;477:	// reserve some spots for dead player bodies
;478:	InitBodyQue();
ADDRGP4 InitBodyQue
CALLV
pop
line 480
;479:
;480:	ClearRegisteredItems();
ADDRGP4 ClearRegisteredItems
CALLV
pop
line 483
;481:
;482:	// parse the key/value pairs and spawn gentities
;483:	G_SpawnEntitiesFromString();
ADDRGP4 G_SpawnEntitiesFromString
CALLV
pop
line 486
;484:
;485:	// general initialization
;486:	G_FindTeams();
ADDRGP4 G_FindTeams
CALLV
pop
line 489
;487:
;488:	// make sure we have flags for CTF, etc
;489:	if( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $238
line 490
;490:		G_CheckTeamItems();
ADDRGP4 G_CheckTeamItems
CALLV
pop
line 491
;491:	}
LABELV $238
line 493
;492:
;493:	SaveRegisteredItems();
ADDRGP4 SaveRegisteredItems
CALLV
pop
line 495
;494:
;495:	G_Printf ("-----------------------------------\n");
ADDRGP4 $241
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 497
;496:
;497:	if( g_gametype.integer == GT_SINGLE_PLAYER || trap_Cvar_VariableIntegerValue( "com_buildScript" ) ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $246
ADDRGP4 $245
ARGP4
ADDRLP4 8
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $242
LABELV $246
line 498
;498:		G_ModelIndex( SP_PODIUM_MODEL );
ADDRGP4 $247
ARGP4
ADDRGP4 G_ModelIndex
CALLI4
pop
line 499
;499:		G_SoundIndex( "sound/player/gurp1.wav" );
ADDRGP4 $248
ARGP4
ADDRGP4 G_SoundIndex
CALLI4
pop
line 500
;500:		G_SoundIndex( "sound/player/gurp2.wav" );
ADDRGP4 $249
ARGP4
ADDRGP4 G_SoundIndex
CALLI4
pop
line 501
;501:	}
LABELV $242
line 503
;502:
;503:	if ( trap_Cvar_VariableIntegerValue( "bot_enable" ) ) {
ADDRGP4 $252
ARGP4
ADDRLP4 12
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $250
line 504
;504:		BotAISetup( restart );
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 BotAISetup
CALLI4
pop
line 505
;505:		BotAILoadMap( restart );
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 BotAILoadMap
CALLI4
pop
line 506
;506:		G_InitBots( (qboolean)restart ); // ***GREGS_VC9_PORT_MOD*** -- added typecast(s)
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 G_InitBots
CALLV
pop
line 507
;507:	}
LABELV $250
line 509
;508:
;509:	G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 511
;510:
;511:}
LABELV $199
endproc G_InitGame 1032 20
export G_ShutdownGame
proc G_ShutdownGame 4 4
line 520
;512:
;513:
;514:
;515:/*
;516:=================
;517:G_ShutdownGame
;518:=================
;519:*/
;520:void G_ShutdownGame( int restart ) {
line 521
;521:	G_Printf ("==== ShutdownGame ====\n");
ADDRGP4 $254
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 523
;522:
;523:	if ( level.logFile ) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
EQI4 $255
line 524
;524:		G_LogPrintf("ShutdownGame:\n" );
ADDRGP4 $258
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 525
;525:		G_LogPrintf("------------------------------------------------------------\n" );
ADDRGP4 $223
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 526
;526:		trap_FS_FCloseFile( level.logFile );
ADDRGP4 level+20
INDIRI4
ARGI4
ADDRGP4 trap_FS_FCloseFile
CALLV
pop
line 527
;527:	}
LABELV $255
line 530
;528:
;529:	// write all the client session data so we can get it back
;530:	G_WriteSessionData();
ADDRGP4 G_WriteSessionData
CALLV
pop
line 532
;531:
;532:	if ( trap_Cvar_VariableIntegerValue( "bot_enable" ) ) {
ADDRGP4 $252
ARGP4
ADDRLP4 0
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $260
line 533
;533:		BotAIShutdown( restart );
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 BotAIShutdown
CALLI4
pop
line 534
;534:	}
LABELV $260
line 535
;535:}
LABELV $253
endproc G_ShutdownGame 4 4
export Com_Error
proc Com_Error 1028 12
line 544
;536:
;537:
;538:
;539://===================================================================
;540:
;541:#ifndef GAME_HARD_LINKED
;542:// this is only here so the functions in q_shared.c and bg_*.c can link
;543:
;544:void QDECL Com_Error ( int level, const char *error, ... ) {
line 548
;545:	va_list		argptr;
;546:	char		text[1024];
;547:
;548:	va_start (argptr, error);
ADDRLP4 0
ADDRFP4 4+4
ASGNP4
line 549
;549:	vsprintf (text, error, argptr);
ADDRLP4 4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 vsprintf
CALLI4
pop
line 550
;550:	va_end (argptr);
ADDRLP4 0
CNSTP4 0
ASGNP4
line 552
;551:
;552:	G_Error( "%s", text);
ADDRGP4 $264
ARGP4
ADDRLP4 4
ARGP4
ADDRGP4 G_Error
CALLV
pop
line 553
;553:}
LABELV $262
endproc Com_Error 1028 12
export Com_Printf
proc Com_Printf 1028 12
line 555
;554:
;555:void QDECL Com_Printf( const char *msg, ... ) {
line 559
;556:	va_list		argptr;
;557:	char		text[1024];
;558:
;559:	va_start (argptr, msg);
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 560
;560:	vsprintf (text, msg, argptr);
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 vsprintf
CALLI4
pop
line 561
;561:	va_end (argptr);
ADDRLP4 0
CNSTP4 0
ASGNP4
line 563
;562:
;563:	G_Printf ("%s", text);
ADDRGP4 $264
ARGP4
ADDRLP4 4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 564
;564:}
LABELV $265
endproc Com_Printf 1028 12
export AddTournamentPlayer
proc AddTournamentPlayer 24 8
line 584
;565:
;566:#endif
;567:
;568:/*
;569:========================================================================
;570:
;571:PLAYER COUNTING / SCORE SORTING
;572:
;573:========================================================================
;574:*/
;575:
;576:/*
;577:=============
;578:AddTournamentPlayer
;579:
;580:If there are less than two tournament players, put a
;581:spectator in the game and restart
;582:=============
;583:*/
;584:void AddTournamentPlayer( void ) {
line 589
;585:	int			i;
;586:	gclient_t	*client;
;587:	gclient_t	*nextInLine;
;588:
;589:	if ( level.numPlayingClients >= 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
LTI4 $268
line 590
;590:		return;
ADDRGP4 $267
JUMPV
LABELV $268
line 594
;591:	}
;592:
;593:	// never change during intermission
;594:	if ( level.intermissiontime ) {
ADDRGP4 level+9128
INDIRI4
CNSTI4 0
EQI4 $271
line 595
;595:		return;
ADDRGP4 $267
JUMPV
LABELV $271
line 598
;596:	}
;597:
;598:	nextInLine = NULL;
ADDRLP4 8
CNSTP4 0
ASGNP4
line 600
;599:
;600:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $277
JUMPV
LABELV $274
line 601
;601:		client = &level.clients[i];
ADDRLP4 0
CNSTI4 776
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 602
;602:		if ( client->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $279
line 603
;603:			continue;
ADDRGP4 $275
JUMPV
LABELV $279
line 605
;604:		}
;605:		if ( client->sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 3
EQI4 $281
line 606
;606:			continue;
ADDRGP4 $275
JUMPV
LABELV $281
line 609
;607:		}
;608:		// never select the dedicated follow or scoreboard clients
;609:		if ( client->sess.spectatorState == SPECTATOR_SCOREBOARD || 
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
EQI4 $285
ADDRLP4 0
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
CNSTI4 0
GEI4 $283
LABELV $285
line 610
;610:			client->sess.spectatorClient < 0  ) {
line 611
;611:			continue;
ADDRGP4 $275
JUMPV
LABELV $283
line 614
;612:		}
;613:
;614:		if ( !nextInLine || client->sess.spectatorTime < nextInLine->sess.spectatorTime ) {
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $288
ADDRLP4 20
CNSTI4 620
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 20
INDIRI4
ADDP4
INDIRI4
ADDRLP4 8
INDIRP4
ADDRLP4 20
INDIRI4
ADDP4
INDIRI4
GEI4 $286
LABELV $288
line 615
;615:			nextInLine = client;
ADDRLP4 8
ADDRLP4 0
INDIRP4
ASGNP4
line 616
;616:		}
LABELV $286
line 617
;617:	}
LABELV $275
line 600
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $277
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $274
line 619
;618:
;619:	if ( !nextInLine ) {
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $289
line 620
;620:		return;
ADDRGP4 $267
JUMPV
LABELV $289
line 623
;621:	}
;622:
;623:	level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 626
;624:
;625:	// set them to free-for-all team
;626:	SetTeam( &g_entities[ nextInLine - level.clients ], "f" );
CNSTI4 808
ADDRLP4 8
INDIRP4
CVPU4 4
ADDRGP4 level
INDIRP4
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 776
DIVI4
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $292
ARGP4
ADDRGP4 SetTeam
CALLV
pop
line 627
;627:}
LABELV $267
endproc AddTournamentPlayer 24 8
export RemoveTournamentLoser
proc RemoveTournamentLoser 4 8
line 636
;628:
;629:/*
;630:=======================
;631:RemoveTournamentLoser
;632:
;633:Make the loser a spectator at the back of the line
;634:=======================
;635:*/
;636:void RemoveTournamentLoser( void ) {
line 639
;637:	int			clientNum;
;638:
;639:	if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
EQI4 $294
line 640
;640:		return;
ADDRGP4 $293
JUMPV
LABELV $294
line 643
;641:	}
;642:
;643:	clientNum = level.sortedClients[1];
ADDRLP4 0
ADDRGP4 level+84+4
INDIRI4
ASGNI4
line 645
;644:
;645:	if ( level.clients[ clientNum ].pers.connected != CON_CONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $299
line 646
;646:		return;
ADDRGP4 $293
JUMPV
LABELV $299
line 650
;647:	}
;648:
;649:	// make them a spectator
;650:	SetTeam( &g_entities[ clientNum ], "s" );
CNSTI4 808
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $301
ARGP4
ADDRGP4 SetTeam
CALLV
pop
line 651
;651:}
LABELV $293
endproc RemoveTournamentLoser 4 8
export RemoveTournamentWinner
proc RemoveTournamentWinner 4 8
line 658
;652:
;653:/*
;654:=======================
;655:RemoveTournamentWinner
;656:=======================
;657:*/
;658:void RemoveTournamentWinner( void ) {
line 661
;659:	int			clientNum;
;660:
;661:	if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
EQI4 $303
line 662
;662:		return;
ADDRGP4 $302
JUMPV
LABELV $303
line 665
;663:	}
;664:
;665:	clientNum = level.sortedClients[0];
ADDRLP4 0
ADDRGP4 level+84
INDIRI4
ASGNI4
line 667
;666:
;667:	if ( level.clients[ clientNum ].pers.connected != CON_CONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $307
line 668
;668:		return;
ADDRGP4 $302
JUMPV
LABELV $307
line 672
;669:	}
;670:
;671:	// make them a spectator
;672:	SetTeam( &g_entities[ clientNum ], "s" );
CNSTI4 808
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $301
ARGP4
ADDRGP4 SetTeam
CALLV
pop
line 673
;673:}
LABELV $302
endproc RemoveTournamentWinner 4 8
export AdjustTournamentScores
proc AdjustTournamentScores 8 4
line 680
;674:
;675:/*
;676:=======================
;677:AdjustTournamentScores
;678:=======================
;679:*/
;680:void AdjustTournamentScores( void ) {
line 683
;681:	int			clientNum;
;682:
;683:	clientNum = level.sortedClients[0];
ADDRLP4 0
ADDRGP4 level+84
INDIRI4
ASGNI4
line 684
;684:	if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $311
line 685
;685:		level.clients[ clientNum ].sess.wins++;
ADDRLP4 4
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 632
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 686
;686:		ClientUserinfoChanged( clientNum );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLV
pop
line 687
;687:	}
LABELV $311
line 689
;688:
;689:	clientNum = level.sortedClients[1];
ADDRLP4 0
ADDRGP4 level+84+4
INDIRI4
ASGNI4
line 690
;690:	if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $315
line 691
;691:		level.clients[ clientNum ].sess.losses++;
ADDRLP4 4
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 692
;692:		ClientUserinfoChanged( clientNum );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLV
pop
line 693
;693:	}
LABELV $315
line 695
;694:
;695:}
LABELV $309
endproc AdjustTournamentScores 8 4
export SortRanks
proc SortRanks 32 0
line 703
;696:
;697:/*
;698:=============
;699:SortRanks
;700:
;701:=============
;702:*/
;703:int QDECL SortRanks( const void *a, const void *b ) {
line 706
;704:	gclient_t	*ca, *cb;
;705:
;706:	ca = &level.clients[*(int *)a];
ADDRLP4 0
CNSTI4 776
ADDRFP4 0
INDIRP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 707
;707:	cb = &level.clients[*(int *)b];
ADDRLP4 4
CNSTI4 776
ADDRFP4 4
INDIRP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 710
;708:
;709:	// sort special clients last
;710:	if ( ca->sess.spectatorState == SPECTATOR_SCOREBOARD || ca->sess.spectatorClient < 0 ) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
EQI4 $320
ADDRLP4 0
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
CNSTI4 0
GEI4 $318
LABELV $320
line 711
;711:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $317
JUMPV
LABELV $318
line 713
;712:	}
;713:	if ( cb->sess.spectatorState == SPECTATOR_SCOREBOARD || cb->sess.spectatorClient < 0  ) {
ADDRLP4 4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
EQI4 $323
ADDRLP4 4
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
CNSTI4 0
GEI4 $321
LABELV $323
line 714
;714:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $317
JUMPV
LABELV $321
line 718
;715:	}
;716:
;717:	// then connecting clients
;718:	if ( ca->pers.connected == CON_CONNECTING ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $324
line 719
;719:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $317
JUMPV
LABELV $324
line 721
;720:	}
;721:	if ( cb->pers.connected == CON_CONNECTING ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $326
line 722
;722:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $317
JUMPV
LABELV $326
line 727
;723:	}
;724:
;725:
;726:	// then spectators
;727:	if ( ca->sess.sessionTeam == TEAM_SPECTATOR && cb->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 16
CNSTI4 616
ASGNI4
ADDRLP4 20
CNSTI4 3
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 16
INDIRI4
ADDP4
INDIRI4
ADDRLP4 20
INDIRI4
NEI4 $328
ADDRLP4 4
INDIRP4
ADDRLP4 16
INDIRI4
ADDP4
INDIRI4
ADDRLP4 20
INDIRI4
NEI4 $328
line 728
;728:		if ( ca->sess.spectatorTime < cb->sess.spectatorTime ) {
ADDRLP4 24
CNSTI4 620
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 24
INDIRI4
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
ADDRLP4 24
INDIRI4
ADDP4
INDIRI4
GEI4 $330
line 729
;729:			return -1;
CNSTI4 -1
RETI4
ADDRGP4 $317
JUMPV
LABELV $330
line 731
;730:		}
;731:		if ( ca->sess.spectatorTime > cb->sess.spectatorTime ) {
ADDRLP4 28
CNSTI4 620
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
INDIRI4
LEI4 $332
line 732
;732:			return 1;
CNSTI4 1
RETI4
ADDRGP4 $317
JUMPV
LABELV $332
line 734
;733:		}
;734:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $317
JUMPV
LABELV $328
line 736
;735:	}
;736:	if ( ca->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 3
NEI4 $334
line 737
;737:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $317
JUMPV
LABELV $334
line 739
;738:	}
;739:	if ( cb->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 4
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 3
NEI4 $336
line 740
;740:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $317
JUMPV
LABELV $336
line 744
;741:	}
;742:
;743:	// then sort by score
;744:	if ( ca->ps.persistant[PERS_SCORE]
ADDRLP4 24
CNSTI4 248
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 24
INDIRI4
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
ADDRLP4 24
INDIRI4
ADDP4
INDIRI4
LEI4 $338
line 745
;745:		> cb->ps.persistant[PERS_SCORE] ) {
line 746
;746:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $317
JUMPV
LABELV $338
line 748
;747:	}
;748:	if ( ca->ps.persistant[PERS_SCORE]
ADDRLP4 28
CNSTI4 248
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
INDIRI4
GEI4 $340
line 749
;749:		< cb->ps.persistant[PERS_SCORE] ) {
line 750
;750:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $317
JUMPV
LABELV $340
line 752
;751:	}
;752:	return 0;
CNSTI4 0
RETI4
LABELV $317
endproc SortRanks 32 0
export CalculateRanks
proc CalculateRanks 44 16
line 764
;753:}
;754:
;755:/*
;756:============
;757:CalculateRanks
;758:
;759:Recalculates the score ranks of all players
;760:This will be called on every client connect, begin, disconnect, death,
;761:and team change.
;762:============
;763:*/
;764:void CalculateRanks( void ) {
line 771
;765:	int		i;
;766:	int		rank;
;767:	int		score;
;768:	int		newScore;
;769:	gclient_t	*cl;
;770:
;771:	level.follow1 = -1;
ADDRGP4 level+340
CNSTI4 -1
ASGNI4
line 772
;772:	level.follow2 = -1;
ADDRGP4 level+344
CNSTI4 -1
ASGNI4
line 773
;773:	level.numConnectedClients = 0;
ADDRGP4 level+72
CNSTI4 0
ASGNI4
line 774
;774:	level.numNonSpectatorClients = 0;
ADDRGP4 level+76
CNSTI4 0
ASGNI4
line 775
;775:	level.numPlayingClients = 0;
ADDRGP4 level+80
CNSTI4 0
ASGNI4
line 776
;776:	level.numVotingClients = 0;		// don't count bots
ADDRGP4 level+2420
CNSTI4 0
ASGNI4
line 777
;777:	for ( i = 0; i < TEAM_NUM_TEAMS; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $349
line 778
;778:		level.numteamVotingClients[i] = 0;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+4496
ADDP4
CNSTI4 0
ASGNI4
line 779
;779:	}
LABELV $350
line 777
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 4
LTI4 $349
line 780
;780:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $357
JUMPV
LABELV $354
line 781
;781:		if ( level.clients[i].pers.connected != CON_DISCONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
EQI4 $359
line 782
;782:			level.sortedClients[level.numConnectedClients] = i;
ADDRGP4 level+72
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
ADDRLP4 0
INDIRI4
ASGNI4
line 783
;783:			level.numConnectedClients++;
ADDRLP4 20
ADDRGP4 level+72
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 785
;784:
;785:			if ( level.clients[i].sess.sessionTeam != TEAM_SPECTATOR ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 3
EQI4 $364
line 786
;786:				level.numNonSpectatorClients++;
ADDRLP4 24
ADDRGP4 level+76
ASGNP4
ADDRLP4 24
INDIRP4
ADDRLP4 24
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 789
;787:			
;788:				// decide if this should be auto-followed
;789:				if ( level.clients[i].pers.connected == CON_CONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $367
line 790
;790:					level.numPlayingClients++;
ADDRLP4 28
ADDRGP4 level+80
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 791
;791:					if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {
CNSTI4 808
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $370
line 792
;792:						level.numVotingClients++;
ADDRLP4 32
ADDRGP4 level+2420
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 793
;793:						if ( level.clients[i].sess.sessionTeam == TEAM_RED )
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 1
NEI4 $375
line 794
;794:							level.numteamVotingClients[0]++;
ADDRLP4 36
ADDRGP4 level+4496
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRGP4 $376
JUMPV
LABELV $375
line 795
;795:						else if ( level.clients[i].sess.sessionTeam == TEAM_BLUE )
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 2
NEI4 $378
line 796
;796:							level.numteamVotingClients[1]++;
ADDRLP4 40
ADDRGP4 level+4496+4
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $378
LABELV $376
line 797
;797:					}
LABELV $370
line 798
;798:					if ( level.follow1 == -1 ) {
ADDRGP4 level+340
INDIRI4
CNSTI4 -1
NEI4 $382
line 799
;799:						level.follow1 = i;
ADDRGP4 level+340
ADDRLP4 0
INDIRI4
ASGNI4
line 800
;800:					} else if ( level.follow2 == -1 ) {
ADDRGP4 $383
JUMPV
LABELV $382
ADDRGP4 level+344
INDIRI4
CNSTI4 -1
NEI4 $386
line 801
;801:						level.follow2 = i;
ADDRGP4 level+344
ADDRLP4 0
INDIRI4
ASGNI4
line 802
;802:					}
LABELV $386
LABELV $383
line 803
;803:				}
LABELV $367
line 804
;804:			}
LABELV $364
line 805
;805:		}
LABELV $359
line 806
;806:	}
LABELV $355
line 780
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $357
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $354
line 808
;807:
;808:	qsort( level.sortedClients, level.numConnectedClients, 
ADDRGP4 level+84
ARGP4
ADDRGP4 level+72
INDIRI4
ARGI4
CNSTI4 4
ARGI4
ADDRGP4 SortRanks
ARGP4
ADDRGP4 qsort
CALLV
pop
line 812
;809:		sizeof(level.sortedClients[0]), SortRanks );
;810:
;811:	// set the rank value for all clients that are connected and not spectators
;812:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $393
line 814
;813:		// in team games, rank is just the order of the teams, 0=red, 1=blue, 2=tied
;814:		for ( i = 0;  i < level.numConnectedClients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $399
JUMPV
LABELV $396
line 815
;815:			cl = &level.clients[ level.sortedClients[i] ];
ADDRLP4 4
CNSTI4 776
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 816
;816:			if ( level.teamScores[TEAM_RED] == level.teamScores[TEAM_BLUE] ) {
ADDRGP4 level+44+4
INDIRI4
ADDRGP4 level+44+8
INDIRI4
NEI4 $402
line 817
;817:				cl->ps.persistant[PERS_RANK] = 2;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 2
ASGNI4
line 818
;818:			} else if ( level.teamScores[TEAM_RED] > level.teamScores[TEAM_BLUE] ) {
ADDRGP4 $403
JUMPV
LABELV $402
ADDRGP4 level+44+4
INDIRI4
ADDRGP4 level+44+8
INDIRI4
LEI4 $408
line 819
;819:				cl->ps.persistant[PERS_RANK] = 0;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 0
ASGNI4
line 820
;820:			} else {
ADDRGP4 $409
JUMPV
LABELV $408
line 821
;821:				cl->ps.persistant[PERS_RANK] = 1;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 1
ASGNI4
line 822
;822:			}
LABELV $409
LABELV $403
line 823
;823:		}
LABELV $397
line 814
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $399
ADDRLP4 0
INDIRI4
ADDRGP4 level+72
INDIRI4
LTI4 $396
line 824
;824:	} else {	
ADDRGP4 $394
JUMPV
LABELV $393
line 825
;825:		rank = -1;
ADDRLP4 12
CNSTI4 -1
ASGNI4
line 826
;826:		score = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 827
;827:		for ( i = 0;  i < level.numPlayingClients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $417
JUMPV
LABELV $414
line 828
;828:			cl = &level.clients[ level.sortedClients[i] ];
ADDRLP4 4
CNSTI4 776
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 829
;829:			newScore = cl->ps.persistant[PERS_SCORE];
ADDRLP4 8
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 830
;830:			if ( i == 0 || newScore != score ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $422
ADDRLP4 8
INDIRI4
ADDRLP4 16
INDIRI4
EQI4 $420
LABELV $422
line 831
;831:				rank = i;
ADDRLP4 12
ADDRLP4 0
INDIRI4
ASGNI4
line 833
;832:				// assume we aren't tied until the next client is checked
;833:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank;
CNSTI4 776
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
ASGNI4
line 834
;834:			} else {
ADDRGP4 $421
JUMPV
LABELV $420
line 836
;835:				// we are tied with the previous client
;836:				level.clients[ level.sortedClients[i-1] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
CNSTI4 776
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84-4
ADDP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 837
;837:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
CNSTI4 776
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 838
;838:			}
LABELV $421
line 839
;839:			score = newScore;
ADDRLP4 16
ADDRLP4 8
INDIRI4
ASGNI4
line 840
;840:			if ( g_gametype.integer == GT_SINGLE_PLAYER && level.numPlayingClients == 1 ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $427
ADDRGP4 level+80
INDIRI4
CNSTI4 1
NEI4 $427
line 841
;841:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
CNSTI4 776
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 842
;842:			}
LABELV $427
line 843
;843:		}
LABELV $415
line 827
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $417
ADDRLP4 0
INDIRI4
ADDRGP4 level+80
INDIRI4
LTI4 $414
line 844
;844:	}
LABELV $394
line 847
;845:
;846:	// set the CS_SCORES1/2 configstrings, which will be visible to everyone
;847:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $432
line 848
;848:		trap_SetConfigstring( CS_SCORES1, va("%i", level.teamScores[TEAM_RED] ) );
ADDRGP4 $435
ARGP4
ADDRGP4 level+44+4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 849
;849:		trap_SetConfigstring( CS_SCORES2, va("%i", level.teamScores[TEAM_BLUE] ) );
ADDRGP4 $435
ARGP4
ADDRGP4 level+44+8
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 850
;850:	} else {
ADDRGP4 $433
JUMPV
LABELV $432
line 851
;851:		if ( level.numConnectedClients == 0 ) {
ADDRGP4 level+72
INDIRI4
CNSTI4 0
NEI4 $440
line 852
;852:			trap_SetConfigstring( CS_SCORES1, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $435
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 853
;853:			trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $435
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 854
;854:		} else if ( level.numConnectedClients == 1 ) {
ADDRGP4 $441
JUMPV
LABELV $440
ADDRGP4 level+72
INDIRI4
CNSTI4 1
NEI4 $443
line 855
;855:			trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $435
ARGP4
CNSTI4 776
ADDRGP4 level+84
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 856
;856:			trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $435
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 857
;857:		} else {
ADDRGP4 $444
JUMPV
LABELV $443
line 858
;858:			trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $435
ARGP4
CNSTI4 776
ADDRGP4 level+84
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 859
;859:			trap_SetConfigstring( CS_SCORES2, va("%i", level.clients[ level.sortedClients[1] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $435
ARGP4
CNSTI4 776
ADDRGP4 level+84+4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 860
;860:		}
LABELV $444
LABELV $441
line 861
;861:	}
LABELV $433
line 864
;862:
;863:	// see if it is time to end the level
;864:	CheckExitRules();
ADDRGP4 CheckExitRules
CALLV
pop
line 867
;865:
;866:	// if we are at the intermission, send the new info to everyone
;867:	if ( level.intermissiontime ) {
ADDRGP4 level+9128
INDIRI4
CNSTI4 0
EQI4 $450
line 868
;868:		SendScoreboardMessageToAllClients();
ADDRGP4 SendScoreboardMessageToAllClients
CALLV
pop
line 869
;869:	}
LABELV $450
line 870
;870:}
LABELV $342
endproc CalculateRanks 44 16
export SendScoreboardMessageToAllClients
proc SendScoreboardMessageToAllClients 4 4
line 889
;871:
;872:
;873:/*
;874:========================================================================
;875:
;876:MAP CHANGING
;877:
;878:========================================================================
;879:*/
;880:
;881:/*
;882:========================
;883:SendScoreboardMessageToAllClients
;884:
;885:Do this at BeginIntermission time and whenever ranks are recalculated
;886:due to enters/exits/forced team changes
;887:========================
;888:*/
;889:void SendScoreboardMessageToAllClients( void ) {
line 892
;890:	int		i;
;891:
;892:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $457
JUMPV
LABELV $454
line 893
;893:		if ( level.clients[ i ].pers.connected == CON_CONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $459
line 894
;894:			DeathmatchScoreboardMessage( g_entities + i );
CNSTI4 808
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 DeathmatchScoreboardMessage
CALLV
pop
line 895
;895:		}
LABELV $459
line 896
;896:	}
LABELV $455
line 892
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $457
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $454
line 897
;897:}
LABELV $453
endproc SendScoreboardMessageToAllClients 4 4
export MoveClientToIntermission
proc MoveClientToIntermission 0 12
line 907
;898:
;899:/*
;900:========================
;901:MoveClientToIntermission
;902:
;903:When the intermission starts, this will be called for all players.
;904:If a new client connects, this will be called after the spawn function.
;905:========================
;906:*/
;907:void MoveClientToIntermission( gentity_t *ent ) {
line 909
;908:	// take out of follow mode if needed
;909:	if ( ent->client->sess.spectatorState == SPECTATOR_FOLLOW ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 2
NEI4 $462
line 910
;910:		StopFollowing( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 StopFollowing
CALLV
pop
line 911
;911:	}
LABELV $462
line 915
;912:
;913:
;914:	// move to the spot
;915:	VectorCopy( level.intermission_origin, ent->s.origin );
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ADDRGP4 level+9144
INDIRB
ASGNB 12
line 916
;916:	VectorCopy( level.intermission_origin, ent->client->ps.origin );
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 20
ADDP4
ADDRGP4 level+9144
INDIRB
ASGNB 12
line 917
;917:	VectorCopy (level.intermission_angle, ent->client->ps.viewangles);
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 152
ADDP4
ADDRGP4 level+9156
INDIRB
ASGNB 12
line 918
;918:	ent->client->ps.pm_type = PM_INTERMISSION;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 5
ASGNI4
line 921
;919:
;920:	// clean up powerup info
;921:	memset( ent->client->ps.powerups, 0, sizeof(ent->client->ps.powerups) );
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 312
ADDP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 64
ARGI4
ADDRGP4 memset
CALLP4
pop
line 923
;922:
;923:	ent->client->ps.eFlags = 0;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
CNSTI4 0
ASGNI4
line 924
;924:	ent->s.eFlags = 0;
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
CNSTI4 0
ASGNI4
line 925
;925:	ent->s.eType = ET_GENERAL;
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 0
ASGNI4
line 926
;926:	ent->s.modelindex = 0;
ADDRFP4 0
INDIRP4
CNSTI4 160
ADDP4
CNSTI4 0
ASGNI4
line 927
;927:	ent->s.loopSound = 0;
ADDRFP4 0
INDIRP4
CNSTI4 156
ADDP4
CNSTI4 0
ASGNI4
line 928
;928:	ent->s.event = 0;
ADDRFP4 0
INDIRP4
CNSTI4 180
ADDP4
CNSTI4 0
ASGNI4
line 929
;929:	ent->r.contents = 0;
ADDRFP4 0
INDIRP4
CNSTI4 460
ADDP4
CNSTI4 0
ASGNI4
line 930
;930:}
LABELV $461
endproc MoveClientToIntermission 0 12
export FindIntermissionPoint
proc FindIntermissionPoint 32 12
line 939
;931:
;932:/*
;933:==================
;934:FindIntermissionPoint
;935:
;936:This is also used for spectator spawns
;937:==================
;938:*/
;939:void FindIntermissionPoint( void ) {
line 944
;940:	gentity_t	*ent, *target;
;941:	vec3_t		dir;
;942:
;943:	// find the intermission spot
;944:	ent = G_Find (NULL, FOFS(classname), "info_player_intermission");
CNSTP4 0
ARGP4
CNSTI4 524
ARGI4
ADDRGP4 $468
ARGP4
ADDRLP4 20
ADDRGP4 G_Find
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 20
INDIRP4
ASGNP4
line 945
;945:	if ( !ent ) {	// the map creator forgot to put in an intermission point...
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $469
line 946
;946:		SelectSpawnPoint ( vec3_origin, level.intermission_origin, level.intermission_angle );
ADDRGP4 vec3_origin
ARGP4
ADDRGP4 level+9144
ARGP4
ADDRGP4 level+9156
ARGP4
ADDRGP4 SelectSpawnPoint
CALLP4
pop
line 947
;947:	} else {
ADDRGP4 $470
JUMPV
LABELV $469
line 948
;948:		VectorCopy (ent->s.origin, level.intermission_origin);
ADDRGP4 level+9144
ADDRLP4 0
INDIRP4
CNSTI4 92
ADDP4
INDIRB
ASGNB 12
line 949
;949:		VectorCopy (ent->s.angles, level.intermission_angle);
ADDRGP4 level+9156
ADDRLP4 0
INDIRP4
CNSTI4 116
ADDP4
INDIRB
ASGNB 12
line 951
;950:		// if it has a target, look towards it
;951:		if ( ent->target ) {
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $475
line 952
;952:			target = G_PickTarget( ent->target );
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRP4
ARGP4
ADDRLP4 24
ADDRGP4 G_PickTarget
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 24
INDIRP4
ASGNP4
line 953
;953:			if ( target ) {
ADDRLP4 4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $477
line 954
;954:				VectorSubtract( target->s.origin, level.intermission_origin, dir );
ADDRLP4 28
ADDRLP4 4
INDIRP4
ASGNP4
ADDRLP4 8
ADDRLP4 28
INDIRP4
CNSTI4 92
ADDP4
INDIRF4
ADDRGP4 level+9144
INDIRF4
SUBF4
ASGNF4
ADDRLP4 8+4
ADDRLP4 28
INDIRP4
CNSTI4 96
ADDP4
INDIRF4
ADDRGP4 level+9144+4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 8+8
ADDRLP4 4
INDIRP4
CNSTI4 100
ADDP4
INDIRF4
ADDRGP4 level+9144+8
INDIRF4
SUBF4
ASGNF4
line 955
;955:				vectoangles( dir, level.intermission_angle );
ADDRLP4 8
ARGP4
ADDRGP4 level+9156
ARGP4
ADDRGP4 vectoangles
CALLV
pop
line 956
;956:			}
LABELV $477
line 957
;957:		}
LABELV $475
line 958
;958:	}
LABELV $470
line 960
;959:
;960:}
LABELV $467
endproc FindIntermissionPoint 32 12
export BeginIntermission
proc BeginIntermission 8 4
line 967
;961:
;962:/*
;963:==================
;964:BeginIntermission
;965:==================
;966:*/
;967:void BeginIntermission( void ) {
line 971
;968:	int			i;
;969:	gentity_t	*client;
;970:
;971:	if ( level.intermissiontime ) {
ADDRGP4 level+9128
INDIRI4
CNSTI4 0
EQI4 $488
line 972
;972:		return;		// already active
ADDRGP4 $487
JUMPV
LABELV $488
line 976
;973:	}
;974:
;975:	// if in tournement mode, change the wins / losses
;976:	if ( g_gametype.integer == GT_TOURNAMENT ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $491
line 977
;977:		AdjustTournamentScores();
ADDRGP4 AdjustTournamentScores
CALLV
pop
line 978
;978:	}
LABELV $491
line 980
;979:
;980:	level.intermissiontime = level.time;
ADDRGP4 level+9128
ADDRGP4 level+32
INDIRI4
ASGNI4
line 981
;981:	FindIntermissionPoint();
ADDRGP4 FindIntermissionPoint
CALLV
pop
line 990
;982:
;983:#ifdef MISSIONPACK
;984:	if (g_singlePlayer.integer) {
;985:		trap_Cvar_Set("ui_singlePlayerActive", "0");
;986:		UpdateTournamentInfo();
;987:	}
;988:#else
;989:	// if single player game
;990:	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $496
line 991
;991:		UpdateTournamentInfo();
ADDRGP4 UpdateTournamentInfo
CALLV
pop
line 992
;992:		SpawnModelsOnVictoryPads();
ADDRGP4 SpawnModelsOnVictoryPads
CALLV
pop
line 993
;993:	}
LABELV $496
line 997
;994:#endif
;995:
;996:	// move all clients to the intermission point
;997:	for (i=0 ; i< level.maxclients ; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $502
JUMPV
LABELV $499
line 998
;998:		client = g_entities + i;
ADDRLP4 0
CNSTI4 808
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 999
;999:		if (!client->inuse)
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $504
line 1000
;1000:			continue;
ADDRGP4 $500
JUMPV
LABELV $504
line 1002
;1001:		// respawn if dead
;1002:		if (client->health <= 0) {
ADDRLP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
GTI4 $506
line 1003
;1003:			respawn(client);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 respawn
CALLV
pop
line 1004
;1004:		}
LABELV $506
line 1005
;1005:		MoveClientToIntermission( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 MoveClientToIntermission
CALLV
pop
line 1006
;1006:	}
LABELV $500
line 997
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $502
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $499
line 1009
;1007:
;1008:	// send the current scoring to all clients
;1009:	SendScoreboardMessageToAllClients();
ADDRGP4 SendScoreboardMessageToAllClients
CALLV
pop
line 1011
;1010:
;1011:}
LABELV $487
endproc BeginIntermission 8 4
export ExitLevel
proc ExitLevel 8 8
line 1023
;1012:
;1013:
;1014:/*
;1015:=============
;1016:ExitLevel
;1017:
;1018:When the intermission has been exited, the server is either killed
;1019:or moved to a new level based on the "nextmap" cvar 
;1020:
;1021:=============
;1022:*/
;1023:void ExitLevel (void) {
line 1028
;1024:	int		i;
;1025:	gclient_t *cl;
;1026:
;1027:	//bot interbreeding
;1028:	BotInterbreedEndMatch();
ADDRGP4 BotInterbreedEndMatch
CALLV
pop
line 1032
;1029:
;1030:	// if we are running a tournement map, kick the loser to spectator status,
;1031:	// which will automatically grab the next spectator and restart
;1032:	if ( g_gametype.integer == GT_TOURNAMENT  ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $509
line 1033
;1033:		if ( !level.restarted ) {
ADDRGP4 level+68
INDIRI4
CNSTI4 0
NEI4 $508
line 1034
;1034:			RemoveTournamentLoser();
ADDRGP4 RemoveTournamentLoser
CALLV
pop
line 1035
;1035:			trap_SendConsoleCommand( EXEC_APPEND, "map_restart 0\n" );
CNSTI4 2
ARGI4
ADDRGP4 $515
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1036
;1036:			level.restarted = qtrue;
ADDRGP4 level+68
CNSTI4 1
ASGNI4
line 1037
;1037:			level.changemap = NULL;
ADDRGP4 level+9132
CNSTP4 0
ASGNP4
line 1038
;1038:			level.intermissiontime = 0;
ADDRGP4 level+9128
CNSTI4 0
ASGNI4
line 1039
;1039:		}
line 1040
;1040:		return;	
ADDRGP4 $508
JUMPV
LABELV $509
line 1044
;1041:	}
;1042:
;1043:
;1044:	trap_SendConsoleCommand( EXEC_APPEND, "vstr nextmap\n" );
CNSTI4 2
ARGI4
ADDRGP4 $519
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1045
;1045:	level.changemap = NULL;
ADDRGP4 level+9132
CNSTP4 0
ASGNP4
line 1046
;1046:	level.intermissiontime = 0;
ADDRGP4 level+9128
CNSTI4 0
ASGNI4
line 1049
;1047:
;1048:	// reset all the scores so we don't enter the intermission again
;1049:	level.teamScores[TEAM_RED] = 0;
ADDRGP4 level+44+4
CNSTI4 0
ASGNI4
line 1050
;1050:	level.teamScores[TEAM_BLUE] = 0;
ADDRGP4 level+44+8
CNSTI4 0
ASGNI4
line 1051
;1051:	for ( i=0 ; i< g_maxclients.integer ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $529
JUMPV
LABELV $526
line 1052
;1052:		cl = level.clients + i;
ADDRLP4 4
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1053
;1053:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $531
line 1054
;1054:			continue;
ADDRGP4 $527
JUMPV
LABELV $531
line 1056
;1055:		}
;1056:		cl->ps.persistant[PERS_SCORE] = 0;
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
CNSTI4 0
ASGNI4
line 1057
;1057:	}
LABELV $527
line 1051
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $529
ADDRLP4 0
INDIRI4
ADDRGP4 g_maxclients+12
INDIRI4
LTI4 $526
line 1060
;1058:
;1059:	// we need to do this here before chaning to CON_CONNECTING
;1060:	G_WriteSessionData();
ADDRGP4 G_WriteSessionData
CALLV
pop
line 1064
;1061:
;1062:	// change all client states to connecting, so the early players into the
;1063:	// next level will know the others aren't done reconnecting
;1064:	for (i=0 ; i< g_maxclients.integer ; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $536
JUMPV
LABELV $533
line 1065
;1065:		if ( level.clients[i].pers.connected == CON_CONNECTED ) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $538
line 1066
;1066:			level.clients[i].pers.connected = CON_CONNECTING;
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
CNSTI4 1
ASGNI4
line 1067
;1067:		}
LABELV $538
line 1068
;1068:	}
LABELV $534
line 1064
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $536
ADDRLP4 0
INDIRI4
ADDRGP4 g_maxclients+12
INDIRI4
LTI4 $533
line 1070
;1069:
;1070:}
LABELV $508
endproc ExitLevel 8 8
export G_LogPrintf
proc G_LogPrintf 1044 24
line 1079
;1071:
;1072:/*
;1073:=================
;1074:G_LogPrintf
;1075:
;1076:Print to the logfile with a time stamp if it is open
;1077:=================
;1078:*/
;1079:void QDECL G_LogPrintf( const char *fmt, ... ) {
line 1084
;1080:	va_list		argptr;
;1081:	char		string[1024];
;1082:	int			min, tens, sec;
;1083:
;1084:	sec = level.time / 1000;
ADDRLP4 0
ADDRGP4 level+32
INDIRI4
CNSTI4 1000
DIVI4
ASGNI4
line 1086
;1085:
;1086:	min = sec / 60;
ADDRLP4 1032
ADDRLP4 0
INDIRI4
CNSTI4 60
DIVI4
ASGNI4
line 1087
;1087:	sec -= min * 60;
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 60
ADDRLP4 1032
INDIRI4
MULI4
SUBI4
ASGNI4
line 1088
;1088:	tens = sec / 10;
ADDRLP4 1036
ADDRLP4 0
INDIRI4
CNSTI4 10
DIVI4
ASGNI4
line 1089
;1089:	sec -= tens * 10;
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 10
ADDRLP4 1036
INDIRI4
MULI4
SUBI4
ASGNI4
line 1091
;1090:
;1091:	Com_sprintf( string, sizeof(string), "%3i:%i%i ", min, tens, sec );
ADDRLP4 4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 $542
ARGP4
ADDRLP4 1032
INDIRI4
ARGI4
ADDRLP4 1036
INDIRI4
ARGI4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 Com_sprintf
CALLV
pop
line 1093
;1092:
;1093:	va_start( argptr, fmt );
ADDRLP4 1028
ADDRFP4 0+4
ASGNP4
line 1094
;1094:	vsprintf( string +7 , fmt,argptr );
ADDRLP4 4+7
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1028
INDIRP4
ARGP4
ADDRGP4 vsprintf
CALLI4
pop
line 1095
;1095:	va_end( argptr );
ADDRLP4 1028
CNSTP4 0
ASGNP4
line 1097
;1096:
;1097:	if ( g_dedicated.integer ) {
ADDRGP4 g_dedicated+12
INDIRI4
CNSTI4 0
EQI4 $545
line 1098
;1098:		G_Printf( "%s", string + 7 );
ADDRGP4 $264
ARGP4
ADDRLP4 4+7
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 1099
;1099:	}
LABELV $545
line 1101
;1100:
;1101:	if ( !level.logFile ) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
NEI4 $549
line 1102
;1102:		return;
ADDRGP4 $540
JUMPV
LABELV $549
line 1105
;1103:	}
;1104:
;1105:	trap_FS_Write( string, strlen( string ), level.logFile );
ADDRLP4 4
ARGP4
ADDRLP4 1040
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 4
ARGP4
ADDRLP4 1040
INDIRI4
ARGI4
ADDRGP4 level+20
INDIRI4
ARGI4
ADDRGP4 trap_FS_Write
CALLV
pop
line 1106
;1106:}
LABELV $540
endproc G_LogPrintf 1044 24
export LogExit
proc LogExit 24 20
line 1115
;1107:
;1108:/*
;1109:================
;1110:LogExit
;1111:
;1112:Append information about this game to the log file
;1113:================
;1114:*/
;1115:void LogExit( const char *string ) {
line 1121
;1116:	int				i, numSorted;
;1117:	gclient_t		*cl;
;1118:#ifdef MISSIONPACK // bk001205
;1119:	qboolean won = qtrue;
;1120:#endif
;1121:	G_LogPrintf( "Exit: %s\n", string );
ADDRGP4 $554
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1123
;1122:
;1123:	level.intermissionQueued = level.time;
ADDRGP4 level+9124
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1127
;1124:
;1125:	// this will keep the clients from playing any voice sounds
;1126:	// that will get cut off when the queued intermission starts
;1127:	trap_SetConfigstring( CS_INTERMISSION, "1" );
CNSTI4 22
ARGI4
ADDRGP4 $83
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1130
;1128:
;1129:	// don't send more than 32 scores (FIXME?)
;1130:	numSorted = level.numConnectedClients;
ADDRLP4 8
ADDRGP4 level+72
INDIRI4
ASGNI4
line 1131
;1131:	if ( numSorted > 32 ) {
ADDRLP4 8
INDIRI4
CNSTI4 32
LEI4 $558
line 1132
;1132:		numSorted = 32;
ADDRLP4 8
CNSTI4 32
ASGNI4
line 1133
;1133:	}
LABELV $558
line 1135
;1134:
;1135:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $560
line 1136
;1136:		G_LogPrintf( "red:%i  blue:%i\n",
ADDRGP4 $563
ARGP4
ADDRGP4 level+44+4
INDIRI4
ARGI4
ADDRGP4 level+44+8
INDIRI4
ARGI4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1138
;1137:			level.teamScores[TEAM_RED], level.teamScores[TEAM_BLUE] );
;1138:	}
LABELV $560
line 1140
;1139:
;1140:	for (i=0 ; i < numSorted ; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $571
JUMPV
LABELV $568
line 1143
;1141:		int		ping;
;1142:
;1143:		cl = &level.clients[level.sortedClients[i]];
ADDRLP4 0
CNSTI4 776
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1145
;1144:
;1145:		if ( cl->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 3
NEI4 $573
line 1146
;1146:			continue;
ADDRGP4 $569
JUMPV
LABELV $573
line 1148
;1147:		}
;1148:		if ( cl->pers.connected == CON_CONNECTING ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $575
line 1149
;1149:			continue;
ADDRGP4 $569
JUMPV
LABELV $575
line 1152
;1150:		}
;1151:
;1152:		ping = cl->ps.ping < 999 ? cl->ps.ping : 999;
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
CNSTI4 999
GEI4 $578
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
ASGNI4
ADDRGP4 $579
JUMPV
LABELV $578
ADDRLP4 16
CNSTI4 999
ASGNI4
LABELV $579
ADDRLP4 12
ADDRLP4 16
INDIRI4
ASGNI4
line 1154
;1153:
;1154:		G_LogPrintf( "score: %i  ping: %i  client: %i %s\n", cl->ps.persistant[PERS_SCORE], ping, level.sortedClients[i],	cl->pers.netname );
ADDRGP4 $580
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+84
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 512
ADDP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1163
;1155:#ifdef MISSIONPACK
;1156:		if (g_singlePlayer.integer && g_gametype.integer == GT_TOURNAMENT) {
;1157:			if (g_entities[cl - level.clients].r.svFlags & SVF_BOT && cl->ps.persistant[PERS_RANK] == 0) {
;1158:				won = qfalse;
;1159:			}
;1160:		}
;1161:#endif
;1162:
;1163:	}
LABELV $569
line 1140
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $571
ADDRLP4 4
INDIRI4
ADDRLP4 8
INDIRI4
LTI4 $568
line 1175
;1164:
;1165:#ifdef MISSIONPACK
;1166:	if (g_singlePlayer.integer) {
;1167:		if (g_gametype.integer >= GT_CTF) {
;1168:			won = level.teamScores[TEAM_RED] > level.teamScores[TEAM_BLUE];
;1169:		}
;1170:		trap_SendConsoleCommand( EXEC_APPEND, (won) ? "spWin\n" : "spLose\n" );
;1171:	}
;1172:#endif
;1173:
;1174:
;1175:}
LABELV $553
endproc LogExit 24 20
export CheckIntermissionExit
proc CheckIntermissionExit 20 0
line 1188
;1176:
;1177:
;1178:/*
;1179:=================
;1180:CheckIntermissionExit
;1181:
;1182:The level will stay at the intermission for a minimum of 5 seconds
;1183:If all players wish to continue, the level will then exit.
;1184:If one or more players have not acknowledged the continue, the game will
;1185:wait 10 seconds before going on.
;1186:=================
;1187:*/
;1188:void CheckIntermissionExit( void ) {
line 1194
;1189:	int			ready, notReady;
;1190:	int			i;
;1191:	gclient_t	*cl;
;1192:	int			readyMask;
;1193:
;1194:	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $583
line 1195
;1195:		return;
ADDRGP4 $582
JUMPV
LABELV $583
line 1199
;1196:	}
;1197:
;1198:	// see which players are ready
;1199:	ready = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 1200
;1200:	notReady = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 1201
;1201:	readyMask = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 1202
;1202:	for (i=0 ; i< g_maxclients.integer ; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $589
JUMPV
LABELV $586
line 1203
;1203:		cl = level.clients + i;
ADDRLP4 0
CNSTI4 776
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1204
;1204:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $591
line 1205
;1205:			continue;
ADDRGP4 $587
JUMPV
LABELV $591
line 1207
;1206:		}
;1207:		if ( g_entities[cl->ps.clientNum].r.svFlags & SVF_BOT ) {
CNSTI4 808
ADDRLP4 0
INDIRP4
CNSTI4 140
ADDP4
INDIRI4
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $593
line 1208
;1208:			continue;
ADDRGP4 $587
JUMPV
LABELV $593
line 1211
;1209:		}
;1210:
;1211:		if ( cl->readyToExit ) {
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 0
EQI4 $597
line 1212
;1212:			ready++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1213
;1213:			if ( i < 16 ) {
ADDRLP4 4
INDIRI4
CNSTI4 16
GEI4 $598
line 1214
;1214:				readyMask |= 1 << i;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDRLP4 4
INDIRI4
LSHI4
BORI4
ASGNI4
line 1215
;1215:			}
line 1216
;1216:		} else {
ADDRGP4 $598
JUMPV
LABELV $597
line 1217
;1217:			notReady++;
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1218
;1218:		}
LABELV $598
line 1219
;1219:	}
LABELV $587
line 1202
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $589
ADDRLP4 4
INDIRI4
ADDRGP4 g_maxclients+12
INDIRI4
LTI4 $586
line 1223
;1220:
;1221:	// copy the readyMask to each player's stats so
;1222:	// it can be displayed on the scoreboard
;1223:	for (i=0 ; i< g_maxclients.integer ; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $604
JUMPV
LABELV $601
line 1224
;1224:		cl = level.clients + i;
ADDRLP4 0
CNSTI4 776
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1225
;1225:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $606
line 1226
;1226:			continue;
ADDRGP4 $602
JUMPV
LABELV $606
line 1228
;1227:		}
;1228:		cl->ps.stats[STAT_CLIENTS_READY] = readyMask;
ADDRLP4 0
INDIRP4
CNSTI4 204
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
line 1229
;1229:	}
LABELV $602
line 1223
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $604
ADDRLP4 4
INDIRI4
ADDRGP4 g_maxclients+12
INDIRI4
LTI4 $601
line 1232
;1230:
;1231:	// never exit in less than five seconds
;1232:	if ( level.time < level.intermissiontime + 5000 ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+9128
INDIRI4
CNSTI4 5000
ADDI4
GEI4 $608
line 1233
;1233:		return;
ADDRGP4 $582
JUMPV
LABELV $608
line 1237
;1234:	}
;1235:
;1236:	// if nobody wants to go, clear timer
;1237:	if ( !ready ) {
ADDRLP4 12
INDIRI4
CNSTI4 0
NEI4 $612
line 1238
;1238:		level.readyToExit = qfalse;
ADDRGP4 level+9136
CNSTI4 0
ASGNI4
line 1239
;1239:		return;
ADDRGP4 $582
JUMPV
LABELV $612
line 1243
;1240:	}
;1241:
;1242:	// if everyone wants to go, go now
;1243:	if ( !notReady ) {
ADDRLP4 16
INDIRI4
CNSTI4 0
NEI4 $615
line 1244
;1244:		ExitLevel();
ADDRGP4 ExitLevel
CALLV
pop
line 1245
;1245:		return;
ADDRGP4 $582
JUMPV
LABELV $615
line 1249
;1246:	}
;1247:
;1248:	// the first person to ready starts the ten second timeout
;1249:	if ( !level.readyToExit ) {
ADDRGP4 level+9136
INDIRI4
CNSTI4 0
NEI4 $617
line 1250
;1250:		level.readyToExit = qtrue;
ADDRGP4 level+9136
CNSTI4 1
ASGNI4
line 1251
;1251:		level.exitTime = level.time;
ADDRGP4 level+9140
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1252
;1252:	}
LABELV $617
line 1256
;1253:
;1254:	// if we have waited ten seconds since at least one player
;1255:	// wanted to exit, go ahead
;1256:	if ( level.time < level.exitTime + 10000 ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+9140
INDIRI4
CNSTI4 10000
ADDI4
GEI4 $623
line 1257
;1257:		return;
ADDRGP4 $582
JUMPV
LABELV $623
line 1260
;1258:	}
;1259:
;1260:	ExitLevel();
ADDRGP4 ExitLevel
CALLV
pop
line 1261
;1261:}
LABELV $582
endproc CheckIntermissionExit 20 0
export ScoreIsTied
proc ScoreIsTied 12 0
line 1268
;1262:
;1263:/*
;1264:=============
;1265:ScoreIsTied
;1266:=============
;1267:*/
;1268:qboolean ScoreIsTied( void ) {
line 1271
;1269:	int		a, b;
;1270:
;1271:	if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
GEI4 $628
line 1272
;1272:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $627
JUMPV
LABELV $628
line 1275
;1273:	}
;1274:	
;1275:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $631
line 1276
;1276:		return (qboolean)(level.teamScores[TEAM_RED] == level.teamScores[TEAM_BLUE]); // ***GREGS_VC9_PORT_MOD*** -- added typecast(s)
ADDRGP4 level+44+4
INDIRI4
ADDRGP4 level+44+8
INDIRI4
NEI4 $639
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $640
JUMPV
LABELV $639
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $640
ADDRLP4 8
INDIRI4
RETI4
ADDRGP4 $627
JUMPV
LABELV $631
line 1279
;1277:	}
;1278:
;1279:	a = level.clients[level.sortedClients[0]].ps.persistant[PERS_SCORE];
ADDRLP4 0
CNSTI4 776
ADDRGP4 level+84
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1280
;1280:	b = level.clients[level.sortedClients[1]].ps.persistant[PERS_SCORE];
ADDRLP4 4
CNSTI4 776
ADDRGP4 level+84+4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1282
;1281:
;1282:	return (qboolean)(a == b); // ***GREGS_VC9_PORT_MOD*** -- added typecast(s)
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRI4
NEI4 $645
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $646
JUMPV
LABELV $645
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $646
ADDRLP4 8
INDIRI4
RETI4
LABELV $627
endproc ScoreIsTied 12 0
export CheckExitRules
proc CheckExitRules 20 8
line 1294
;1283:}
;1284:
;1285:/*
;1286:=================
;1287:CheckExitRules
;1288:
;1289:There will be a delay between the time the exit is qualified for
;1290:and the time everyone is moved to the intermission spot, so you
;1291:can see the last frag.
;1292:=================
;1293:*/
;1294:void CheckExitRules( void ) {
line 1299
;1295: 	int			i;
;1296:	gclient_t	*cl;
;1297:	// if at the intermission, wait for all non-bots to
;1298:	// signal ready, then go to next level
;1299:	if ( level.intermissiontime ) {
ADDRGP4 level+9128
INDIRI4
CNSTI4 0
EQI4 $648
line 1300
;1300:		CheckIntermissionExit ();
ADDRGP4 CheckIntermissionExit
CALLV
pop
line 1301
;1301:		return;
ADDRGP4 $647
JUMPV
LABELV $648
line 1304
;1302:	}
;1303:
;1304:	if ( level.intermissionQueued ) {
ADDRGP4 level+9124
INDIRI4
CNSTI4 0
EQI4 $651
line 1312
;1305:#ifdef MISSIONPACK
;1306:		int time = (g_singlePlayer.integer) ? SP_INTERMISSION_DELAY_TIME : INTERMISSION_DELAY_TIME;
;1307:		if ( level.time - level.intermissionQueued >= time ) {
;1308:			level.intermissionQueued = 0;
;1309:			BeginIntermission();
;1310:		}
;1311:#else
;1312:		if ( level.time - level.intermissionQueued >= INTERMISSION_DELAY_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+9124
INDIRI4
SUBI4
CNSTI4 1000
LTI4 $647
line 1313
;1313:			level.intermissionQueued = 0;
ADDRGP4 level+9124
CNSTI4 0
ASGNI4
line 1314
;1314:			BeginIntermission();
ADDRGP4 BeginIntermission
CALLV
pop
line 1315
;1315:		}
line 1317
;1316:#endif
;1317:		return;
ADDRGP4 $647
JUMPV
LABELV $651
line 1321
;1318:	}
;1319:
;1320:	// check for sudden death
;1321:	if ( ScoreIsTied() ) {
ADDRLP4 8
ADDRGP4 ScoreIsTied
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $659
line 1323
;1322:		// always wait for sudden death
;1323:		return;
ADDRGP4 $647
JUMPV
LABELV $659
line 1326
;1324:	}
;1325:
;1326:	if ( g_timelimit.integer && !level.warmupTime ) {
ADDRLP4 12
CNSTI4 0
ASGNI4
ADDRGP4 g_timelimit+12
INDIRI4
ADDRLP4 12
INDIRI4
EQI4 $661
ADDRGP4 level+16
INDIRI4
ADDRLP4 12
INDIRI4
NEI4 $661
line 1327
;1327:		if ( level.time - level.startTime >= g_timelimit.integer*60000 ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+40
INDIRI4
SUBI4
CNSTI4 60000
ADDRGP4 g_timelimit+12
INDIRI4
MULI4
LTI4 $665
line 1328
;1328:			trap_SendServerCommand( -1, "print \"Timelimit hit.\n\"");
CNSTI4 -1
ARGI4
ADDRGP4 $670
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1329
;1329:			LogExit( "Timelimit hit." );
ADDRGP4 $671
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1330
;1330:			return;
ADDRGP4 $647
JUMPV
LABELV $665
line 1332
;1331:		}
;1332:	}
LABELV $661
line 1334
;1333:
;1334:	if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
GEI4 $672
line 1335
;1335:		return;
ADDRGP4 $647
JUMPV
LABELV $672
line 1338
;1336:	}
;1337:
;1338:	if ( g_gametype.integer < GT_CTF && g_fraglimit.integer ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
GEI4 $675
ADDRGP4 g_fraglimit+12
INDIRI4
CNSTI4 0
EQI4 $675
line 1339
;1339:		if ( level.teamScores[TEAM_RED] >= g_fraglimit.integer ) {
ADDRGP4 level+44+4
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $679
line 1340
;1340:			trap_SendServerCommand( -1, "print \"Red hit the fraglimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $684
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1341
;1341:			LogExit( "Fraglimit hit." );
ADDRGP4 $685
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1342
;1342:			return;
ADDRGP4 $647
JUMPV
LABELV $679
line 1345
;1343:		}
;1344:
;1345:		if ( level.teamScores[TEAM_BLUE] >= g_fraglimit.integer ) {
ADDRGP4 level+44+8
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $686
line 1346
;1346:			trap_SendServerCommand( -1, "print \"Blue hit the fraglimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $691
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1347
;1347:			LogExit( "Fraglimit hit." );
ADDRGP4 $685
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1348
;1348:			return;
ADDRGP4 $647
JUMPV
LABELV $686
line 1351
;1349:		}
;1350:
;1351:		for ( i=0 ; i< g_maxclients.integer ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $695
JUMPV
LABELV $692
line 1352
;1352:			cl = level.clients + i;
ADDRLP4 0
CNSTI4 776
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1353
;1353:			if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $697
line 1354
;1354:				continue;
ADDRGP4 $693
JUMPV
LABELV $697
line 1356
;1355:			}
;1356:			if ( cl->sess.sessionTeam != TEAM_FREE ) {
ADDRLP4 0
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 0
EQI4 $699
line 1357
;1357:				continue;
ADDRGP4 $693
JUMPV
LABELV $699
line 1360
;1358:			}
;1359:
;1360:			if ( cl->ps.persistant[PERS_SCORE] >= g_fraglimit.integer ) {
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $701
line 1361
;1361:				LogExit( "Fraglimit hit." );
ADDRGP4 $685
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1362
;1362:				trap_SendServerCommand( -1, va("print \"%s" S_COLOR_WHITE " hit the fraglimit.\n\"",
ADDRGP4 $704
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 512
ADDP4
ARGP4
ADDRLP4 16
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1364
;1363:					cl->pers.netname ) );
;1364:				return;
ADDRGP4 $647
JUMPV
LABELV $701
line 1366
;1365:			}
;1366:		}
LABELV $693
line 1351
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $695
ADDRLP4 4
INDIRI4
ADDRGP4 g_maxclients+12
INDIRI4
LTI4 $692
line 1367
;1367:	}
LABELV $675
line 1369
;1368:
;1369:	if ( g_gametype.integer >= GT_CTF && g_capturelimit.integer ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
LTI4 $705
ADDRGP4 g_capturelimit+12
INDIRI4
CNSTI4 0
EQI4 $705
line 1371
;1370:
;1371:		if ( level.teamScores[TEAM_RED] >= g_capturelimit.integer ) {
ADDRGP4 level+44+4
INDIRI4
ADDRGP4 g_capturelimit+12
INDIRI4
LTI4 $709
line 1372
;1372:			trap_SendServerCommand( -1, "print \"Red hit the capturelimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $714
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1373
;1373:			LogExit( "Capturelimit hit." );
ADDRGP4 $715
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1374
;1374:			return;
ADDRGP4 $647
JUMPV
LABELV $709
line 1377
;1375:		}
;1376:
;1377:		if ( level.teamScores[TEAM_BLUE] >= g_capturelimit.integer ) {
ADDRGP4 level+44+8
INDIRI4
ADDRGP4 g_capturelimit+12
INDIRI4
LTI4 $716
line 1378
;1378:			trap_SendServerCommand( -1, "print \"Blue hit the capturelimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $721
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1379
;1379:			LogExit( "Capturelimit hit." );
ADDRGP4 $715
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1380
;1380:			return;
LABELV $716
line 1382
;1381:		}
;1382:	}
LABELV $705
line 1383
;1383:}
LABELV $647
endproc CheckExitRules 20 8
export CheckTournament
proc CheckTournament 32 8
line 1403
;1384:
;1385:
;1386:
;1387:/*
;1388:========================================================================
;1389:
;1390:FUNCTIONS CALLED EVERY FRAME
;1391:
;1392:========================================================================
;1393:*/
;1394:
;1395:
;1396:/*
;1397:=============
;1398:CheckTournament
;1399:
;1400:Once a frame, check for changes in tournement player state
;1401:=============
;1402:*/
;1403:void CheckTournament( void ) {
line 1406
;1404:	// check because we run 3 game frames before calling Connect and/or ClientBegin
;1405:	// for clients on a map_restart
;1406:	if ( level.numPlayingClients == 0 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 0
NEI4 $723
line 1407
;1407:		return;
ADDRGP4 $722
JUMPV
LABELV $723
line 1410
;1408:	}
;1409:
;1410:	if ( g_gametype.integer == GT_TOURNAMENT ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $726
line 1413
;1411:
;1412:		// pull in a spectator if needed
;1413:		if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
GEI4 $729
line 1414
;1414:			AddTournamentPlayer();
ADDRGP4 AddTournamentPlayer
CALLV
pop
line 1415
;1415:		}
LABELV $729
line 1418
;1416:
;1417:		// if we don't have two players, go back to "waiting for players"
;1418:		if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
EQI4 $732
line 1419
;1419:			if ( level.warmupTime != -1 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 -1
EQI4 $722
line 1420
;1420:				level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1421
;1421:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $435
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1422
;1422:				G_LogPrintf( "Warmup:\n" );
ADDRGP4 $740
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1423
;1423:			}
line 1424
;1424:			return;
ADDRGP4 $722
JUMPV
LABELV $732
line 1427
;1425:		}
;1426:
;1427:		if ( level.warmupTime == 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $741
line 1428
;1428:			return;
ADDRGP4 $722
JUMPV
LABELV $741
line 1432
;1429:		}
;1430:
;1431:		// if the warmup is changed at the console, restart it
;1432:		if ( g_warmup.modificationCount != level.warmupModificationCount ) {
ADDRGP4 g_warmup+4
INDIRI4
ADDRGP4 level+352
INDIRI4
EQI4 $744
line 1433
;1433:			level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+352
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 1434
;1434:			level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1435
;1435:		}
LABELV $744
line 1438
;1436:
;1437:		// if all players have arrived, start the countdown
;1438:		if ( level.warmupTime < 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
GEI4 $751
line 1439
;1439:			if ( level.numPlayingClients == 2 ) {
ADDRGP4 level+80
INDIRI4
CNSTI4 2
NEI4 $722
line 1441
;1440:				// fudge by -1 to account for extra delays
;1441:				level.warmupTime = level.time + ( g_warmup.integer - 1 ) * 1000;
ADDRLP4 0
CNSTI4 1000
ASGNI4
ADDRGP4 level+16
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRI4
ADDRGP4 g_warmup+12
INDIRI4
MULI4
ADDRLP4 0
INDIRI4
SUBI4
ADDI4
ASGNI4
line 1442
;1442:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $435
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1443
;1443:			}
line 1444
;1444:			return;
ADDRGP4 $722
JUMPV
LABELV $751
line 1448
;1445:		}
;1446:
;1447:		// if the warmup time has counted down, restart
;1448:		if ( level.time > level.warmupTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+16
INDIRI4
LEI4 $727
line 1449
;1449:			level.warmupTime += 10000;
ADDRLP4 0
ADDRGP4 level+16
ASGNP4
ADDRLP4 0
INDIRP4
ADDRLP4 0
INDIRP4
INDIRI4
CNSTI4 10000
ADDI4
ASGNI4
line 1450
;1450:			trap_Cvar_Set( "g_restarted", "1" );
ADDRGP4 $59
ARGP4
ADDRGP4 $83
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1451
;1451:			trap_SendConsoleCommand( EXEC_APPEND, "map_restart 0\n" );
CNSTI4 2
ARGI4
ADDRGP4 $515
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1452
;1452:			level.restarted = qtrue;
ADDRGP4 level+68
CNSTI4 1
ASGNI4
line 1453
;1453:			return;
ADDRGP4 $722
JUMPV
line 1455
;1454:		}
;1455:	} else if ( g_gametype.integer != GT_SINGLE_PLAYER && level.warmupTime != 0 ) {
LABELV $726
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $767
ADDRGP4 level+16
INDIRI4
CNSTI4 0
EQI4 $767
line 1457
;1456:		int		counts[TEAM_NUM_TEAMS];
;1457:		qboolean	notEnough = qfalse;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 1459
;1458:
;1459:		if ( g_gametype.integer > GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LEI4 $771
line 1460
;1460:			counts[TEAM_BLUE] = TeamCount( -1, TEAM_BLUE );
CNSTI4 -1
ARGI4
CNSTI4 2
ARGI4
ADDRLP4 20
ADDRGP4 TeamCount
CALLI4
ASGNI4
ADDRLP4 4+8
ADDRLP4 20
INDIRI4
ASGNI4
line 1461
;1461:			counts[TEAM_RED] = TeamCount( -1, TEAM_RED );
CNSTI4 -1
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 24
ADDRGP4 TeamCount
CALLI4
ASGNI4
ADDRLP4 4+4
ADDRLP4 24
INDIRI4
ASGNI4
line 1463
;1462:
;1463:			if (counts[TEAM_RED] < 1 || counts[TEAM_BLUE] < 1) {
ADDRLP4 28
CNSTI4 1
ASGNI4
ADDRLP4 4+4
INDIRI4
ADDRLP4 28
INDIRI4
LTI4 $780
ADDRLP4 4+8
INDIRI4
ADDRLP4 28
INDIRI4
GEI4 $772
LABELV $780
line 1464
;1464:				notEnough = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1465
;1465:			}
line 1466
;1466:		} else if ( level.numPlayingClients < 2 ) {
ADDRGP4 $772
JUMPV
LABELV $771
ADDRGP4 level+80
INDIRI4
CNSTI4 2
GEI4 $781
line 1467
;1467:			notEnough = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1468
;1468:		}
LABELV $781
LABELV $772
line 1470
;1469:
;1470:		if ( notEnough ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $784
line 1471
;1471:			if ( level.warmupTime != -1 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 -1
EQI4 $722
line 1472
;1472:				level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1473
;1473:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $435
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1474
;1474:				G_LogPrintf( "Warmup:\n" );
ADDRGP4 $740
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1475
;1475:			}
line 1476
;1476:			return; // still waiting for team members
ADDRGP4 $722
JUMPV
LABELV $784
line 1479
;1477:		}
;1478:
;1479:		if ( level.warmupTime == 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $791
line 1480
;1480:			return;
ADDRGP4 $722
JUMPV
LABELV $791
line 1484
;1481:		}
;1482:
;1483:		// if the warmup is changed at the console, restart it
;1484:		if ( g_warmup.modificationCount != level.warmupModificationCount ) {
ADDRGP4 g_warmup+4
INDIRI4
ADDRGP4 level+352
INDIRI4
EQI4 $794
line 1485
;1485:			level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+352
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 1486
;1486:			level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1487
;1487:		}
LABELV $794
line 1490
;1488:
;1489:		// if all players have arrived, start the countdown
;1490:		if ( level.warmupTime < 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
GEI4 $801
line 1492
;1491:			// fudge by -1 to account for extra delays
;1492:			level.warmupTime = level.time + ( g_warmup.integer - 1 ) * 1000;
ADDRLP4 20
CNSTI4 1000
ASGNI4
ADDRGP4 level+16
ADDRGP4 level+32
INDIRI4
ADDRLP4 20
INDIRI4
ADDRGP4 g_warmup+12
INDIRI4
MULI4
ADDRLP4 20
INDIRI4
SUBI4
ADDI4
ASGNI4
line 1493
;1493:			trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $435
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1494
;1494:			return;
ADDRGP4 $722
JUMPV
LABELV $801
line 1498
;1495:		}
;1496:
;1497:		// if the warmup time has counted down, restart
;1498:		if ( level.time > level.warmupTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+16
INDIRI4
LEI4 $808
line 1499
;1499:			level.warmupTime += 10000;
ADDRLP4 20
ADDRGP4 level+16
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRI4
CNSTI4 10000
ADDI4
ASGNI4
line 1500
;1500:			trap_Cvar_Set( "g_restarted", "1" );
ADDRGP4 $59
ARGP4
ADDRGP4 $83
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1501
;1501:			trap_SendConsoleCommand( EXEC_APPEND, "map_restart 0\n" );
CNSTI4 2
ARGI4
ADDRGP4 $515
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1502
;1502:			level.restarted = qtrue;
ADDRGP4 level+68
CNSTI4 1
ASGNI4
line 1503
;1503:			return;
LABELV $808
line 1505
;1504:		}
;1505:	}
LABELV $767
LABELV $727
line 1506
;1506:}
LABELV $722
endproc CheckTournament 32 8
export CheckVote
proc CheckVote 4 8
line 1514
;1507:
;1508:
;1509:/*
;1510:==================
;1511:CheckVote
;1512:==================
;1513:*/
;1514:void CheckVote( void ) {
line 1515
;1515:	if ( level.voteExecuteTime && level.voteExecuteTime < level.time ) {
ADDRGP4 level+2408
INDIRI4
CNSTI4 0
EQI4 $815
ADDRGP4 level+2408
INDIRI4
ADDRGP4 level+32
INDIRI4
GEI4 $815
line 1516
;1516:		level.voteExecuteTime = 0;
ADDRGP4 level+2408
CNSTI4 0
ASGNI4
line 1517
;1517:		trap_SendConsoleCommand( EXEC_APPEND, va("%s\n", level.voteString ) );
ADDRGP4 $821
ARGP4
ADDRGP4 level+356
ARGP4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1518
;1518:	}
LABELV $815
line 1519
;1519:	if ( !level.voteTime ) {
ADDRGP4 level+2404
INDIRI4
CNSTI4 0
NEI4 $823
line 1520
;1520:		return;
ADDRGP4 $814
JUMPV
LABELV $823
line 1522
;1521:	}
;1522:	if ( level.time - level.voteTime >= VOTE_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+2404
INDIRI4
SUBI4
CNSTI4 30000
LTI4 $826
line 1523
;1523:		trap_SendServerCommand( -1, "print \"Vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $830
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1524
;1524:	} else {
ADDRGP4 $827
JUMPV
LABELV $826
line 1526
;1525:		// ATVI Q3 1.32 Patch #9, WNF
;1526:		if ( level.voteYes > level.numVotingClients/2 ) {
ADDRGP4 level+2412
INDIRI4
ADDRGP4 level+2420
INDIRI4
CNSTI4 2
DIVI4
LEI4 $831
line 1528
;1527:			// execute the command, then remove the vote
;1528:			trap_SendServerCommand( -1, "print \"Vote passed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $835
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1529
;1529:			level.voteExecuteTime = level.time + 3000;
ADDRGP4 level+2408
ADDRGP4 level+32
INDIRI4
CNSTI4 3000
ADDI4
ASGNI4
line 1530
;1530:		} else if ( level.voteNo >= level.numVotingClients/2 ) {
ADDRGP4 $832
JUMPV
LABELV $831
ADDRGP4 level+2416
INDIRI4
ADDRGP4 level+2420
INDIRI4
CNSTI4 2
DIVI4
LTI4 $814
line 1532
;1531:			// same behavior as a timeout
;1532:			trap_SendServerCommand( -1, "print \"Vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $830
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1533
;1533:		} else {
line 1535
;1534:			// still waiting for a majority
;1535:			return;
LABELV $839
LABELV $832
line 1537
;1536:		}
;1537:	}
LABELV $827
line 1538
;1538:	level.voteTime = 0;
ADDRGP4 level+2404
CNSTI4 0
ASGNI4
line 1539
;1539:	trap_SetConfigstring( CS_VOTE_TIME, "" );
CNSTI4 8
ARGI4
ADDRGP4 $54
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1541
;1540:
;1541:}
LABELV $814
endproc CheckVote 4 8
export PrintTeam
proc PrintTeam 4 8
line 1548
;1542:
;1543:/*
;1544:==================
;1545:PrintTeam
;1546:==================
;1547:*/
;1548:void PrintTeam(int team, char *message) {
line 1551
;1549:	int i;
;1550:
;1551:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $847
JUMPV
LABELV $844
line 1552
;1552:		if (level.clients[i].sess.sessionTeam != team)
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $849
line 1553
;1553:			continue;
ADDRGP4 $845
JUMPV
LABELV $849
line 1554
;1554:		trap_SendServerCommand( i, message );
ADDRLP4 0
INDIRI4
ARGI4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1555
;1555:	}
LABELV $845
line 1551
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $847
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $844
line 1556
;1556:}
LABELV $843
endproc PrintTeam 4 8
export SetLeader
proc SetLeader 8 8
line 1563
;1557:
;1558:/*
;1559:==================
;1560:SetLeader
;1561:==================
;1562:*/
;1563:void SetLeader(int team, int client) {
line 1566
;1564:	int i;
;1565:
;1566:	if ( level.clients[client].pers.connected == CON_DISCONNECTED ) {
CNSTI4 776
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
NEI4 $852
line 1567
;1567:		PrintTeam(team, va("print \"%s is not connected\n\"", level.clients[client].pers.netname) );
ADDRGP4 $854
ARGP4
CNSTI4 776
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 512
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1568
;1568:		return;
ADDRGP4 $851
JUMPV
LABELV $852
line 1570
;1569:	}
;1570:	if (level.clients[client].sess.sessionTeam != team) {
CNSTI4 776
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $855
line 1571
;1571:		PrintTeam(team, va("print \"%s is not on the team anymore\n\"", level.clients[client].pers.netname) );
ADDRGP4 $857
ARGP4
CNSTI4 776
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 512
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1572
;1572:		return;
ADDRGP4 $851
JUMPV
LABELV $855
line 1574
;1573:	}
;1574:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $861
JUMPV
LABELV $858
line 1575
;1575:		if (level.clients[i].sess.sessionTeam != team)
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $863
line 1576
;1576:			continue;
ADDRGP4 $859
JUMPV
LABELV $863
line 1577
;1577:		if (level.clients[i].sess.teamLeader) {
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 640
ADDP4
INDIRI4
CNSTI4 0
EQI4 $865
line 1578
;1578:			level.clients[i].sess.teamLeader = qfalse;
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 640
ADDP4
CNSTI4 0
ASGNI4
line 1579
;1579:			ClientUserinfoChanged(i);
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLV
pop
line 1580
;1580:		}
LABELV $865
line 1581
;1581:	}
LABELV $859
line 1574
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $861
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $858
line 1582
;1582:	level.clients[client].sess.teamLeader = qtrue;
CNSTI4 776
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 640
ADDP4
CNSTI4 1
ASGNI4
line 1583
;1583:	ClientUserinfoChanged( client );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLV
pop
line 1584
;1584:	PrintTeam(team, va("print \"%s is the new team leader\n\"", level.clients[client].pers.netname) );
ADDRGP4 $867
ARGP4
CNSTI4 776
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 512
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1585
;1585:}
LABELV $851
endproc SetLeader 8 8
export CheckTeamLeader
proc CheckTeamLeader 4 0
line 1592
;1586:
;1587:/*
;1588:==================
;1589:CheckTeamLeader
;1590:==================
;1591:*/
;1592:void CheckTeamLeader( int team ) {
line 1595
;1593:	int i;
;1594:
;1595:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $872
JUMPV
LABELV $869
line 1596
;1596:		if (level.clients[i].sess.sessionTeam != team)
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $874
line 1597
;1597:			continue;
ADDRGP4 $870
JUMPV
LABELV $874
line 1598
;1598:		if (level.clients[i].sess.teamLeader)
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 640
ADDP4
INDIRI4
CNSTI4 0
EQI4 $876
line 1599
;1599:			break;
ADDRGP4 $871
JUMPV
LABELV $876
line 1600
;1600:	}
LABELV $870
line 1595
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $872
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $869
LABELV $871
line 1601
;1601:	if (i >= level.maxclients) {
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $878
line 1602
;1602:		for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $884
JUMPV
LABELV $881
line 1603
;1603:			if (level.clients[i].sess.sessionTeam != team)
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $886
line 1604
;1604:				continue;
ADDRGP4 $882
JUMPV
LABELV $886
line 1605
;1605:			if (!(g_entities[i].r.svFlags & SVF_BOT)) {
CNSTI4 808
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $888
line 1606
;1606:				level.clients[i].sess.teamLeader = qtrue;
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 640
ADDP4
CNSTI4 1
ASGNI4
line 1607
;1607:				break;
ADDRGP4 $883
JUMPV
LABELV $888
line 1609
;1608:			}
;1609:		}
LABELV $882
line 1602
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $884
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $881
LABELV $883
line 1610
;1610:		for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $895
JUMPV
LABELV $892
line 1611
;1611:			if (level.clients[i].sess.sessionTeam != team)
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $897
line 1612
;1612:				continue;
ADDRGP4 $893
JUMPV
LABELV $897
line 1613
;1613:			level.clients[i].sess.teamLeader = qtrue;
CNSTI4 776
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 640
ADDP4
CNSTI4 1
ASGNI4
line 1614
;1614:			break;
ADDRGP4 $894
JUMPV
LABELV $893
line 1610
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $895
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $892
LABELV $894
line 1616
;1615:		}
;1616:	}
LABELV $878
line 1617
;1617:}
LABELV $868
endproc CheckTeamLeader 4 0
export CheckTeamVote
proc CheckTeamVote 20 12
line 1624
;1618:
;1619:/*
;1620:==================
;1621:CheckTeamVote
;1622:==================
;1623:*/
;1624:void CheckTeamVote( int team ) {
line 1627
;1625:	int cs_offset;
;1626:
;1627:	if ( team == TEAM_RED )
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $900
line 1628
;1628:		cs_offset = 0;
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $901
JUMPV
LABELV $900
line 1629
;1629:	else if ( team == TEAM_BLUE )
ADDRFP4 0
INDIRI4
CNSTI4 2
NEI4 $899
line 1630
;1630:		cs_offset = 1;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1632
;1631:	else
;1632:		return;
LABELV $903
LABELV $901
line 1634
;1633:
;1634:	if ( !level.teamVoteTime[cs_offset] ) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+4472
ADDP4
INDIRI4
CNSTI4 0
NEI4 $904
line 1635
;1635:		return;
ADDRGP4 $899
JUMPV
LABELV $904
line 1637
;1636:	}
;1637:	if ( level.time - level.teamVoteTime[cs_offset] >= VOTE_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+4472
ADDP4
INDIRI4
SUBI4
CNSTI4 30000
LTI4 $907
line 1638
;1638:		trap_SendServerCommand( -1, "print \"Team vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $911
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1639
;1639:	} else {
ADDRGP4 $908
JUMPV
LABELV $907
line 1640
;1640:		if ( level.teamVoteYes[cs_offset] > level.numteamVotingClients[cs_offset]/2 ) {
ADDRLP4 4
CNSTI4 2
ASGNI4
ADDRLP4 8
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRI4
LSHI4
ASGNI4
ADDRLP4 8
INDIRI4
ADDRGP4 level+4480
ADDP4
INDIRI4
ADDRLP4 8
INDIRI4
ADDRGP4 level+4496
ADDP4
INDIRI4
ADDRLP4 4
INDIRI4
DIVI4
LEI4 $912
line 1642
;1641:			// execute the command, then remove the vote
;1642:			trap_SendServerCommand( -1, "print \"Team vote passed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $916
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1644
;1643:			//
;1644:			if ( !Q_strncmp( "leader", level.teamVoteString[cs_offset], 6) ) {
ADDRGP4 $919
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+2424
ADDP4
ARGP4
CNSTI4 6
ARGI4
ADDRLP4 12
ADDRGP4 Q_strncmp
CALLI4
ASGNI4
ADDRLP4 12
INDIRI4
CNSTI4 0
NEI4 $917
line 1646
;1645:				//set the team leader
;1646:				SetLeader(team, atoi(level.teamVoteString[cs_offset] + 7));
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+2424+7
ADDP4
ARGP4
ADDRLP4 16
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 16
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 1647
;1647:			}
ADDRGP4 $913
JUMPV
LABELV $917
line 1648
;1648:			else {
line 1649
;1649:				trap_SendConsoleCommand( EXEC_APPEND, va("%s\n", level.teamVoteString[cs_offset] ) );
ADDRGP4 $821
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+2424
ADDP4
ARGP4
ADDRLP4 16
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1650
;1650:			}
line 1651
;1651:		} else if ( level.teamVoteNo[cs_offset] >= level.numteamVotingClients[cs_offset]/2 ) {
ADDRGP4 $913
JUMPV
LABELV $912
ADDRLP4 12
CNSTI4 2
ASGNI4
ADDRLP4 16
ADDRLP4 0
INDIRI4
ADDRLP4 12
INDIRI4
LSHI4
ASGNI4
ADDRLP4 16
INDIRI4
ADDRGP4 level+4488
ADDP4
INDIRI4
ADDRLP4 16
INDIRI4
ADDRGP4 level+4496
ADDP4
INDIRI4
ADDRLP4 12
INDIRI4
DIVI4
LTI4 $899
line 1653
;1652:			// same behavior as a timeout
;1653:			trap_SendServerCommand( -1, "print \"Team vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $911
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1654
;1654:		} else {
line 1656
;1655:			// still waiting for a majority
;1656:			return;
LABELV $925
LABELV $913
line 1658
;1657:		}
;1658:	}
LABELV $908
line 1659
;1659:	level.teamVoteTime[cs_offset] = 0;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+4472
ADDP4
CNSTI4 0
ASGNI4
line 1660
;1660:	trap_SetConfigstring( CS_TEAMVOTE_TIME + cs_offset, "" );
ADDRLP4 0
INDIRI4
CNSTI4 12
ADDI4
ARGI4
ADDRGP4 $54
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1662
;1661:
;1662:}
LABELV $899
endproc CheckTeamVote 20 12
data
align 4
LABELV $930
byte 4 -1
export CheckCvars
code
proc CheckCvars 4 8
line 1670
;1663:
;1664:
;1665:/*
;1666:==================
;1667:CheckCvars
;1668:==================
;1669:*/
;1670:void CheckCvars( void ) {
line 1673
;1671:	static int lastMod = -1;
;1672:
;1673:	if ( g_password.modificationCount != lastMod ) {
ADDRGP4 g_password+4
INDIRI4
ADDRGP4 $930
INDIRI4
EQI4 $931
line 1674
;1674:		lastMod = g_password.modificationCount;
ADDRGP4 $930
ADDRGP4 g_password+4
INDIRI4
ASGNI4
line 1675
;1675:		if ( *g_password.string && Q_stricmp( g_password.string, "none" ) ) {
ADDRGP4 g_password+16
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $935
ADDRGP4 g_password+16
ARGP4
ADDRGP4 $939
ARGP4
ADDRLP4 0
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $935
line 1676
;1676:			trap_Cvar_Set( "g_needpass", "1" );
ADDRGP4 $84
ARGP4
ADDRGP4 $83
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1677
;1677:		} else {
ADDRGP4 $936
JUMPV
LABELV $935
line 1678
;1678:			trap_Cvar_Set( "g_needpass", "0" );
ADDRGP4 $84
ARGP4
ADDRGP4 $60
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1679
;1679:		}
LABELV $936
line 1680
;1680:	}
LABELV $931
line 1681
;1681:}
LABELV $929
endproc CheckCvars 4 8
export G_RunThink
proc G_RunThink 8 4
line 1690
;1682:
;1683:/*
;1684:=============
;1685:G_RunThink
;1686:
;1687:Runs thinking code for this frame if necessary
;1688:=============
;1689:*/
;1690:void G_RunThink (gentity_t *ent) {
line 1693
;1691:	float	thinktime;
;1692:
;1693:	thinktime = ent->nextthink;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
INDIRI4
CVIF4 4
ASGNF4
line 1694
;1694:	if (thinktime <= 0) {
ADDRLP4 0
INDIRF4
CNSTF4 0
GTF4 $941
line 1695
;1695:		return;
ADDRGP4 $940
JUMPV
LABELV $941
line 1697
;1696:	}
;1697:	if (thinktime > level.time) {
ADDRLP4 0
INDIRF4
ADDRGP4 level+32
INDIRI4
CVIF4 4
LEF4 $943
line 1698
;1698:		return;
ADDRGP4 $940
JUMPV
LABELV $943
line 1701
;1699:	}
;1700:	
;1701:	ent->nextthink = 0;
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
CNSTI4 0
ASGNI4
line 1702
;1702:	if (!ent->think) {
ADDRFP4 0
INDIRP4
CNSTI4 692
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $946
line 1703
;1703:		G_Error ( "NULL ent->think");
ADDRGP4 $948
ARGP4
ADDRGP4 G_Error
CALLV
pop
line 1704
;1704:	}
LABELV $946
line 1705
;1705:	ent->think (ent);
ADDRLP4 4
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 4
INDIRP4
CNSTI4 692
ADDP4
INDIRP4
CALLV
pop
line 1706
;1706:}
LABELV $940
endproc G_RunThink 8 4
export G_RunFrame
proc G_RunFrame 44 12
line 1715
;1707:
;1708:/*
;1709:================
;1710:G_RunFrame
;1711:
;1712:Advances the non-player objects in the world
;1713:================
;1714:*/
;1715:void G_RunFrame( int levelTime ) {
line 1722
;1716:	int			i;
;1717:	gentity_t	*ent;
;1718:	int			msec;
;1719:int start, end;
;1720:
;1721:	// if we are waiting for the level to restart, do nothing
;1722:	if ( level.restarted ) {
ADDRGP4 level+68
INDIRI4
CNSTI4 0
EQI4 $950
line 1723
;1723:		return;
ADDRGP4 $949
JUMPV
LABELV $950
line 1726
;1724:	}
;1725:
;1726:	level.framenum++;
ADDRLP4 20
ADDRGP4 level+28
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1727
;1727:	level.previousTime = level.time;
ADDRGP4 level+36
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1728
;1728:	level.time = levelTime;
ADDRGP4 level+32
ADDRFP4 0
INDIRI4
ASGNI4
line 1729
;1729:	msec = level.time - level.previousTime;
ADDRLP4 16
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+36
INDIRI4
SUBI4
ASGNI4
line 1732
;1730:
;1731:	// get any cvar changes
;1732:	G_UpdateCvars();
ADDRGP4 G_UpdateCvars
CALLV
pop
line 1737
;1733:
;1734:	//
;1735:	// go through all allocated objects
;1736:	//
;1737:	start = trap_Milliseconds();
ADDRLP4 24
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRLP4 8
ADDRLP4 24
INDIRI4
ASGNI4
line 1738
;1738:	ent = &g_entities[0];
ADDRLP4 0
ADDRGP4 g_entities
ASGNP4
line 1739
;1739:	for (i=0 ; i<level.num_entities ; i++, ent++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $962
JUMPV
LABELV $959
line 1740
;1740:		if ( !ent->inuse ) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $964
line 1741
;1741:			continue;
ADDRGP4 $960
JUMPV
LABELV $964
line 1745
;1742:		}
;1743:
;1744:		// clear events that are too old
;1745:		if ( level.time - ent->eventTime > EVENT_VALID_MSEC ) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 552
ADDP4
INDIRI4
SUBI4
CNSTI4 300
LEI4 $966
line 1746
;1746:			if ( ent->s.event ) {
ADDRLP4 0
INDIRP4
CNSTI4 180
ADDP4
INDIRI4
CNSTI4 0
EQI4 $969
line 1747
;1747:				ent->s.event = 0;	// &= EV_EVENT_BITS;
ADDRLP4 0
INDIRP4
CNSTI4 180
ADDP4
CNSTI4 0
ASGNI4
line 1748
;1748:				if ( ent->client ) {
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $971
line 1749
;1749:					ent->client->ps.externalEvent = 0;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 128
ADDP4
CNSTI4 0
ASGNI4
line 1753
;1750:					// predicted events should never be set to zero
;1751:					//ent->client->ps.events[0] = 0;
;1752:					//ent->client->ps.events[1] = 0;
;1753:				}
LABELV $971
line 1754
;1754:			}
LABELV $969
line 1755
;1755:			if ( ent->freeAfterEvent ) {
ADDRLP4 0
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $973
line 1757
;1756:				// tempEntities or dropped items completely go away after their event
;1757:				G_FreeEntity( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_FreeEntity
CALLV
pop
line 1758
;1758:				continue;
ADDRGP4 $960
JUMPV
LABELV $973
line 1759
;1759:			} else if ( ent->unlinkAfterEvent ) {
ADDRLP4 0
INDIRP4
CNSTI4 560
ADDP4
INDIRI4
CNSTI4 0
EQI4 $975
line 1761
;1760:				// items that will respawn will hide themselves after their pickup event
;1761:				ent->unlinkAfterEvent = qfalse;
ADDRLP4 0
INDIRP4
CNSTI4 560
ADDP4
CNSTI4 0
ASGNI4
line 1762
;1762:				trap_UnlinkEntity( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_UnlinkEntity
CALLV
pop
line 1763
;1763:			}
LABELV $975
line 1764
;1764:		}
LABELV $966
line 1767
;1765:
;1766:		// temporary entities don't think
;1767:		if ( ent->freeAfterEvent ) {
ADDRLP4 0
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $977
line 1768
;1768:			continue;
ADDRGP4 $960
JUMPV
LABELV $977
line 1771
;1769:		}
;1770:
;1771:		if ( !ent->r.linked && ent->neverFree ) {
ADDRLP4 32
CNSTI4 0
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 416
ADDP4
INDIRI4
ADDRLP4 32
INDIRI4
NEI4 $979
ADDRLP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRI4
ADDRLP4 32
INDIRI4
EQI4 $979
line 1772
;1772:			continue;
ADDRGP4 $960
JUMPV
LABELV $979
line 1775
;1773:		}
;1774:
;1775:		if ( ent->s.eType == ET_MISSILE ) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 3
NEI4 $981
line 1776
;1776:			G_RunMissile( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunMissile
CALLV
pop
line 1777
;1777:			continue;
ADDRGP4 $960
JUMPV
LABELV $981
line 1780
;1778:		}
;1779:
;1780:		if ( ent->s.eType == ET_ITEM || ent->physicsObject ) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 2
EQI4 $985
ADDRLP4 0
INDIRP4
CNSTI4 564
ADDP4
INDIRI4
CNSTI4 0
EQI4 $983
LABELV $985
line 1781
;1781:			G_RunItem( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunItem
CALLV
pop
line 1782
;1782:			continue;
ADDRGP4 $960
JUMPV
LABELV $983
line 1785
;1783:		}
;1784:
;1785:		if ( ent->s.eType == ET_MOVER ) {
ADDRLP4 40
CNSTI4 4
ASGNI4
ADDRLP4 0
INDIRP4
ADDRLP4 40
INDIRI4
ADDP4
INDIRI4
ADDRLP4 40
INDIRI4
NEI4 $986
line 1786
;1786:			G_RunMover( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunMover
CALLV
pop
line 1787
;1787:			continue;
ADDRGP4 $960
JUMPV
LABELV $986
line 1790
;1788:		}
;1789:
;1790:		if ( i < MAX_CLIENTS ) {
ADDRLP4 4
INDIRI4
CNSTI4 64
GEI4 $988
line 1791
;1791:			G_RunClient( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunClient
CALLV
pop
line 1792
;1792:			continue;
ADDRGP4 $960
JUMPV
LABELV $988
line 1795
;1793:		}
;1794:
;1795:		G_RunThink( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunThink
CALLV
pop
line 1796
;1796:	}
LABELV $960
line 1739
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
ASGNP4
LABELV $962
ADDRLP4 4
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $959
line 1797
;1797:end = trap_Milliseconds();
ADDRLP4 28
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 28
INDIRI4
ASGNI4
line 1799
;1798:
;1799:start = trap_Milliseconds();
ADDRLP4 32
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRLP4 8
ADDRLP4 32
INDIRI4
ASGNI4
line 1801
;1800:	// perform final fixups on the players
;1801:	ent = &g_entities[0];
ADDRLP4 0
ADDRGP4 g_entities
ASGNP4
line 1802
;1802:	for (i=0 ; i < level.maxclients ; i++, ent++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $993
JUMPV
LABELV $990
line 1803
;1803:		if ( ent->inuse ) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $995
line 1804
;1804:			ClientEndFrame( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ClientEndFrame
CALLV
pop
line 1805
;1805:		}
LABELV $995
line 1806
;1806:	}
LABELV $991
line 1802
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
ASGNP4
LABELV $993
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $990
line 1807
;1807:end = trap_Milliseconds();
ADDRLP4 36
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 36
INDIRI4
ASGNI4
line 1810
;1808:
;1809:	// see if it is time to do a tournement restart
;1810:	CheckTournament();
ADDRGP4 CheckTournament
CALLV
pop
line 1813
;1811:
;1812:	// see if it is time to end the level
;1813:	CheckExitRules();
ADDRGP4 CheckExitRules
CALLV
pop
line 1816
;1814:
;1815:	// update to team status?
;1816:	CheckTeamStatus();
ADDRGP4 CheckTeamStatus
CALLV
pop
line 1819
;1817:
;1818:	// cancel vote if timed out
;1819:	CheckVote();
ADDRGP4 CheckVote
CALLV
pop
line 1822
;1820:
;1821:	// check team votes
;1822:	CheckTeamVote( TEAM_RED );
CNSTI4 1
ARGI4
ADDRGP4 CheckTeamVote
CALLV
pop
line 1823
;1823:	CheckTeamVote( TEAM_BLUE );
CNSTI4 2
ARGI4
ADDRGP4 CheckTeamVote
CALLV
pop
line 1826
;1824:
;1825:	// for tracking changes
;1826:	CheckCvars();
ADDRGP4 CheckCvars
CALLV
pop
line 1828
;1827:
;1828:	if (g_listEntity.integer) {
ADDRGP4 g_listEntity+12
INDIRI4
CNSTI4 0
EQI4 $997
line 1829
;1829:		for (i = 0; i < MAX_GENTITIES; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
LABELV $1000
line 1830
;1830:			G_Printf("%4i: %s\n", i, g_entities[i].classname);
ADDRGP4 $1004
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
CNSTI4 808
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 g_entities+524
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 1831
;1831:		}
LABELV $1001
line 1829
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 1024
LTI4 $1000
line 1832
;1832:		trap_Cvar_Set("g_listEntity", "0");
ADDRGP4 $110
ARGP4
ADDRGP4 $60
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1833
;1833:	}
LABELV $997
line 1834
;1834:}
LABELV $949
endproc G_RunFrame 44 12
bss
export g_listEntity
align 4
LABELV g_listEntity
skip 272
export g_podiumDrop
align 4
LABELV g_podiumDrop
skip 272
export g_podiumDist
align 4
LABELV g_podiumDist
skip 272
export g_logSync
align 4
LABELV g_logSync
skip 272
export g_log
align 4
LABELV g_log
skip 272
export g_clients
align 4
LABELV g_clients
skip 49664
import trap_SnapVector
import trap_GeneticParentsAndChildSelection
import trap_BotResetWeaponState
import trap_BotFreeWeaponState
import trap_BotAllocWeaponState
import trap_BotLoadWeaponWeights
import trap_BotGetWeaponInfo
import trap_BotChooseBestFightWeapon
import trap_BotAddAvoidSpot
import trap_BotInitMoveState
import trap_BotFreeMoveState
import trap_BotAllocMoveState
import trap_BotPredictVisiblePosition
import trap_BotMovementViewTarget
import trap_BotReachabilityArea
import trap_BotResetLastAvoidReach
import trap_BotResetAvoidReach
import trap_BotMoveInDirection
import trap_BotMoveToGoal
import trap_BotResetMoveState
import trap_BotFreeGoalState
import trap_BotAllocGoalState
import trap_BotMutateGoalFuzzyLogic
import trap_BotSaveGoalFuzzyLogic
import trap_BotInterbreedGoalFuzzyLogic
import trap_BotFreeItemWeights
import trap_BotLoadItemWeights
import trap_BotUpdateEntityItems
import trap_BotInitLevelItems
import trap_BotSetAvoidGoalTime
import trap_BotAvoidGoalTime
import trap_BotGetLevelItemGoal
import trap_BotGetMapLocationGoal
import trap_BotGetNextCampSpotGoal
import trap_BotItemGoalInVisButNotVisible
import trap_BotTouchingGoal
import trap_BotChooseNBGItem
import trap_BotChooseLTGItem
import trap_BotGetSecondGoal
import trap_BotGetTopGoal
import trap_BotGoalName
import trap_BotDumpGoalStack
import trap_BotDumpAvoidGoals
import trap_BotEmptyGoalStack
import trap_BotPopGoal
import trap_BotPushGoal
import trap_BotResetAvoidGoals
import trap_BotRemoveFromAvoidGoals
import trap_BotResetGoalState
import trap_BotSetChatName
import trap_BotSetChatGender
import trap_BotLoadChatFile
import trap_BotReplaceSynonyms
import trap_UnifyWhiteSpaces
import trap_BotMatchVariable
import trap_BotFindMatch
import trap_StringContains
import trap_BotGetChatMessage
import trap_BotEnterChat
import trap_BotChatLength
import trap_BotReplyChat
import trap_BotNumInitialChats
import trap_BotInitialChat
import trap_BotNumConsoleMessages
import trap_BotNextConsoleMessage
import trap_BotRemoveConsoleMessage
import trap_BotQueueConsoleMessage
import trap_BotFreeChatState
import trap_BotAllocChatState
import trap_Characteristic_String
import trap_Characteristic_BInteger
import trap_Characteristic_Integer
import trap_Characteristic_BFloat
import trap_Characteristic_Float
import trap_BotFreeCharacter
import trap_BotLoadCharacter
import trap_EA_ResetInput
import trap_EA_GetInput
import trap_EA_EndRegular
import trap_EA_View
import trap_EA_Move
import trap_EA_DelayedJump
import trap_EA_Jump
import trap_EA_SelectWeapon
import trap_EA_MoveRight
import trap_EA_MoveLeft
import trap_EA_MoveBack
import trap_EA_MoveForward
import trap_EA_MoveDown
import trap_EA_MoveUp
import trap_EA_Crouch
import trap_EA_Respawn
import trap_EA_Use
import trap_EA_Attack
import trap_EA_Talk
import trap_EA_Gesture
import trap_EA_Action
import trap_EA_Command
import trap_EA_SayTeam
import trap_EA_Say
import trap_AAS_PredictClientMovement
import trap_AAS_Swimming
import trap_AAS_AlternativeRouteGoals
import trap_AAS_PredictRoute
import trap_AAS_EnableRoutingArea
import trap_AAS_AreaTravelTimeToGoalArea
import trap_AAS_AreaReachability
import trap_AAS_IntForBSPEpairKey
import trap_AAS_FloatForBSPEpairKey
import trap_AAS_VectorForBSPEpairKey
import trap_AAS_ValueForBSPEpairKey
import trap_AAS_NextBSPEntity
import trap_AAS_PointContents
import trap_AAS_TraceAreas
import trap_AAS_PointReachabilityAreaIndex
import trap_AAS_PointAreaNum
import trap_AAS_Time
import trap_AAS_PresenceTypeBoundingBox
import trap_AAS_Initialized
import trap_AAS_EntityInfo
import trap_AAS_AreaInfo
import trap_AAS_BBoxAreas
import trap_BotUserCommand
import trap_BotGetServerCommand
import trap_BotGetSnapshotEntity
import trap_BotLibTest
import trap_BotLibUpdateEntity
import trap_BotLibLoadMap
import trap_BotLibStartFrame
import trap_BotLibDefine
import trap_BotLibVarGet
import trap_BotLibVarSet
import trap_BotLibShutdown
import trap_BotLibSetup
import trap_DebugPolygonDelete
import trap_DebugPolygonCreate
import trap_GetEntityToken
import trap_GetUsercmd
import trap_BotFreeClient
import trap_BotAllocateClient
import trap_EntityContact
import trap_EntitiesInBox
import trap_UnlinkEntity
import trap_LinkEntity
import trap_AreasConnected
import trap_AdjustAreaPortalState
import trap_InPVSIgnorePortals
import trap_InPVS
import trap_PointContents
import trap_Trace
import trap_SetBrushModel
import trap_GetServerinfo
import trap_SetUserinfo
import trap_GetUserinfo
import trap_GetConfigstring
import trap_SetConfigstring
import trap_SendServerCommand
import trap_DropClient
import trap_LocateGameData
import trap_Cvar_VariableStringBuffer
import trap_Cvar_VariableValue
import trap_Cvar_VariableIntegerValue
import trap_Cvar_Set
import trap_Cvar_Update
import trap_Cvar_Register
import trap_SendConsoleCommand
import trap_FS_Seek
import trap_FS_GetFileList
import trap_FS_FCloseFile
import trap_FS_Write
import trap_FS_Read
import trap_FS_FOpenFile
import trap_Args
import trap_Argv
import trap_Argc
import trap_Milliseconds
import trap_Error
import trap_Printf
import g_proxMineTimeout
import g_singlePlayer
import g_enableBreath
import g_enableDust
export g_rankings
align 4
LABELV g_rankings
skip 272
export pmove_msec
align 4
LABELV pmove_msec
skip 272
export pmove_fixed
align 4
LABELV pmove_fixed
skip 272
export g_smoothClients
align 4
LABELV g_smoothClients
skip 272
import g_blueteam
import g_redteam
import g_cubeTimeout
import g_obeliskRespawnDelay
import g_obeliskRegenAmount
import g_obeliskRegenPeriod
import g_obeliskHealth
export g_filterBan
align 4
LABELV g_filterBan
skip 272
export g_banIPs
align 4
LABELV g_banIPs
skip 272
export g_teamForceBalance
align 4
LABELV g_teamForceBalance
skip 272
export g_teamAutoJoin
align 4
LABELV g_teamAutoJoin
skip 272
export g_allowVote
align 4
LABELV g_allowVote
skip 272
export g_blood
align 4
LABELV g_blood
skip 272
export g_doWarmup
align 4
LABELV g_doWarmup
skip 272
export g_warmup
align 4
LABELV g_warmup
skip 272
export g_motd
align 4
LABELV g_motd
skip 272
export g_synchronousClients
align 4
LABELV g_synchronousClients
skip 272
export g_weaponTeamRespawn
align 4
LABELV g_weaponTeamRespawn
skip 272
export g_weaponRespawn
align 4
LABELV g_weaponRespawn
skip 272
export g_debugDamage
align 4
LABELV g_debugDamage
skip 272
export g_debugAlloc
align 4
LABELV g_debugAlloc
skip 272
export g_debugMove
align 4
LABELV g_debugMove
skip 272
export g_inactivity
align 4
LABELV g_inactivity
skip 272
export g_forcerespawn
align 4
LABELV g_forcerespawn
skip 272
export g_quadfactor
align 4
LABELV g_quadfactor
skip 272
export g_knockback
align 4
LABELV g_knockback
skip 272
export g_speed
align 4
LABELV g_speed
skip 272
export g_gravity
align 4
LABELV g_gravity
skip 272
export g_needpass
align 4
LABELV g_needpass
skip 272
export g_password
align 4
LABELV g_password
skip 272
export g_friendlyFire
align 4
LABELV g_friendlyFire
skip 272
export g_capturelimit
align 4
LABELV g_capturelimit
skip 272
export g_timelimit
align 4
LABELV g_timelimit
skip 272
export g_fraglimit
align 4
LABELV g_fraglimit
skip 272
export g_dmflags
align 4
LABELV g_dmflags
skip 272
export g_restarted
align 4
LABELV g_restarted
skip 272
export g_maxGameClients
align 4
LABELV g_maxGameClients
skip 272
export g_maxclients
align 4
LABELV g_maxclients
skip 272
export g_cheats
align 4
LABELV g_cheats
skip 272
export g_dedicated
align 4
LABELV g_dedicated
skip 272
export g_gametype
align 4
LABELV g_gametype
skip 272
export g_entities
align 4
LABELV g_entities
skip 827392
export level
align 4
LABELV level
skip 9212
import Pickup_Team
import CheckTeamStatus
import TeamplayInfoMessage
import Team_GetLocationMsg
import Team_GetLocation
import SelectCTFSpawnPoint
import Team_FreeEntity
import Team_ReturnFlag
import Team_InitGame
import Team_CheckHurtCarrier
import Team_FragBonuses
import Team_DroppedFlagThink
import AddTeamScore
import TeamColorString
import OtherTeamName
import TeamName
import OtherTeam
import BotTestAAS
import BotAIStartFrame
import BotAIShutdownClient
import BotAISetupClient
import BotAILoadMap
import BotAIShutdown
import BotAISetup
import BotInterbreedEndMatch
import Svcmd_BotList_f
import Svcmd_AddBot_f
import G_BotConnect
import G_RemoveQueuedBotBegin
import G_CheckBotSpawn
import G_GetBotInfoByName
import G_GetBotInfoByNumber
import G_InitBots
import Svcmd_AbortPodium_f
import SpawnModelsOnVictoryPads
import UpdateTournamentInfo
import G_WriteSessionData
import G_InitWorldSession
import G_InitSessionData
import G_ReadSessionData
import Svcmd_GameMem_f
import G_InitMemory
import G_Alloc
import CheckObeliskAttack
import Team_CheckDroppedItem
import OnSameTeam
import G_RunClient
import ClientEndFrame
import ClientThink
import ClientCommand
import ClientBegin
import ClientDisconnect
import ClientUserinfoChanged
import ClientConnect
import DeathmatchScoreboardMessage
import G_SetStats
import FireWeapon
import G_FilterPacket
import G_ProcessIPBans
import ConsoleCommand
import SpotWouldTelefrag
import AddScore
import player_die
import ClientSpawn
import InitBodyQue
import InitClientResp
import InitClientPersistant
import respawn
import CopyToBodyQue
import SelectSpawnPoint
import SetClientViewAngle
import PickTeam
import TeamLeader
import TeamCount
import Weapon_HookThink
import Weapon_HookFree
import CheckGauntletAttack
import SnapVectorTowards
import CalcMuzzlePoint
import LogAccuracyHit
import TeleportPlayer
import trigger_teleporter_touch
import Touch_DoorTrigger
import G_RunMover
import fire_grapple
import fire_bfg
import fire_rocket
import fire_grenade
import fire_plasma
import fire_blaster
import G_RunMissile
import TossClientCubes
import TossClientItems
import body_die
import G_InvulnerabilityEffect
import G_RadiusDamage
import G_Damage
import CanDamage
import BuildShaderStateConfig
import AddRemap
import G_SetOrigin
import G_AddEvent
import G_AddPredictableEvent
import vectoyaw
import vtos
import tv
import G_TouchSolids
import G_TouchTriggers
import G_EntitiesFree
import G_FreeEntity
import G_Sound
import G_TempEntity
import G_Spawn
import G_InitGentity
import G_SetMovedir
import G_UseTargets
import G_PickTarget
import G_Find
import G_KillBox
import G_TeamCommand
import G_SoundIndex
import G_ModelIndex
import SaveRegisteredItems
import RegisterItem
import ClearRegisteredItems
import Touch_Item
import Add_Ammo
import ArmorIndex
import Think_Weapon
import FinishSpawningItem
import G_SpawnItem
import SetRespawn
import LaunchItem
import Drop_Item
import PrecacheItem
import UseHoldableItem
import RespawnItem
import G_RunItem
import G_CheckTeamItems
import Cmd_FollowCycle_f
import SetTeam
import BroadcastTeamChange
import StopFollowing
import Cmd_Score_f
import G_NewString
import G_SpawnEntitiesFromString
import G_SpawnVector
import G_SpawnInt
import G_SpawnFloat
import G_SpawnString
import BG_PlayerTouchesItem
import BG_PlayerStateToEntityStateExtraPolate
import BG_PlayerStateToEntityState
import BG_TouchJumpPad
import BG_AddPredictableEventToPlayerstate
import BG_EvaluateTrajectoryDelta
import BG_EvaluateTrajectory
import BG_CanItemBeGrabbed
import BG_FindItemForHoldable
import BG_FindItemForPowerup
import BG_FindItemForWeapon
import BG_FindItem
import bg_numItems
import bg_itemlist
import Pmove
import PM_UpdateViewAngles
import Info_NextPair
import Info_Validate
import Info_SetValueForKey_Big
import Info_SetValueForKey
import Info_RemoveKey_big
import Info_RemoveKey
import Info_ValueForKey
import va
import Q_CleanStr
import Q_PrintStrlen
import Q_strcat
import Q_strncpyz
import Q_strrchr
import Q_strupr
import Q_strlwr
import Q_stricmpn
import Q_strncmp
import Q_stricmp
import Q_isalpha
import Q_isupper
import Q_islower
import Q_isprint
import Com_sprintf
import Parse3DMatrix
import Parse2DMatrix
import Parse1DMatrix
import SkipRestOfLine
import SkipBracedSection
import COM_MatchToken
import COM_ParseWarning
import COM_ParseError
import COM_Compress
import COM_ParseExt
import COM_Parse
import COM_GetCurrentParseLine
import COM_BeginParseSession
import COM_DefaultExtension
import COM_StripExtension
import COM_SkipPath
import Com_Clamp
import PerpendicularVector
import AngleVectors
import MatrixMultiply
import MakeNormalVectors
import RotateAroundDirection
import RotatePointAroundVector
import ProjectPointOnPlane
import PlaneFromPoints
import AngleDelta
import AngleNormalize180
import AngleNormalize360
import AnglesSubtract
import AngleSubtract
import LerpAngle
import AngleMod
import BoxOnPlaneSide
import SetPlaneSignbits
import AxisCopy
import AxisClear
import AnglesToAxis
import vectoangles
import Q_crandom
import Q_random
import Q_rand
import Q_acos
import Q_log2
import VectorRotate
import Vector4Scale
import VectorNormalize2
import VectorNormalize
import CrossProduct
import VectorInverse
import VectorNormalizeFast
import DistanceSquared
import Distance
import VectorLengthSquared
import VectorLength
import VectorCompare
import AddPointToBounds
import ClearBounds
import RadiusFromBounds
import NormalizeColor
import ColorBytes4
import ColorBytes3
import _VectorMA
import _VectorScale
import _VectorCopy
import _VectorAdd
import _VectorSubtract
import _DotProduct
import ByteToDir
import DirToByte
import ClampShort
import ClampChar
import Q_rsqrt
import Q_fabs
import axisDefault
import vec3_origin
import g_color_table
import colorDkGrey
import colorMdGrey
import colorLtGrey
import colorWhite
import colorCyan
import colorMagenta
import colorYellow
import colorBlue
import colorGreen
import colorRed
import colorBlack
import bytedirs
import Com_Memcpy
import Com_Memset
import Hunk_Alloc
import FloatSwap
import LongSwap
import ShortSwap
import acos
import fabs
import abs
import tan
import atan2
import cos
import sin
import sqrt
import floor
import ceil
import memcpy
import memset
import memmove
import sscanf
import vsprintf
import _atoi
import atoi
import _atof
import atof
import toupper
import tolower
import strncpy
import strstr
import strchr
import strcmp
import strcpy
import strcat
import strlen
import rand
import srand
import qsort
lit
align 1
LABELV $1004
byte 1 37
byte 1 52
byte 1 105
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $948
byte 1 78
byte 1 85
byte 1 76
byte 1 76
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 45
byte 1 62
byte 1 116
byte 1 104
byte 1 105
byte 1 110
byte 1 107
byte 1 0
align 1
LABELV $939
byte 1 110
byte 1 111
byte 1 110
byte 1 101
byte 1 0
align 1
LABELV $919
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $916
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $911
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 102
byte 1 97
byte 1 105
byte 1 108
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $867
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 110
byte 1 101
byte 1 119
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $857
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 111
byte 1 110
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 97
byte 1 110
byte 1 121
byte 1 109
byte 1 111
byte 1 114
byte 1 101
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $854
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 99
byte 1 111
byte 1 110
byte 1 110
byte 1 101
byte 1 99
byte 1 116
byte 1 101
byte 1 100
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $835
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $830
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 102
byte 1 97
byte 1 105
byte 1 108
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $821
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $740
byte 1 87
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 58
byte 1 10
byte 1 0
align 1
LABELV $721
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $715
byte 1 67
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $714
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $704
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $691
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $685
byte 1 70
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $684
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $671
byte 1 84
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $670
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $580
byte 1 115
byte 1 99
byte 1 111
byte 1 114
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 112
byte 1 105
byte 1 110
byte 1 103
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $563
byte 1 114
byte 1 101
byte 1 100
byte 1 58
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 58
byte 1 37
byte 1 105
byte 1 10
byte 1 0
align 1
LABELV $554
byte 1 69
byte 1 120
byte 1 105
byte 1 116
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $542
byte 1 37
byte 1 51
byte 1 105
byte 1 58
byte 1 37
byte 1 105
byte 1 37
byte 1 105
byte 1 32
byte 1 0
align 1
LABELV $519
byte 1 118
byte 1 115
byte 1 116
byte 1 114
byte 1 32
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 109
byte 1 97
byte 1 112
byte 1 10
byte 1 0
align 1
LABELV $515
byte 1 109
byte 1 97
byte 1 112
byte 1 95
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 32
byte 1 48
byte 1 10
byte 1 0
align 1
LABELV $468
byte 1 105
byte 1 110
byte 1 102
byte 1 111
byte 1 95
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 95
byte 1 105
byte 1 110
byte 1 116
byte 1 101
byte 1 114
byte 1 109
byte 1 105
byte 1 115
byte 1 115
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $435
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $301
byte 1 115
byte 1 0
align 1
LABELV $292
byte 1 102
byte 1 0
align 1
LABELV $264
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $258
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 10
byte 1 0
align 1
LABELV $254
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 32
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 32
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 10
byte 1 0
align 1
LABELV $252
byte 1 98
byte 1 111
byte 1 116
byte 1 95
byte 1 101
byte 1 110
byte 1 97
byte 1 98
byte 1 108
byte 1 101
byte 1 0
align 1
LABELV $249
byte 1 115
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 47
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 47
byte 1 103
byte 1 117
byte 1 114
byte 1 112
byte 1 50
byte 1 46
byte 1 119
byte 1 97
byte 1 118
byte 1 0
align 1
LABELV $248
byte 1 115
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 47
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 47
byte 1 103
byte 1 117
byte 1 114
byte 1 112
byte 1 49
byte 1 46
byte 1 119
byte 1 97
byte 1 118
byte 1 0
align 1
LABELV $247
byte 1 109
byte 1 111
byte 1 100
byte 1 101
byte 1 108
byte 1 115
byte 1 47
byte 1 109
byte 1 97
byte 1 112
byte 1 111
byte 1 98
byte 1 106
byte 1 101
byte 1 99
byte 1 116
byte 1 115
byte 1 47
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 47
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 52
byte 1 46
byte 1 109
byte 1 100
byte 1 51
byte 1 0
align 1
LABELV $245
byte 1 99
byte 1 111
byte 1 109
byte 1 95
byte 1 98
byte 1 117
byte 1 105
byte 1 108
byte 1 100
byte 1 83
byte 1 99
byte 1 114
byte 1 105
byte 1 112
byte 1 116
byte 1 0
align 1
LABELV $241
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $225
byte 1 78
byte 1 111
byte 1 116
byte 1 32
byte 1 108
byte 1 111
byte 1 103
byte 1 103
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 100
byte 1 105
byte 1 115
byte 1 107
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $224
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $223
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $221
byte 1 87
byte 1 65
byte 1 82
byte 1 78
byte 1 73
byte 1 78
byte 1 71
byte 1 58
byte 1 32
byte 1 67
byte 1 111
byte 1 117
byte 1 108
byte 1 100
byte 1 110
byte 1 39
byte 1 116
byte 1 32
byte 1 111
byte 1 112
byte 1 101
byte 1 110
byte 1 32
byte 1 108
byte 1 111
byte 1 103
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $206
byte 1 115
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 47
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 47
byte 1 102
byte 1 114
byte 1 121
byte 1 46
byte 1 119
byte 1 97
byte 1 118
byte 1 0
align 1
LABELV $202
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 100
byte 1 97
byte 1 116
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $201
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $200
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 32
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 32
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 105
byte 1 97
byte 1 108
byte 1 105
byte 1 122
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $194
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 83
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 99
byte 1 104
byte 1 97
byte 1 110
byte 1 103
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $179
byte 1 103
byte 1 95
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 116
byte 1 121
byte 1 112
byte 1 101
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 111
byte 1 117
byte 1 116
byte 1 32
byte 1 111
byte 1 102
byte 1 32
byte 1 114
byte 1 97
byte 1 110
byte 1 103
byte 1 101
byte 1 44
byte 1 32
byte 1 100
byte 1 101
byte 1 102
byte 1 97
byte 1 117
byte 1 108
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 48
byte 1 10
byte 1 0
align 1
LABELV $161
byte 1 37
byte 1 105
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 115
byte 1 32
byte 1 119
byte 1 105
byte 1 116
byte 1 104
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 105
byte 1 101
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $114
byte 1 103
byte 1 95
byte 1 114
byte 1 97
byte 1 110
byte 1 107
byte 1 105
byte 1 110
byte 1 103
byte 1 115
byte 1 0
align 1
LABELV $113
byte 1 112
byte 1 109
byte 1 111
byte 1 118
byte 1 101
byte 1 95
byte 1 109
byte 1 115
byte 1 101
byte 1 99
byte 1 0
align 1
LABELV $112
byte 1 112
byte 1 109
byte 1 111
byte 1 118
byte 1 101
byte 1 95
byte 1 102
byte 1 105
byte 1 120
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $111
byte 1 103
byte 1 95
byte 1 115
byte 1 109
byte 1 111
byte 1 111
byte 1 116
byte 1 104
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $110
byte 1 103
byte 1 95
byte 1 108
byte 1 105
byte 1 115
byte 1 116
byte 1 69
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $109
byte 1 103
byte 1 95
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $108
byte 1 55
byte 1 48
byte 1 0
align 1
LABELV $107
byte 1 103
byte 1 95
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 68
byte 1 114
byte 1 111
byte 1 112
byte 1 0
align 1
LABELV $106
byte 1 56
byte 1 48
byte 1 0
align 1
LABELV $105
byte 1 103
byte 1 95
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 68
byte 1 105
byte 1 115
byte 1 116
byte 1 0
align 1
LABELV $104
byte 1 99
byte 1 111
byte 1 109
byte 1 95
byte 1 98
byte 1 108
byte 1 111
byte 1 111
byte 1 100
byte 1 0
align 1
LABELV $103
byte 1 103
byte 1 95
byte 1 109
byte 1 111
byte 1 116
byte 1 100
byte 1 0
align 1
LABELV $102
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 65
byte 1 108
byte 1 108
byte 1 111
byte 1 99
byte 1 0
align 1
LABELV $101
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 68
byte 1 97
byte 1 109
byte 1 97
byte 1 103
byte 1 101
byte 1 0
align 1
LABELV $100
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 77
byte 1 111
byte 1 118
byte 1 101
byte 1 0
align 1
LABELV $99
byte 1 103
byte 1 95
byte 1 105
byte 1 110
byte 1 97
byte 1 99
byte 1 116
byte 1 105
byte 1 118
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $98
byte 1 103
byte 1 95
byte 1 102
byte 1 111
byte 1 114
byte 1 99
byte 1 101
byte 1 114
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $97
byte 1 51
byte 1 48
byte 1 0
align 1
LABELV $96
byte 1 103
byte 1 95
byte 1 119
byte 1 101
byte 1 97
byte 1 112
byte 1 111
byte 1 110
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 82
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $95
byte 1 53
byte 1 0
align 1
LABELV $94
byte 1 103
byte 1 95
byte 1 119
byte 1 101
byte 1 97
byte 1 112
byte 1 111
byte 1 110
byte 1 114
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $93
byte 1 51
byte 1 0
align 1
LABELV $92
byte 1 103
byte 1 95
byte 1 113
byte 1 117
byte 1 97
byte 1 100
byte 1 102
byte 1 97
byte 1 99
byte 1 116
byte 1 111
byte 1 114
byte 1 0
align 1
LABELV $91
byte 1 49
byte 1 48
byte 1 48
byte 1 48
byte 1 0
align 1
LABELV $90
byte 1 103
byte 1 95
byte 1 107
byte 1 110
byte 1 111
byte 1 99
byte 1 107
byte 1 98
byte 1 97
byte 1 99
byte 1 107
byte 1 0
align 1
LABELV $89
byte 1 56
byte 1 48
byte 1 48
byte 1 0
align 1
LABELV $88
byte 1 103
byte 1 95
byte 1 103
byte 1 114
byte 1 97
byte 1 118
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $87
byte 1 51
byte 1 50
byte 1 48
byte 1 0
align 1
LABELV $86
byte 1 103
byte 1 95
byte 1 115
byte 1 112
byte 1 101
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $85
byte 1 100
byte 1 101
byte 1 100
byte 1 105
byte 1 99
byte 1 97
byte 1 116
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $84
byte 1 103
byte 1 95
byte 1 110
byte 1 101
byte 1 101
byte 1 100
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 0
align 1
LABELV $83
byte 1 49
byte 1 0
align 1
LABELV $82
byte 1 103
byte 1 95
byte 1 102
byte 1 105
byte 1 108
byte 1 116
byte 1 101
byte 1 114
byte 1 66
byte 1 97
byte 1 110
byte 1 0
align 1
LABELV $81
byte 1 103
byte 1 95
byte 1 98
byte 1 97
byte 1 110
byte 1 73
byte 1 80
byte 1 115
byte 1 0
align 1
LABELV $80
byte 1 103
byte 1 95
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 119
byte 1 111
byte 1 114
byte 1 100
byte 1 0
align 1
LABELV $79
byte 1 103
byte 1 95
byte 1 108
byte 1 111
byte 1 103
byte 1 83
byte 1 121
byte 1 110
byte 1 99
byte 1 0
align 1
LABELV $78
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 115
byte 1 46
byte 1 108
byte 1 111
byte 1 103
byte 1 0
align 1
LABELV $77
byte 1 103
byte 1 95
byte 1 108
byte 1 111
byte 1 103
byte 1 0
align 1
LABELV $76
byte 1 103
byte 1 95
byte 1 100
byte 1 111
byte 1 87
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 0
align 1
LABELV $75
byte 1 103
byte 1 95
byte 1 119
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 0
align 1
LABELV $74
byte 1 103
byte 1 95
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 70
byte 1 111
byte 1 114
byte 1 99
byte 1 101
byte 1 66
byte 1 97
byte 1 108
byte 1 97
byte 1 110
byte 1 99
byte 1 101
byte 1 0
align 1
LABELV $73
byte 1 103
byte 1 95
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 65
byte 1 117
byte 1 116
byte 1 111
byte 1 74
byte 1 111
byte 1 105
byte 1 110
byte 1 0
align 1
LABELV $72
byte 1 103
byte 1 95
byte 1 102
byte 1 114
byte 1 105
byte 1 101
byte 1 110
byte 1 100
byte 1 108
byte 1 121
byte 1 70
byte 1 105
byte 1 114
byte 1 101
byte 1 0
align 1
LABELV $71
byte 1 103
byte 1 95
byte 1 115
byte 1 121
byte 1 110
byte 1 99
byte 1 104
byte 1 114
byte 1 111
byte 1 110
byte 1 111
byte 1 117
byte 1 115
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $70
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $69
byte 1 116
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $68
byte 1 50
byte 1 48
byte 1 0
align 1
LABELV $67
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $66
byte 1 100
byte 1 109
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 115
byte 1 0
align 1
LABELV $65
byte 1 103
byte 1 95
byte 1 109
byte 1 97
byte 1 120
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $64
byte 1 56
byte 1 0
align 1
LABELV $63
byte 1 115
byte 1 118
byte 1 95
byte 1 109
byte 1 97
byte 1 120
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $62
byte 1 103
byte 1 95
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 116
byte 1 121
byte 1 112
byte 1 101
byte 1 0
align 1
LABELV $61
byte 1 115
byte 1 118
byte 1 95
byte 1 109
byte 1 97
byte 1 112
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $60
byte 1 48
byte 1 0
align 1
LABELV $59
byte 1 103
byte 1 95
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $58
byte 1 74
byte 1 97
byte 1 110
byte 1 32
byte 1 49
byte 1 52
byte 1 32
byte 1 50
byte 1 48
byte 1 48
byte 1 56
byte 1 0
align 1
LABELV $57
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 100
byte 1 97
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $56
byte 1 98
byte 1 97
byte 1 115
byte 1 101
byte 1 113
byte 1 51
byte 1 0
align 1
LABELV $55
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $54
byte 1 0
align 1
LABELV $53
byte 1 115
byte 1 118
byte 1 95
byte 1 99
byte 1 104
byte 1 101
byte 1 97
byte 1 116
byte 1 115
byte 1 0
