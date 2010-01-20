export BotValidTeamLeader
code
proc BotValidTeamLeader 8 4
file "../ai_team.c"
line 72
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
;20:===========================================================================
;21:*/
;22://
;23:
;24:/*****************************************************************************
;25: * name:		ai_team.c
;26: *
;27: * desc:		Quake3 bot AI
;28: *
;29: * $Archive: /MissionPack/code/game/ai_team.c $
;30: *
;31: *****************************************************************************/
;32:
;33:#include "g_local.h"
;34:#include "botlib.h"
;35:#include "be_aas.h"
;36:#include "be_ea.h"
;37:#include "be_ai_char.h"
;38:#include "be_ai_chat.h"
;39:#include "be_ai_gen.h"
;40:#include "be_ai_goal.h"
;41:#include "be_ai_move.h"
;42:#include "be_ai_weap.h"
;43://
;44:#include "ai_main.h"
;45:#include "ai_dmq3.h"
;46:#include "ai_chat.h"
;47:#include "ai_cmd.h"
;48:#include "ai_dmnet.h"
;49:#include "ai_team.h"
;50:#include "ai_vcmd.h"
;51:
;52:#include "match.h"
;53:
;54:// for the voice chats
;55:#include "../../ui/menudef.h"
;56:
;57://ctf task preferences for a client
;58:typedef struct bot_ctftaskpreference_s
;59:{
;60:	char		name[36];
;61:	int			preference;
;62:} bot_ctftaskpreference_t;
;63:
;64:bot_ctftaskpreference_t ctftaskpreferences[MAX_CLIENTS];
;65:
;66:
;67:/*
;68:==================
;69:BotValidTeamLeader
;70:==================
;71:*/
;72:int BotValidTeamLeader(bot_state_t *bs) {
line 73
;73:	if (!strlen(bs->teamleader)) return qfalse;
ADDRFP4 0
INDIRP4
CNSTI4 6900
ADDP4
ARGP4
ADDRLP4 0
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
NEI4 $54
CNSTI4 0
RETI4
ADDRGP4 $53
JUMPV
LABELV $54
line 74
;74:	if (ClientFromName(bs->teamleader) == -1) return qfalse;
ADDRFP4 0
INDIRP4
CNSTI4 6900
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 ClientFromName
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 -1
NEI4 $56
CNSTI4 0
RETI4
ADDRGP4 $53
JUMPV
LABELV $56
line 75
;75:	return qtrue;
CNSTI4 1
RETI4
LABELV $53
endproc BotValidTeamLeader 8 4
bss
align 4
LABELV $59
skip 4
export BotNumTeamMates
code
proc BotNumTeamMates 1060 12
line 83
;76:}
;77:
;78:/*
;79:==================
;80:BotNumTeamMates
;81:==================
;82:*/
;83:int BotNumTeamMates(bot_state_t *bs) {
line 88
;84:	int i, numplayers;
;85:	char buf[MAX_INFO_STRING];
;86:	static int maxclients;
;87:
;88:	if (!maxclients)
ADDRGP4 $59
INDIRI4
CNSTI4 0
NEI4 $60
line 89
;89:		maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");
ADDRGP4 $62
ARGP4
ADDRLP4 1032
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRGP4 $59
ADDRLP4 1032
INDIRI4
ASGNI4
LABELV $60
line 91
;90:
;91:	numplayers = 0;
ADDRLP4 1028
CNSTI4 0
ASGNI4
line 92
;92:	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $66
JUMPV
LABELV $63
line 93
;93:		trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));
ADDRLP4 0
INDIRI4
CNSTI4 544
ADDI4
ARGI4
ADDRLP4 4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetConfigstring
CALLV
pop
line 95
;94:		//if no config string or no name
;95:		if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;
ADDRLP4 4
ARGP4
ADDRLP4 1036
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 1036
INDIRI4
CNSTI4 0
EQI4 $70
ADDRLP4 4
ARGP4
ADDRGP4 $69
ARGP4
ADDRLP4 1040
ADDRGP4 Info_ValueForKey
CALLP4
ASGNP4
ADDRLP4 1040
INDIRP4
ARGP4
ADDRLP4 1044
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 1044
INDIRI4
CNSTI4 0
NEI4 $67
LABELV $70
ADDRGP4 $64
JUMPV
LABELV $67
line 97
;96:		//skip spectators
;97:		if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;
ADDRLP4 4
ARGP4
ADDRGP4 $73
ARGP4
ADDRLP4 1048
ADDRGP4 Info_ValueForKey
CALLP4
ASGNP4
ADDRLP4 1048
INDIRP4
ARGP4
ADDRLP4 1052
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 1052
INDIRI4
CNSTI4 3
NEI4 $71
ADDRGP4 $64
JUMPV
LABELV $71
line 99
;98:		//
;99:		if (BotSameTeam(bs, i)) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 1056
ADDRGP4 BotSameTeam
CALLI4
ASGNI4
ADDRLP4 1056
INDIRI4
CNSTI4 0
EQI4 $74
line 100
;100:			numplayers++;
ADDRLP4 1028
ADDRLP4 1028
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 101
;101:		}
LABELV $74
line 102
;102:	}
LABELV $64
line 92
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $66
ADDRLP4 0
INDIRI4
ADDRGP4 $59
INDIRI4
GEI4 $76
ADDRLP4 0
INDIRI4
CNSTI4 64
LTI4 $63
LABELV $76
line 103
;103:	return numplayers;
ADDRLP4 1028
INDIRI4
RETI4
LABELV $58
endproc BotNumTeamMates 1060 12
export BotClientTravelTimeToGoal
proc BotClientTravelTimeToGoal 480 16
line 111
;104:}
;105:
;106:/*
;107:==================
;108:BotClientTravelTimeToGoal
;109:==================
;110:*/
;111:int BotClientTravelTimeToGoal(int client, bot_goal_t *goal) {
line 115
;112:	playerState_t ps;
;113:	int areanum;
;114:
;115:	BotAI_GetClientState(client, &ps);
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
ADDRGP4 BotAI_GetClientState
CALLI4
pop
line 116
;116:	areanum = BotPointAreaNum(ps.origin);
ADDRLP4 0+20
ARGP4
ADDRLP4 472
ADDRGP4 BotPointAreaNum
CALLI4
ASGNI4
ADDRLP4 468
ADDRLP4 472
INDIRI4
ASGNI4
line 117
;117:	if (!areanum) return 1;
ADDRLP4 468
INDIRI4
CNSTI4 0
NEI4 $79
CNSTI4 1
RETI4
ADDRGP4 $77
JUMPV
LABELV $79
line 118
;118:	return trap_AAS_AreaTravelTimeToGoalArea(areanum, ps.origin, goal->areanum, TFL_DEFAULT);
ADDRLP4 468
INDIRI4
ARGI4
ADDRLP4 0+20
ARGP4
ADDRFP4 4
INDIRP4
CNSTI4 12
ADDP4
INDIRI4
ARGI4
CNSTI4 18616254
ARGI4
ADDRLP4 476
ADDRGP4 trap_AAS_AreaTravelTimeToGoalArea
CALLI4
ASGNI4
ADDRLP4 476
INDIRI4
RETI4
LABELV $77
endproc BotClientTravelTimeToGoal 480 16
bss
align 4
LABELV $83
skip 4
export BotSortTeamMatesByBaseTravelTime
code
proc BotSortTeamMatesByBaseTravelTime 1352 12
line 126
;119:}
;120:
;121:/*
;122:==================
;123:BotSortTeamMatesByBaseTravelTime
;124:==================
;125:*/
;126:int BotSortTeamMatesByBaseTravelTime(bot_state_t *bs, int *teammates, int maxteammates) {
line 132
;127:
;128:	int i, j, k, numteammates, traveltime;
;129:	char buf[MAX_INFO_STRING];
;130:	static int maxclients;
;131:	int traveltimes[MAX_CLIENTS];
;132:	bot_goal_t *goal = NULL;
ADDRLP4 1300
CNSTP4 0
ASGNP4
line 134
;133:
;134:	if (gametype == GT_CTF || gametype == GT_1FCTF) {
ADDRLP4 1304
ADDRGP4 gametype
INDIRI4
ASGNI4
ADDRLP4 1304
INDIRI4
CNSTI4 4
EQI4 $86
ADDRLP4 1304
INDIRI4
CNSTI4 5
NEI4 $84
LABELV $86
line 135
;135:		if (BotTeam(bs) == TEAM_RED)
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1308
ADDRGP4 BotTeam
CALLI4
ASGNI4
ADDRLP4 1308
INDIRI4
CNSTI4 1
NEI4 $87
line 136
;136:			goal = &ctf_redflag;
ADDRLP4 1300
ADDRGP4 ctf_redflag
ASGNP4
ADDRGP4 $88
JUMPV
LABELV $87
line 138
;137:		else
;138:			goal = &ctf_blueflag;
ADDRLP4 1300
ADDRGP4 ctf_blueflag
ASGNP4
LABELV $88
line 139
;139:	}
LABELV $84
line 148
;140:#ifdef MISSIONPACK
;141:	else {
;142:		if (BotTeam(bs) == TEAM_RED)
;143:			goal = &redobelisk;
;144:		else
;145:			goal = &blueobelisk;
;146:	}
;147:#endif
;148:	if (!maxclients)
ADDRGP4 $83
INDIRI4
CNSTI4 0
NEI4 $89
line 149
;149:		maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");
ADDRGP4 $62
ARGP4
ADDRLP4 1308
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRGP4 $83
ADDRLP4 1308
INDIRI4
ASGNI4
LABELV $89
line 151
;150:
;151:	numteammates = 0;
ADDRLP4 264
CNSTI4 0
ASGNI4
line 152
;152:	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
ADDRLP4 268
CNSTI4 0
ASGNI4
ADDRGP4 $94
JUMPV
LABELV $91
line 153
;153:		trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));
ADDRLP4 268
INDIRI4
CNSTI4 544
ADDI4
ARGI4
ADDRLP4 276
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetConfigstring
CALLV
pop
line 155
;154:		//if no config string or no name
;155:		if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;
ADDRLP4 276
ARGP4
ADDRLP4 1312
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 1312
INDIRI4
CNSTI4 0
EQI4 $97
ADDRLP4 276
ARGP4
ADDRGP4 $69
ARGP4
ADDRLP4 1316
ADDRGP4 Info_ValueForKey
CALLP4
ASGNP4
ADDRLP4 1316
INDIRP4
ARGP4
ADDRLP4 1320
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 1320
INDIRI4
CNSTI4 0
NEI4 $95
LABELV $97
ADDRGP4 $92
JUMPV
LABELV $95
line 157
;156:		//skip spectators
;157:		if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;
ADDRLP4 276
ARGP4
ADDRGP4 $73
ARGP4
ADDRLP4 1324
ADDRGP4 Info_ValueForKey
CALLP4
ASGNP4
ADDRLP4 1324
INDIRP4
ARGP4
ADDRLP4 1328
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 1328
INDIRI4
CNSTI4 3
NEI4 $98
ADDRGP4 $92
JUMPV
LABELV $98
line 159
;158:		//
;159:		if (BotSameTeam(bs, i)) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 268
INDIRI4
ARGI4
ADDRLP4 1332
ADDRGP4 BotSameTeam
CALLI4
ASGNI4
ADDRLP4 1332
INDIRI4
CNSTI4 0
EQI4 $100
line 161
;160:			//
;161:			traveltime = BotClientTravelTimeToGoal(i, goal);
ADDRLP4 268
INDIRI4
ARGI4
ADDRLP4 1300
INDIRP4
ARGP4
ADDRLP4 1336
ADDRGP4 BotClientTravelTimeToGoal
CALLI4
ASGNI4
ADDRLP4 272
ADDRLP4 1336
INDIRI4
ASGNI4
line 163
;162:			//
;163:			for (j = 0; j < numteammates; j++) {
ADDRLP4 260
CNSTI4 0
ASGNI4
ADDRGP4 $105
JUMPV
LABELV $102
line 164
;164:				if (traveltime < traveltimes[j]) {
ADDRLP4 272
INDIRI4
ADDRLP4 260
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
GEI4 $106
line 165
;165:					for (k = numteammates; k > j; k--) {
ADDRLP4 0
ADDRLP4 264
INDIRI4
ASGNI4
ADDRGP4 $111
JUMPV
LABELV $108
line 166
;166:						traveltimes[k] = traveltimes[k-1];
ADDRLP4 1340
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ASGNI4
ADDRLP4 1340
INDIRI4
ADDRLP4 4
ADDP4
ADDRLP4 1340
INDIRI4
ADDRLP4 4-4
ADDP4
INDIRI4
ASGNI4
line 167
;167:						teammates[k] = teammates[k-1];
ADDRLP4 1344
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ASGNI4
ADDRLP4 1348
ADDRFP4 4
INDIRP4
ASGNP4
ADDRLP4 1344
INDIRI4
ADDRLP4 1348
INDIRP4
ADDP4
ADDRLP4 1344
INDIRI4
CNSTI4 4
SUBI4
ADDRLP4 1348
INDIRP4
ADDP4
INDIRI4
ASGNI4
line 168
;168:					}
LABELV $109
line 165
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
LABELV $111
ADDRLP4 0
INDIRI4
ADDRLP4 260
INDIRI4
GTI4 $108
line 169
;169:					break;
ADDRGP4 $104
JUMPV
LABELV $106
line 171
;170:				}
;171:			}
LABELV $103
line 163
ADDRLP4 260
ADDRLP4 260
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $105
ADDRLP4 260
INDIRI4
ADDRLP4 264
INDIRI4
LTI4 $102
LABELV $104
line 172
;172:			traveltimes[j] = traveltime;
ADDRLP4 260
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
ADDRLP4 272
INDIRI4
ASGNI4
line 173
;173:			teammates[j] = i;
ADDRLP4 260
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
ADDRLP4 268
INDIRI4
ASGNI4
line 174
;174:			numteammates++;
ADDRLP4 264
ADDRLP4 264
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 175
;175:			if (numteammates >= maxteammates) break;
ADDRLP4 264
INDIRI4
ADDRFP4 8
INDIRI4
LTI4 $113
ADDRGP4 $93
JUMPV
LABELV $113
line 176
;176:		}
LABELV $100
line 177
;177:	}
LABELV $92
line 152
ADDRLP4 268
ADDRLP4 268
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $94
ADDRLP4 268
INDIRI4
ADDRGP4 $83
INDIRI4
GEI4 $115
ADDRLP4 268
INDIRI4
CNSTI4 64
LTI4 $91
LABELV $115
LABELV $93
line 178
;178:	return numteammates;
ADDRLP4 264
INDIRI4
RETI4
LABELV $82
endproc BotSortTeamMatesByBaseTravelTime 1352 12
export BotSetTeamMateTaskPreference
proc BotSetTeamMateTaskPreference 36 12
line 186
;179:}
;180:
;181:/*
;182:==================
;183:BotSetTeamMateTaskPreference
;184:==================
;185:*/
;186:void BotSetTeamMateTaskPreference(bot_state_t *bs, int teammate, int preference) {
line 189
;187:	char teammatename[MAX_NETNAME];
;188:
;189:	ctftaskpreferences[teammate].preference = preference;
CNSTI4 40
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 ctftaskpreferences+36
ADDP4
ADDRFP4 8
INDIRI4
ASGNI4
line 190
;190:	ClientName(teammate, teammatename, sizeof(teammatename));
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 191
;191:	strcpy(ctftaskpreferences[teammate].name, teammatename);
CNSTI4 40
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 ctftaskpreferences
ADDP4
ARGP4
ADDRLP4 0
ARGP4
ADDRGP4 strcpy
CALLP4
pop
line 192
;192:}
LABELV $116
endproc BotSetTeamMateTaskPreference 36 12
export BotGetTeamMateTaskPreference
proc BotGetTeamMateTaskPreference 40 12
line 199
;193:
;194:/*
;195:==================
;196:BotGetTeamMateTaskPreference
;197:==================
;198:*/
;199:int BotGetTeamMateTaskPreference(bot_state_t *bs, int teammate) {
line 202
;200:	char teammatename[MAX_NETNAME];
;201:
;202:	if (!ctftaskpreferences[teammate].preference) return 0;
CNSTI4 40
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 ctftaskpreferences+36
ADDP4
INDIRI4
CNSTI4 0
NEI4 $119
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $119
line 203
;203:	ClientName(teammate, teammatename, sizeof(teammatename));
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 204
;204:	if (Q_stricmp(teammatename, ctftaskpreferences[teammate].name)) return 0;
ADDRLP4 0
ARGP4
CNSTI4 40
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 ctftaskpreferences
ADDP4
ARGP4
ADDRLP4 36
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 36
INDIRI4
CNSTI4 0
EQI4 $122
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $122
line 205
;205:	return ctftaskpreferences[teammate].preference;
CNSTI4 40
ADDRFP4 4
INDIRI4
MULI4
ADDRGP4 ctftaskpreferences+36
ADDP4
INDIRI4
RETI4
LABELV $118
endproc BotGetTeamMateTaskPreference 40 12
export BotSortTeamMatesByTaskPreference
proc BotSortTeamMatesByTaskPreference 804 12
line 213
;206:}
;207:
;208:/*
;209:==================
;210:BotSortTeamMatesByTaskPreference
;211:==================
;212:*/
;213:int BotSortTeamMatesByTaskPreference(bot_state_t *bs, int *teammates, int numteammates) {
line 219
;214:	int defenders[MAX_CLIENTS], numdefenders;
;215:	int attackers[MAX_CLIENTS], numattackers;
;216:	int roamers[MAX_CLIENTS], numroamers;
;217:	int i, preference;
;218:
;219:	numdefenders = numattackers = numroamers = 0;
ADDRLP4 788
CNSTI4 0
ASGNI4
ADDRLP4 272
ADDRLP4 788
INDIRI4
ASGNI4
ADDRLP4 268
ADDRLP4 788
INDIRI4
ASGNI4
ADDRLP4 8
ADDRLP4 788
INDIRI4
ASGNI4
line 220
;220:	for (i = 0; i < numteammates; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $129
JUMPV
LABELV $126
line 221
;221:		preference = BotGetTeamMateTaskPreference(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRI4
ARGI4
ADDRLP4 792
ADDRGP4 BotGetTeamMateTaskPreference
CALLI4
ASGNI4
ADDRLP4 4
ADDRLP4 792
INDIRI4
ASGNI4
line 222
;222:		if (preference & TEAMTP_DEFENDER) {
ADDRLP4 4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $130
line 223
;223:			defenders[numdefenders++] = teammates[i];
ADDRLP4 796
ADDRLP4 8
INDIRI4
ASGNI4
ADDRLP4 8
ADDRLP4 796
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 800
CNSTI4 2
ASGNI4
ADDRLP4 796
INDIRI4
ADDRLP4 800
INDIRI4
LSHI4
ADDRLP4 12
ADDP4
ADDRLP4 0
INDIRI4
ADDRLP4 800
INDIRI4
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRI4
ASGNI4
line 224
;224:		}
ADDRGP4 $131
JUMPV
LABELV $130
line 225
;225:		else if (preference & TEAMTP_ATTACKER) {
ADDRLP4 4
INDIRI4
CNSTI4 2
BANDI4
CNSTI4 0
EQI4 $132
line 226
;226:			attackers[numattackers++] = teammates[i];
ADDRLP4 796
ADDRLP4 268
INDIRI4
ASGNI4
ADDRLP4 268
ADDRLP4 796
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 800
CNSTI4 2
ASGNI4
ADDRLP4 796
INDIRI4
ADDRLP4 800
INDIRI4
LSHI4
ADDRLP4 276
ADDP4
ADDRLP4 0
INDIRI4
ADDRLP4 800
INDIRI4
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRI4
ASGNI4
line 227
;227:		}
ADDRGP4 $133
JUMPV
LABELV $132
line 228
;228:		else {
line 229
;229:			roamers[numroamers++] = teammates[i];
ADDRLP4 796
ADDRLP4 272
INDIRI4
ASGNI4
ADDRLP4 272
ADDRLP4 796
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 800
CNSTI4 2
ASGNI4
ADDRLP4 796
INDIRI4
ADDRLP4 800
INDIRI4
LSHI4
ADDRLP4 532
ADDP4
ADDRLP4 0
INDIRI4
ADDRLP4 800
INDIRI4
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRI4
ASGNI4
line 230
;230:		}
LABELV $133
LABELV $131
line 231
;231:	}
LABELV $127
line 220
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $129
ADDRLP4 0
INDIRI4
ADDRFP4 8
INDIRI4
LTI4 $126
line 232
;232:	numteammates = 0;
ADDRFP4 8
CNSTI4 0
ASGNI4
line 234
;233:	//defenders at the front of the list
;234:	memcpy(&teammates[numteammates], defenders, numdefenders * sizeof(int));
ADDRLP4 792
CNSTI4 2
ASGNI4
ADDRFP4 8
INDIRI4
ADDRLP4 792
INDIRI4
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
ARGP4
ADDRLP4 12
ARGP4
ADDRLP4 8
INDIRI4
CVIU4 4
ADDRLP4 792
INDIRI4
LSHU4
CVUI4 4
ARGI4
ADDRGP4 memcpy
CALLP4
pop
line 235
;235:	numteammates += numdefenders;
ADDRFP4 8
ADDRFP4 8
INDIRI4
ADDRLP4 8
INDIRI4
ADDI4
ASGNI4
line 237
;236:	//roamers in the middle
;237:	memcpy(&teammates[numteammates], roamers, numroamers * sizeof(int));
ADDRLP4 796
CNSTI4 2
ASGNI4
ADDRFP4 8
INDIRI4
ADDRLP4 796
INDIRI4
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
ARGP4
ADDRLP4 532
ARGP4
ADDRLP4 272
INDIRI4
CVIU4 4
ADDRLP4 796
INDIRI4
LSHU4
CVUI4 4
ARGI4
ADDRGP4 memcpy
CALLP4
pop
line 238
;238:	numteammates += numroamers;
ADDRFP4 8
ADDRFP4 8
INDIRI4
ADDRLP4 272
INDIRI4
ADDI4
ASGNI4
line 240
;239:	//attacker in the back of the list
;240:	memcpy(&teammates[numteammates], attackers, numattackers * sizeof(int));
ADDRLP4 800
CNSTI4 2
ASGNI4
ADDRFP4 8
INDIRI4
ADDRLP4 800
INDIRI4
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
ARGP4
ADDRLP4 276
ARGP4
ADDRLP4 268
INDIRI4
CVIU4 4
ADDRLP4 800
INDIRI4
LSHU4
CVUI4 4
ARGI4
ADDRGP4 memcpy
CALLP4
pop
line 241
;241:	numteammates += numattackers;
ADDRFP4 8
ADDRFP4 8
INDIRI4
ADDRLP4 268
INDIRI4
ADDI4
ASGNI4
line 243
;242:
;243:	return numteammates;
ADDRFP4 8
INDIRI4
RETI4
LABELV $125
endproc BotSortTeamMatesByTaskPreference 804 12
export BotSayTeamOrderAlways
proc BotSayTeamOrderAlways 548 20
line 251
;244:}
;245:
;246:/*
;247:==================
;248:BotSayTeamOrders
;249:==================
;250:*/
;251:void BotSayTeamOrderAlways(bot_state_t *bs, int toclient) {
line 257
;252:	char teamchat[MAX_MESSAGE_SIZE];
;253:	char buf[MAX_MESSAGE_SIZE];
;254:	char name[MAX_NETNAME];
;255:
;256:	//if the bot is talking to itself
;257:	if (bs->client == toclient) {
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
ADDRFP4 4
INDIRI4
NEI4 $135
line 259
;258:		//don't show the message just put it in the console message queue
;259:		trap_BotGetChatMessage(bs->cs, buf, sizeof(buf));
ADDRFP4 0
INDIRP4
CNSTI4 6532
ADDP4
INDIRI4
ARGI4
ADDRLP4 256
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 trap_BotGetChatMessage
CALLV
pop
line 260
;260:		ClientName(bs->client, name, sizeof(name));
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
ARGI4
ADDRLP4 512
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 261
;261:		Com_sprintf(teamchat, sizeof(teamchat), EC"(%s"EC")"EC": %s", name, buf);
ADDRLP4 0
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 $137
ARGP4
ADDRLP4 512
ARGP4
ADDRLP4 256
ARGP4
ADDRGP4 Com_sprintf
CALLV
pop
line 262
;262:		trap_BotQueueConsoleMessage(bs->cs, CMS_CHAT, teamchat);
ADDRFP4 0
INDIRP4
CNSTI4 6532
ADDP4
INDIRI4
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 0
ARGP4
ADDRGP4 trap_BotQueueConsoleMessage
CALLV
pop
line 263
;263:	}
ADDRGP4 $136
JUMPV
LABELV $135
line 264
;264:	else {
line 265
;265:		trap_BotEnterChat(bs->cs, toclient, CHAT_TELL);
ADDRFP4 0
INDIRP4
CNSTI4 6532
ADDP4
INDIRI4
ARGI4
ADDRFP4 4
INDIRI4
ARGI4
CNSTI4 2
ARGI4
ADDRGP4 trap_BotEnterChat
CALLV
pop
line 266
;266:	}
LABELV $136
line 267
;267:}
LABELV $134
endproc BotSayTeamOrderAlways 548 20
export BotSayTeamOrder
proc BotSayTeamOrder 0 8
line 274
;268:
;269:/*
;270:==================
;271:BotSayTeamOrders
;272:==================
;273:*/
;274:void BotSayTeamOrder(bot_state_t *bs, int toclient) {
line 281
;275:#ifdef MISSIONPACK
;276:	// voice chats only
;277:	char buf[MAX_MESSAGE_SIZE];
;278:
;279:	trap_BotGetChatMessage(bs->cs, buf, sizeof(buf));
;280:#else
;281:	BotSayTeamOrderAlways(bs, toclient);
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrderAlways
CALLV
pop
line 283
;282:#endif
;283:}
LABELV $138
endproc BotSayTeamOrder 0 8
export BotVoiceChat
proc BotVoiceChat 0 0
line 290
;284:
;285:/*
;286:==================
;287:BotVoiceChat
;288:==================
;289:*/
;290:void BotVoiceChat(bot_state_t *bs, int toclient, char *voicechat) {
line 299
;291:#ifdef MISSIONPACK
;292:	if (toclient == -1)
;293:		// voice only say team
;294:		trap_EA_Command(bs->client, va("vsay_team %s", voicechat));
;295:	else
;296:		// voice only tell single player
;297:		trap_EA_Command(bs->client, va("vtell %d %s", toclient, voicechat));
;298:#endif
;299:}
LABELV $139
endproc BotVoiceChat 0 0
export BotVoiceChatOnly
proc BotVoiceChatOnly 0 0
line 306
;300:
;301:/*
;302:==================
;303:BotVoiceChatOnly
;304:==================
;305:*/
;306:void BotVoiceChatOnly(bot_state_t *bs, int toclient, char *voicechat) {
line 315
;307:#ifdef MISSIONPACK
;308:	if (toclient == -1)
;309:		// voice only say team
;310:		trap_EA_Command(bs->client, va("vosay_team %s", voicechat));
;311:	else
;312:		// voice only tell single player
;313:		trap_EA_Command(bs->client, va("votell %d %s", toclient, voicechat));
;314:#endif
;315:}
LABELV $140
endproc BotVoiceChatOnly 0 0
export BotSayVoiceTeamOrder
proc BotSayVoiceTeamOrder 0 0
line 322
;316:
;317:/*
;318:==================
;319:BotSayVoiceTeamOrder
;320:==================
;321:*/
;322:void BotSayVoiceTeamOrder(bot_state_t *bs, int toclient, char *voicechat) {
line 326
;323:#ifdef MISSIONPACK
;324:	BotVoiceChat(bs, toclient, voicechat);
;325:#endif
;326:}
LABELV $141
endproc BotSayVoiceTeamOrder 0 0
export BotCTFOrders_BothFlagsNotAtBase
proc BotCTFOrders_BothFlagsNotAtBase 368 20
line 333
;327:
;328:/*
;329:==================
;330:BotCTFOrders
;331:==================
;332:*/
;333:void BotCTFOrders_BothFlagsNotAtBase(bot_state_t *bs) {
line 338
;334:	int numteammates, defenders, attackers, i, other;
;335:	int teammates[MAX_CLIENTS];
;336:	char name[MAX_NETNAME], carriername[MAX_NETNAME];
;337:
;338:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
CNSTI4 256
ARGI4
ADDRLP4 348
ADDRGP4 BotSortTeamMatesByBaseTravelTime
CALLI4
ASGNI4
ADDRLP4 296
ADDRLP4 348
INDIRI4
ASGNI4
line 339
;339:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
ADDRLP4 296
INDIRI4
ARGI4
ADDRGP4 BotSortTeamMatesByTaskPreference
CALLI4
pop
line 341
;340:	//different orders based on the number of team mates
;341:	switch(bs->numteammates) {
ADDRLP4 352
ADDRFP4 0
INDIRP4
CNSTI4 6948
ADDP4
INDIRI4
ASGNI4
ADDRLP4 352
INDIRI4
CNSTI4 1
EQI4 $144
ADDRLP4 352
INDIRI4
CNSTI4 2
EQI4 $147
ADDRLP4 352
INDIRI4
CNSTI4 3
EQI4 $153
ADDRGP4 $143
JUMPV
line 342
;342:		case 1: break;
LABELV $147
line 344
;343:		case 2:
;344:		{
line 346
;345:			//tell the one not carrying the flag to attack the enemy base
;346:			if (teammates[0] != bs->flagcarrier) other = teammates[0];
ADDRLP4 4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
EQI4 $148
ADDRLP4 308
ADDRLP4 4
INDIRI4
ASGNI4
ADDRGP4 $149
JUMPV
LABELV $148
line 347
;347:			else other = teammates[1];
ADDRLP4 308
ADDRLP4 4+4
INDIRI4
ASGNI4
LABELV $149
line 348
;348:			ClientName(other, name, sizeof(name));
ADDRLP4 308
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 349
;349:			BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 350
;350:			BotSayTeamOrder(bs, other);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 351
;351:			BotSayVoiceTeamOrder(bs, other, VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 352
;352:			break;
ADDRGP4 $144
JUMPV
LABELV $153
line 355
;353:		}
;354:		case 3:
;355:		{
line 357
;356:			//tell the one closest to the base not carrying the flag to accompany the flag carrier
;357:			if (teammates[0] != bs->flagcarrier) other = teammates[0];
ADDRLP4 4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
EQI4 $154
ADDRLP4 308
ADDRLP4 4
INDIRI4
ASGNI4
ADDRGP4 $155
JUMPV
LABELV $154
line 358
;358:			else other = teammates[1];
ADDRLP4 308
ADDRLP4 4+4
INDIRI4
ASGNI4
LABELV $155
line 359
;359:			ClientName(other, name, sizeof(name));
ADDRLP4 308
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 360
;360:			if ( bs->flagcarrier != -1 ) {
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
CNSTI4 -1
EQI4 $157
line 361
;361:				ClientName(bs->flagcarrier, carriername, sizeof(carriername));
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
ARGI4
ADDRLP4 312
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 362
;362:				if (bs->flagcarrier == bs->client) {
ADDRLP4 360
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 360
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
ADDRLP4 360
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
NEI4 $159
line 363
;363:					BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $161
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 364
;364:					BotSayVoiceTeamOrder(bs, other, VOICECHAT_FOLLOWME);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $162
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 365
;365:				}
ADDRGP4 $158
JUMPV
LABELV $159
line 366
;366:				else {
line 367
;367:					BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $163
ARGP4
ADDRLP4 260
ARGP4
ADDRLP4 312
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 368
;368:					BotSayVoiceTeamOrder(bs, other, VOICECHAT_FOLLOWFLAGCARRIER);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $164
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 369
;369:				}
line 370
;370:			}
ADDRGP4 $158
JUMPV
LABELV $157
line 371
;371:			else {
line 373
;372:				//
;373:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 374
;374:				BotSayVoiceTeamOrder(bs, other, VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 375
;375:			}
LABELV $158
line 376
;376:			BotSayTeamOrder(bs, other);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 378
;377:			//tell the one furthest from the the base not carrying the flag to get the enemy flag
;378:			if (teammates[2] != bs->flagcarrier) other = teammates[2];
ADDRLP4 4+8
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
EQI4 $165
ADDRLP4 308
ADDRLP4 4+8
INDIRI4
ASGNI4
ADDRGP4 $166
JUMPV
LABELV $165
line 379
;379:			else other = teammates[1];
ADDRLP4 308
ADDRLP4 4+4
INDIRI4
ASGNI4
LABELV $166
line 380
;380:			ClientName(other, name, sizeof(name));
ADDRLP4 308
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 381
;381:			BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 382
;382:			BotSayTeamOrder(bs, other);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 383
;383:			BotSayVoiceTeamOrder(bs, other, VOICECHAT_RETURNFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $170
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 384
;384:			break;
ADDRGP4 $144
JUMPV
LABELV $143
line 387
;385:		}
;386:		default:
;387:		{
line 388
;388:			defenders = (int) (float) numteammates * 0.4 + 0.5;
ADDRLP4 300
CNSTF4 1053609165
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 389
;389:			if (defenders > 4) defenders = 4;
ADDRLP4 300
INDIRI4
CNSTI4 4
LEI4 $171
ADDRLP4 300
CNSTI4 4
ASGNI4
LABELV $171
line 390
;390:			attackers = (int) (float) numteammates * 0.5 + 0.5;
ADDRLP4 360
CNSTF4 1056964608
ASGNF4
ADDRLP4 304
ADDRLP4 360
INDIRF4
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
ADDRLP4 360
INDIRF4
ADDF4
CVFI4 4
ASGNI4
line 391
;391:			if (attackers > 5) attackers = 5;
ADDRLP4 304
INDIRI4
CNSTI4 5
LEI4 $173
ADDRLP4 304
CNSTI4 5
ASGNI4
LABELV $173
line 392
;392:			if (bs->flagcarrier != -1) {
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
CNSTI4 -1
EQI4 $175
line 393
;393:				ClientName(bs->flagcarrier, carriername, sizeof(carriername));
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
ARGI4
ADDRLP4 312
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 394
;394:				for (i = 0; i < defenders; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $180
JUMPV
LABELV $177
line 396
;395:					//
;396:					if (teammates[i] == bs->flagcarrier) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
NEI4 $181
line 397
;397:						continue;
ADDRGP4 $178
JUMPV
LABELV $181
line 400
;398:					}
;399:					//
;400:					ClientName(teammates[i], name, sizeof(name));
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 401
;401:					if (bs->flagcarrier == bs->client) {
ADDRLP4 364
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 364
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
ADDRLP4 364
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
NEI4 $183
line 402
;402:						BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $161
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 403
;403:						BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_FOLLOWME);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $162
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 404
;404:					}
ADDRGP4 $184
JUMPV
LABELV $183
line 405
;405:					else {
line 406
;406:						BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $163
ARGP4
ADDRLP4 260
ARGP4
ADDRLP4 312
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 407
;407:						BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_FOLLOWFLAGCARRIER);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $164
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 408
;408:					}
LABELV $184
line 409
;409:					BotSayTeamOrder(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 410
;410:				}
LABELV $178
line 394
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $180
ADDRLP4 0
INDIRI4
ADDRLP4 300
INDIRI4
LTI4 $177
line 411
;411:			}
ADDRGP4 $176
JUMPV
LABELV $175
line 412
;412:			else {
line 413
;413:				for (i = 0; i < defenders; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $188
JUMPV
LABELV $185
line 415
;414:					//
;415:					if (teammates[i] == bs->flagcarrier) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
NEI4 $189
line 416
;416:						continue;
ADDRGP4 $186
JUMPV
LABELV $189
line 419
;417:					}
;418:					//
;419:					ClientName(teammates[i], name, sizeof(name));
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 420
;420:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 421
;421:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 422
;422:					BotSayTeamOrder(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 423
;423:				}
LABELV $186
line 413
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $188
ADDRLP4 0
INDIRI4
ADDRLP4 300
INDIRI4
LTI4 $185
line 424
;424:			}
LABELV $176
line 425
;425:			for (i = 0; i < attackers; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $194
JUMPV
LABELV $191
line 427
;426:				//
;427:				if (teammates[numteammates - i - 1] == bs->flagcarrier) {
ADDRLP4 296
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
NEI4 $195
line 428
;428:					continue;
ADDRGP4 $192
JUMPV
LABELV $195
line 431
;429:				}
;430:				//
;431:				ClientName(teammates[numteammates - i - 1], name, sizeof(name));
ADDRLP4 296
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 432
;432:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 433
;433:				BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 434
;434:				BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_RETURNFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $170
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 435
;435:			}
LABELV $192
line 425
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $194
ADDRLP4 0
INDIRI4
ADDRLP4 304
INDIRI4
LTI4 $191
line 437
;436:			//
;437:			break;
LABELV $144
line 440
;438:		}
;439:	}
;440:}
LABELV $142
endproc BotCTFOrders_BothFlagsNotAtBase 368 20
export BotCTFOrders_FlagNotAtBase
proc BotCTFOrders_FlagNotAtBase 320 16
line 447
;441:
;442:/*
;443:==================
;444:BotCTFOrders
;445:==================
;446:*/
;447:void BotCTFOrders_FlagNotAtBase(bot_state_t *bs) {
line 452
;448:	int numteammates, defenders, attackers, i;
;449:	int teammates[MAX_CLIENTS];
;450:	char name[MAX_NETNAME];
;451:
;452:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
ARGP4
CNSTI4 256
ARGI4
ADDRLP4 308
ADDRGP4 BotSortTeamMatesByBaseTravelTime
CALLI4
ASGNI4
ADDRLP4 296
ADDRLP4 308
INDIRI4
ASGNI4
line 453
;453:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
ARGP4
ADDRLP4 296
INDIRI4
ARGI4
ADDRGP4 BotSortTeamMatesByTaskPreference
CALLI4
pop
line 455
;454:	//passive strategy
;455:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
ADDRFP4 0
INDIRP4
CNSTI4 6976
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
NEI4 $202
line 457
;456:		//different orders based on the number of team mates
;457:		switch(bs->numteammates) {
ADDRLP4 312
ADDRFP4 0
INDIRP4
CNSTI4 6948
ADDP4
INDIRI4
ASGNI4
ADDRLP4 312
INDIRI4
CNSTI4 1
EQI4 $203
ADDRLP4 312
INDIRI4
CNSTI4 2
EQI4 $208
ADDRLP4 312
INDIRI4
CNSTI4 3
EQI4 $213
ADDRGP4 $204
JUMPV
line 458
;458:			case 1: break;
LABELV $208
line 460
;459:			case 2:
;460:			{
line 462
;461:				//both will go for the enemy flag
;462:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 463
;463:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 464
;464:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 465
;465:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 467
;466:				//
;467:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 468
;468:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 469
;469:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 470
;470:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 471
;471:				break;
ADDRGP4 $203
JUMPV
LABELV $213
line 474
;472:			}
;473:			case 3:
;474:			{
line 476
;475:				//keep one near the base for when the flag is returned
;476:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 477
;477:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 478
;478:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 479
;479:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 481
;480:				//the other two get the flag
;481:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 482
;482:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 483
;483:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 484
;484:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 486
;485:				//
;486:				ClientName(teammates[2], name, sizeof(name));
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 487
;487:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 488
;488:				BotSayTeamOrder(bs, teammates[2]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 489
;489:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 490
;490:				break;
ADDRGP4 $203
JUMPV
LABELV $204
line 493
;491:			}
;492:			default:
;493:			{
line 495
;494:				//keep some people near the base for when the flag is returned
;495:				defenders = (int) (float) numteammates * 0.3 + 0.5;
ADDRLP4 300
CNSTF4 1050253722
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 496
;496:				if (defenders > 3) defenders = 3;
ADDRLP4 300
INDIRI4
CNSTI4 3
LEI4 $221
ADDRLP4 300
CNSTI4 3
ASGNI4
LABELV $221
line 497
;497:				attackers = (int) (float) numteammates * 0.7 + 0.5;
ADDRLP4 304
CNSTF4 1060320051
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 498
;498:				if (attackers > 6) attackers = 6;
ADDRLP4 304
INDIRI4
CNSTI4 6
LEI4 $223
ADDRLP4 304
CNSTI4 6
ASGNI4
LABELV $223
line 499
;499:				for (i = 0; i < defenders; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $228
JUMPV
LABELV $225
line 501
;500:					//
;501:					ClientName(teammates[i], name, sizeof(name));
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 502
;502:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 503
;503:					BotSayTeamOrder(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 504
;504:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 505
;505:				}
LABELV $226
line 499
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $228
ADDRLP4 256
INDIRI4
ADDRLP4 300
INDIRI4
LTI4 $225
line 506
;506:				for (i = 0; i < attackers; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $232
JUMPV
LABELV $229
line 508
;507:					//
;508:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 509
;509:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 510
;510:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 511
;511:					BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 512
;512:				}
LABELV $230
line 506
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $232
ADDRLP4 256
INDIRI4
ADDRLP4 304
INDIRI4
LTI4 $229
line 514
;513:				//
;514:				break;
line 517
;515:			}
;516:		}
;517:	}
ADDRGP4 $203
JUMPV
LABELV $202
line 518
;518:	else {
line 520
;519:		//different orders based on the number of team mates
;520:		switch(bs->numteammates) {
ADDRLP4 312
ADDRFP4 0
INDIRP4
CNSTI4 6948
ADDP4
INDIRI4
ASGNI4
ADDRLP4 312
INDIRI4
CNSTI4 1
EQI4 $236
ADDRLP4 312
INDIRI4
CNSTI4 2
EQI4 $239
ADDRLP4 312
INDIRI4
CNSTI4 3
EQI4 $243
ADDRGP4 $235
JUMPV
line 521
;521:			case 1: break;
LABELV $239
line 523
;522:			case 2:
;523:			{
line 525
;524:				//both will go for the enemy flag
;525:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 526
;526:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 527
;527:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 528
;528:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 530
;529:				//
;530:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 531
;531:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 532
;532:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 533
;533:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 534
;534:				break;
ADDRGP4 $236
JUMPV
LABELV $243
line 537
;535:			}
;536:			case 3:
;537:			{
line 539
;538:				//everyone go for the flag
;539:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 540
;540:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 541
;541:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 542
;542:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 544
;543:				//
;544:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 545
;545:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 546
;546:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 547
;547:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 549
;548:				//
;549:				ClientName(teammates[2], name, sizeof(name));
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 550
;550:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 551
;551:				BotSayTeamOrder(bs, teammates[2]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 552
;552:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 553
;553:				break;
ADDRGP4 $236
JUMPV
LABELV $235
line 556
;554:			}
;555:			default:
;556:			{
line 558
;557:				//keep some people near the base for when the flag is returned
;558:				defenders = (int) (float) numteammates * 0.2 + 0.5;
ADDRLP4 300
CNSTF4 1045220557
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 559
;559:				if (defenders > 2) defenders = 2;
ADDRLP4 300
INDIRI4
CNSTI4 2
LEI4 $250
ADDRLP4 300
CNSTI4 2
ASGNI4
LABELV $250
line 560
;560:				attackers = (int) (float) numteammates * 0.7 + 0.5;
ADDRLP4 304
CNSTF4 1060320051
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 561
;561:				if (attackers > 7) attackers = 7;
ADDRLP4 304
INDIRI4
CNSTI4 7
LEI4 $252
ADDRLP4 304
CNSTI4 7
ASGNI4
LABELV $252
line 562
;562:				for (i = 0; i < defenders; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $257
JUMPV
LABELV $254
line 564
;563:					//
;564:					ClientName(teammates[i], name, sizeof(name));
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 565
;565:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 566
;566:					BotSayTeamOrder(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 567
;567:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 568
;568:				}
LABELV $255
line 562
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $257
ADDRLP4 256
INDIRI4
ADDRLP4 300
INDIRI4
LTI4 $254
line 569
;569:				for (i = 0; i < attackers; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $261
JUMPV
LABELV $258
line 571
;570:					//
;571:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 572
;572:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 573
;573:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 574
;574:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 575
;575:				}
LABELV $259
line 569
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $261
ADDRLP4 256
INDIRI4
ADDRLP4 304
INDIRI4
LTI4 $258
line 577
;576:				//
;577:				break;
LABELV $236
line 580
;578:			}
;579:		}
;580:	}
LABELV $203
line 581
;581:}
LABELV $201
endproc BotCTFOrders_FlagNotAtBase 320 16
export BotCTFOrders_EnemyFlagNotAtBase
proc BotCTFOrders_EnemyFlagNotAtBase 360 20
line 588
;582:
;583:/*
;584:==================
;585:BotCTFOrders
;586:==================
;587:*/
;588:void BotCTFOrders_EnemyFlagNotAtBase(bot_state_t *bs) {
line 593
;589:	int numteammates, defenders, attackers, i, other;
;590:	int teammates[MAX_CLIENTS];
;591:	char name[MAX_NETNAME], carriername[MAX_NETNAME];
;592:
;593:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
CNSTI4 256
ARGI4
ADDRLP4 348
ADDRGP4 BotSortTeamMatesByBaseTravelTime
CALLI4
ASGNI4
ADDRLP4 260
ADDRLP4 348
INDIRI4
ASGNI4
line 594
;594:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
ADDRLP4 260
INDIRI4
ARGI4
ADDRGP4 BotSortTeamMatesByTaskPreference
CALLI4
pop
line 596
;595:	//different orders based on the number of team mates
;596:	switch(numteammates) {
ADDRLP4 260
INDIRI4
CNSTI4 1
EQI4 $267
ADDRLP4 260
INDIRI4
CNSTI4 2
EQI4 $269
ADDRLP4 260
INDIRI4
CNSTI4 3
EQI4 $273
ADDRGP4 $266
JUMPV
line 597
;597:		case 1: break;
LABELV $269
line 599
;598:		case 2:
;599:		{
line 601
;600:			//tell the one not carrying the flag to defend the base
;601:			if (teammates[0] == bs->flagcarrier) other = teammates[1];
ADDRLP4 4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
NEI4 $270
ADDRLP4 308
ADDRLP4 4+4
INDIRI4
ASGNI4
ADDRGP4 $271
JUMPV
LABELV $270
line 602
;602:			else other = teammates[0];
ADDRLP4 308
ADDRLP4 4
INDIRI4
ASGNI4
LABELV $271
line 603
;603:			ClientName(other, name, sizeof(name));
ADDRLP4 308
INDIRI4
ARGI4
ADDRLP4 264
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 604
;604:			BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 264
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 605
;605:			BotSayTeamOrder(bs, other);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 606
;606:			BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 607
;607:			break;
ADDRGP4 $267
JUMPV
LABELV $273
line 610
;608:		}
;609:		case 3:
;610:		{
line 612
;611:			//tell the one closest to the base not carrying the flag to defend the base
;612:			if (teammates[0] != bs->flagcarrier) other = teammates[0];
ADDRLP4 4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
EQI4 $274
ADDRLP4 308
ADDRLP4 4
INDIRI4
ASGNI4
ADDRGP4 $275
JUMPV
LABELV $274
line 613
;613:			else other = teammates[1];
ADDRLP4 308
ADDRLP4 4+4
INDIRI4
ASGNI4
LABELV $275
line 614
;614:			ClientName(other, name, sizeof(name));
ADDRLP4 308
INDIRI4
ARGI4
ADDRLP4 264
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 615
;615:			BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 264
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 616
;616:			BotSayTeamOrder(bs, other);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 617
;617:			BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 619
;618:			//tell the other also to defend the base
;619:			if (teammates[2] != bs->flagcarrier) other = teammates[2];
ADDRLP4 4+8
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
EQI4 $277
ADDRLP4 308
ADDRLP4 4+8
INDIRI4
ASGNI4
ADDRGP4 $278
JUMPV
LABELV $277
line 620
;620:			else other = teammates[1];
ADDRLP4 308
ADDRLP4 4+4
INDIRI4
ASGNI4
LABELV $278
line 621
;621:			ClientName(other, name, sizeof(name));
ADDRLP4 308
INDIRI4
ARGI4
ADDRLP4 264
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 622
;622:			BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 264
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 623
;623:			BotSayTeamOrder(bs, other);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 624
;624:			BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 308
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 625
;625:			break;
ADDRGP4 $267
JUMPV
LABELV $266
line 628
;626:		}
;627:		default:
;628:		{
line 630
;629:			//60% will defend the base
;630:			defenders = (int) (float) numteammates * 0.6 + 0.5;
ADDRLP4 300
CNSTF4 1058642330
ADDRLP4 260
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 631
;631:			if (defenders > 6) defenders = 6;
ADDRLP4 300
INDIRI4
CNSTI4 6
LEI4 $282
ADDRLP4 300
CNSTI4 6
ASGNI4
LABELV $282
line 633
;632:			//30% accompanies the flag carrier
;633:			attackers = (int) (float) numteammates * 0.3 + 0.5;
ADDRLP4 304
CNSTF4 1050253722
ADDRLP4 260
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 634
;634:			if (attackers > 3) attackers = 3;
ADDRLP4 304
INDIRI4
CNSTI4 3
LEI4 $284
ADDRLP4 304
CNSTI4 3
ASGNI4
LABELV $284
line 635
;635:			for (i = 0; i < defenders; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $289
JUMPV
LABELV $286
line 637
;636:				//
;637:				if (teammates[i] == bs->flagcarrier) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
NEI4 $290
line 638
;638:					continue;
ADDRGP4 $287
JUMPV
LABELV $290
line 640
;639:				}
;640:				ClientName(teammates[i], name, sizeof(name));
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRLP4 264
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 641
;641:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 264
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 642
;642:				BotSayTeamOrder(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 643
;643:				BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 644
;644:			}
LABELV $287
line 635
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $289
ADDRLP4 0
INDIRI4
ADDRLP4 300
INDIRI4
LTI4 $286
line 646
;645:			// if we have a flag carrier
;646:			if ( bs->flagcarrier != -1 ) {
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
CNSTI4 -1
EQI4 $292
line 647
;647:				ClientName(bs->flagcarrier, carriername, sizeof(carriername));
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
ARGI4
ADDRLP4 312
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 648
;648:				for (i = 0; i < attackers; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $297
JUMPV
LABELV $294
line 650
;649:					//
;650:					if (teammates[numteammates - i - 1] == bs->flagcarrier) {
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
NEI4 $298
line 651
;651:						continue;
ADDRGP4 $295
JUMPV
LABELV $298
line 654
;652:					}
;653:					//
;654:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRLP4 264
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 655
;655:					if (bs->flagcarrier == bs->client) {
ADDRLP4 356
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 356
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
ADDRLP4 356
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
NEI4 $302
line 656
;656:						BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $161
ARGP4
ADDRLP4 264
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 657
;657:						BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWME);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $162
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 658
;658:					}
ADDRGP4 $303
JUMPV
LABELV $302
line 659
;659:					else {
line 660
;660:						BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $163
ARGP4
ADDRLP4 264
ARGP4
ADDRLP4 312
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 661
;661:						BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWFLAGCARRIER);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $164
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 662
;662:					}
LABELV $303
line 663
;663:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 664
;664:				}
LABELV $295
line 648
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $297
ADDRLP4 0
INDIRI4
ADDRLP4 304
INDIRI4
LTI4 $294
line 665
;665:			}
ADDRGP4 $267
JUMPV
LABELV $292
line 666
;666:			else {
line 667
;667:				for (i = 0; i < attackers; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $310
JUMPV
LABELV $307
line 669
;668:					//
;669:					if (teammates[numteammates - i - 1] == bs->flagcarrier) {
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 6972
ADDP4
INDIRI4
NEI4 $311
line 670
;670:						continue;
ADDRGP4 $308
JUMPV
LABELV $311
line 673
;671:					}
;672:					//
;673:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRLP4 264
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 674
;674:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 264
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 675
;675:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 676
;676:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 260
INDIRI4
ADDRLP4 0
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 4-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 677
;677:				}
LABELV $308
line 667
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $310
ADDRLP4 0
INDIRI4
ADDRLP4 304
INDIRI4
LTI4 $307
line 678
;678:			}
line 680
;679:			//
;680:			break;
LABELV $267
line 683
;681:		}
;682:	}
;683:}
LABELV $265
endproc BotCTFOrders_EnemyFlagNotAtBase 360 20
export BotCTFOrders_BothFlagsAtBase
proc BotCTFOrders_BothFlagsAtBase 320 16
line 691
;684:
;685:
;686:/*
;687:==================
;688:BotCTFOrders
;689:==================
;690:*/
;691:void BotCTFOrders_BothFlagsAtBase(bot_state_t *bs) {
line 697
;692:	int numteammates, defenders, attackers, i;
;693:	int teammates[MAX_CLIENTS];
;694:	char name[MAX_NETNAME];
;695:
;696:	//sort team mates by travel time to base
;697:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
ARGP4
CNSTI4 256
ARGI4
ADDRLP4 308
ADDRGP4 BotSortTeamMatesByBaseTravelTime
CALLI4
ASGNI4
ADDRLP4 296
ADDRLP4 308
INDIRI4
ASGNI4
line 699
;698:	//sort team mates by CTF preference
;699:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
ARGP4
ADDRLP4 296
INDIRI4
ARGI4
ADDRGP4 BotSortTeamMatesByTaskPreference
CALLI4
pop
line 701
;700:	//passive strategy
;701:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
ADDRFP4 0
INDIRP4
CNSTI4 6976
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
NEI4 $318
line 703
;702:		//different orders based on the number of team mates
;703:		switch(numteammates) {
ADDRLP4 296
INDIRI4
CNSTI4 1
EQI4 $319
ADDRLP4 296
INDIRI4
CNSTI4 2
EQI4 $323
ADDRLP4 296
INDIRI4
CNSTI4 3
EQI4 $327
ADDRGP4 $320
JUMPV
line 704
;704:			case 1: break;
LABELV $323
line 706
;705:			case 2:
;706:			{
line 708
;707:				//the one closest to the base will defend the base
;708:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 709
;709:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 710
;710:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 711
;711:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 713
;712:				//the other will get the flag
;713:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 714
;714:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 715
;715:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 716
;716:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 717
;717:				break;
ADDRGP4 $319
JUMPV
LABELV $327
line 720
;718:			}
;719:			case 3:
;720:			{
line 722
;721:				//the one closest to the base will defend the base
;722:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 723
;723:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 724
;724:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 725
;725:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 727
;726:				//the second one closest to the base will defend the base
;727:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 728
;728:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 729
;729:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 730
;730:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 732
;731:				//the other will get the flag
;732:				ClientName(teammates[2], name, sizeof(name));
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 733
;733:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 734
;734:				BotSayTeamOrder(bs, teammates[2]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 735
;735:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 736
;736:				break;
ADDRGP4 $319
JUMPV
LABELV $320
line 739
;737:			}
;738:			default:
;739:			{
line 740
;740:				defenders = (int) (float) numteammates * 0.5 + 0.5;
ADDRLP4 316
CNSTF4 1056964608
ASGNF4
ADDRLP4 300
ADDRLP4 316
INDIRF4
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
ADDRLP4 316
INDIRF4
ADDF4
CVFI4 4
ASGNI4
line 741
;741:				if (defenders > 5) defenders = 5;
ADDRLP4 300
INDIRI4
CNSTI4 5
LEI4 $334
ADDRLP4 300
CNSTI4 5
ASGNI4
LABELV $334
line 742
;742:				attackers = (int) (float) numteammates * 0.4 + 0.5;
ADDRLP4 304
CNSTF4 1053609165
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 743
;743:				if (attackers > 4) attackers = 4;
ADDRLP4 304
INDIRI4
CNSTI4 4
LEI4 $336
ADDRLP4 304
CNSTI4 4
ASGNI4
LABELV $336
line 744
;744:				for (i = 0; i < defenders; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $341
JUMPV
LABELV $338
line 746
;745:					//
;746:					ClientName(teammates[i], name, sizeof(name));
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 747
;747:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 748
;748:					BotSayTeamOrder(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 749
;749:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 750
;750:				}
LABELV $339
line 744
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $341
ADDRLP4 256
INDIRI4
ADDRLP4 300
INDIRI4
LTI4 $338
line 751
;751:				for (i = 0; i < attackers; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $345
JUMPV
LABELV $342
line 753
;752:					//
;753:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 754
;754:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 755
;755:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 756
;756:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 757
;757:				}
LABELV $343
line 751
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $345
ADDRLP4 256
INDIRI4
ADDRLP4 304
INDIRI4
LTI4 $342
line 759
;758:				//
;759:				break;
line 762
;760:			}
;761:		}
;762:	}
ADDRGP4 $319
JUMPV
LABELV $318
line 763
;763:	else {
line 765
;764:		//different orders based on the number of team mates
;765:		switch(numteammates) {
ADDRLP4 296
INDIRI4
CNSTI4 1
EQI4 $350
ADDRLP4 296
INDIRI4
CNSTI4 2
EQI4 $352
ADDRLP4 296
INDIRI4
CNSTI4 3
EQI4 $356
ADDRGP4 $349
JUMPV
line 766
;766:			case 1: break;
LABELV $352
line 768
;767:			case 2:
;768:			{
line 770
;769:				//the one closest to the base will defend the base
;770:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 771
;771:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 772
;772:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 773
;773:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 775
;774:				//the other will get the flag
;775:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 776
;776:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 777
;777:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 778
;778:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 779
;779:				break;
ADDRGP4 $350
JUMPV
LABELV $356
line 782
;780:			}
;781:			case 3:
;782:			{
line 784
;783:				//the one closest to the base will defend the base
;784:				ClientName(teammates[0], name, sizeof(name));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 785
;785:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 786
;786:				BotSayTeamOrder(bs, teammates[0]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 787
;787:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 789
;788:				//the others should go for the enemy flag
;789:				ClientName(teammates[1], name, sizeof(name));
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 790
;790:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 791
;791:				BotSayTeamOrder(bs, teammates[1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 792
;792:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 794
;793:				//
;794:				ClientName(teammates[2], name, sizeof(name));
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 795
;795:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 796
;796:				BotSayTeamOrder(bs, teammates[2]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 797
;797:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0+8
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 798
;798:				break;
ADDRGP4 $350
JUMPV
LABELV $349
line 801
;799:			}
;800:			default:
;801:			{
line 802
;802:				defenders = (int) (float) numteammates * 0.4 + 0.5;
ADDRLP4 300
CNSTF4 1053609165
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
line 803
;803:				if (defenders > 4) defenders = 4;
ADDRLP4 300
INDIRI4
CNSTI4 4
LEI4 $363
ADDRLP4 300
CNSTI4 4
ASGNI4
LABELV $363
line 804
;804:				attackers = (int) (float) numteammates * 0.5 + 0.5;
ADDRLP4 316
CNSTF4 1056964608
ASGNF4
ADDRLP4 304
ADDRLP4 316
INDIRF4
ADDRLP4 296
INDIRI4
CVIF4 4
CVFI4 4
CVIF4 4
MULF4
ADDRLP4 316
INDIRF4
ADDF4
CVFI4 4
ASGNI4
line 805
;805:				if (attackers > 5) attackers = 5;
ADDRLP4 304
INDIRI4
CNSTI4 5
LEI4 $365
ADDRLP4 304
CNSTI4 5
ASGNI4
LABELV $365
line 806
;806:				for (i = 0; i < defenders; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $370
JUMPV
LABELV $367
line 808
;807:					//
;808:					ClientName(teammates[i], name, sizeof(name));
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 809
;809:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $209
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 810
;810:					BotSayTeamOrder(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 811
;811:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 256
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
ADDP4
INDIRI4
ARGI4
ADDRGP4 $214
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 812
;812:				}
LABELV $368
line 806
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $370
ADDRLP4 256
INDIRI4
ADDRLP4 300
INDIRI4
LTI4 $367
line 813
;813:				for (i = 0; i < attackers; i++) {
ADDRLP4 256
CNSTI4 0
ASGNI4
ADDRGP4 $374
JUMPV
LABELV $371
line 815
;814:					//
;815:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRLP4 260
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 816
;816:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $151
ARGP4
ADDRLP4 260
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 817
;817:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrder
CALLV
pop
line 818
;818:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 296
INDIRI4
ADDRLP4 256
INDIRI4
SUBI4
CNSTI4 2
LSHI4
ADDRLP4 0-4
ADDP4
INDIRI4
ARGI4
ADDRGP4 $152
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 819
;819:				}
LABELV $372
line 813
ADDRLP4 256
ADDRLP4 256
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $374
ADDRLP4 256
INDIRI4
ADDRLP4 304
INDIRI4
LTI4 $371
line 821
;820:				//
;821:				break;
LABELV $350
line 824
;822:			}
;823:		}
;824:	}
LABELV $319
line 825
;825:}
LABELV $317
endproc BotCTFOrders_BothFlagsAtBase 320 16
export BotCTFOrders
proc BotCTFOrders 20 4
line 832
;826:
;827:/*
;828:==================
;829:BotCTFOrders
;830:==================
;831:*/
;832:void BotCTFOrders(bot_state_t *bs) {
line 836
;833:	int flagstatus;
;834:
;835:	//
;836:	if (BotTeam(bs) == TEAM_RED) flagstatus = bs->redflagstatus * 2 + bs->blueflagstatus;
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 BotTeam
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 1
NEI4 $379
ADDRLP4 8
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
ADDRLP4 8
INDIRP4
CNSTI4 6952
ADDP4
INDIRI4
CNSTI4 1
LSHI4
ADDRLP4 8
INDIRP4
CNSTI4 6956
ADDP4
INDIRI4
ADDI4
ASGNI4
ADDRGP4 $380
JUMPV
LABELV $379
line 837
;837:	else flagstatus = bs->blueflagstatus * 2 + bs->redflagstatus;
ADDRLP4 12
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
ADDRLP4 12
INDIRP4
CNSTI4 6956
ADDP4
INDIRI4
CNSTI4 1
LSHI4
ADDRLP4 12
INDIRP4
CNSTI4 6952
ADDP4
INDIRI4
ADDI4
ASGNI4
LABELV $380
line 839
;838:	//
;839:	switch(flagstatus) {
ADDRLP4 16
ADDRLP4 0
INDIRI4
ASGNI4
ADDRLP4 16
INDIRI4
CNSTI4 0
LTI4 $381
ADDRLP4 16
INDIRI4
CNSTI4 3
GTI4 $381
ADDRLP4 16
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $387
ADDP4
INDIRP4
JUMPV
lit
align 4
LABELV $387
address $383
address $384
address $385
address $386
code
LABELV $383
line 840
;840:		case 0: BotCTFOrders_BothFlagsAtBase(bs); break;
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 BotCTFOrders_BothFlagsAtBase
CALLV
pop
ADDRGP4 $382
JUMPV
LABELV $384
line 841
;841:		case 1: BotCTFOrders_EnemyFlagNotAtBase(bs); break;
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 BotCTFOrders_EnemyFlagNotAtBase
CALLV
pop
ADDRGP4 $382
JUMPV
LABELV $385
line 842
;842:		case 2: BotCTFOrders_FlagNotAtBase(bs); break;
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 BotCTFOrders_FlagNotAtBase
CALLV
pop
ADDRGP4 $382
JUMPV
LABELV $386
line 843
;843:		case 3: BotCTFOrders_BothFlagsNotAtBase(bs); break;
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 BotCTFOrders_BothFlagsNotAtBase
CALLV
pop
LABELV $381
LABELV $382
line 845
;844:	}
;845:}
LABELV $378
endproc BotCTFOrders 20 4
export BotCreateGroup
proc BotCreateGroup 76 20
line 853
;846:
;847:
;848:/*
;849:==================
;850:BotCreateGroup
;851:==================
;852:*/
;853:void BotCreateGroup(bot_state_t *bs, int *teammates, int groupsize) {
line 858
;854:	char name[MAX_NETNAME], leadername[MAX_NETNAME];
;855:	int i;
;856:
;857:	// the others in the group will follow the teammates[0]
;858:	ClientName(teammates[0], leadername, sizeof(leadername));
ADDRFP4 4
INDIRP4
INDIRI4
ARGI4
ADDRLP4 40
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 859
;859:	for (i = 1; i < groupsize; i++)
ADDRLP4 0
CNSTI4 1
ASGNI4
ADDRGP4 $392
JUMPV
LABELV $389
line 860
;860:	{
line 861
;861:		ClientName(teammates[i], name, sizeof(name));
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRI4
ARGI4
ADDRLP4 4
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 862
;862:		if (teammates[0] == bs->client) {
ADDRFP4 4
INDIRP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
NEI4 $393
line 863
;863:			BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $161
ARGP4
ADDRLP4 4
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 864
;864:		}
ADDRGP4 $394
JUMPV
LABELV $393
line 865
;865:		else {
line 866
;866:			BotAI_BotInitialChat(bs, "cmd_accompany", name, leadername, NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $163
ARGP4
ADDRLP4 4
ARGP4
ADDRLP4 40
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 867
;867:		}
LABELV $394
line 868
;868:		BotSayTeamOrderAlways(bs, teammates[i]);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRI4
ARGI4
ADDRGP4 BotSayTeamOrderAlways
CALLV
pop
line 869
;869:	}
LABELV $390
line 859
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $392
ADDRLP4 0
INDIRI4
ADDRFP4 8
INDIRI4
LTI4 $389
line 870
;870:}
LABELV $388
endproc BotCreateGroup 76 20
bss
align 4
LABELV $396
skip 4
export BotTeamOrders
code
proc BotTeamOrders 1316 12
line 879
;871:
;872:/*
;873:==================
;874:BotTeamOrders
;875:
;876:  FIXME: defend key areas?
;877:==================
;878:*/
;879:void BotTeamOrders(bot_state_t *bs) {
line 885
;880:	int teammates[MAX_CLIENTS];
;881:	int numteammates, i;
;882:	char buf[MAX_INFO_STRING];
;883:	static int maxclients;
;884:
;885:	if (!maxclients)
ADDRGP4 $396
INDIRI4
CNSTI4 0
NEI4 $397
line 886
;886:		maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");
ADDRGP4 $62
ARGP4
ADDRLP4 1288
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRGP4 $396
ADDRLP4 1288
INDIRI4
ASGNI4
LABELV $397
line 888
;887:
;888:	numteammates = 0;
ADDRLP4 1028
CNSTI4 0
ASGNI4
line 889
;889:	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $402
JUMPV
LABELV $399
line 890
;890:		trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));
ADDRLP4 0
INDIRI4
CNSTI4 544
ADDI4
ARGI4
ADDRLP4 4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetConfigstring
CALLV
pop
line 892
;891:		//if no config string or no name
;892:		if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;
ADDRLP4 4
ARGP4
ADDRLP4 1292
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 1292
INDIRI4
CNSTI4 0
EQI4 $405
ADDRLP4 4
ARGP4
ADDRGP4 $69
ARGP4
ADDRLP4 1296
ADDRGP4 Info_ValueForKey
CALLP4
ASGNP4
ADDRLP4 1296
INDIRP4
ARGP4
ADDRLP4 1300
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 1300
INDIRI4
CNSTI4 0
NEI4 $403
LABELV $405
ADDRGP4 $400
JUMPV
LABELV $403
line 894
;893:		//skip spectators
;894:		if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;
ADDRLP4 4
ARGP4
ADDRGP4 $73
ARGP4
ADDRLP4 1304
ADDRGP4 Info_ValueForKey
CALLP4
ASGNP4
ADDRLP4 1304
INDIRP4
ARGP4
ADDRLP4 1308
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 1308
INDIRI4
CNSTI4 3
NEI4 $406
ADDRGP4 $400
JUMPV
LABELV $406
line 896
;895:		//
;896:		if (BotSameTeam(bs, i)) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 1312
ADDRGP4 BotSameTeam
CALLI4
ASGNI4
ADDRLP4 1312
INDIRI4
CNSTI4 0
EQI4 $408
line 897
;897:			teammates[numteammates] = i;
ADDRLP4 1028
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 1032
ADDP4
ADDRLP4 0
INDIRI4
ASGNI4
line 898
;898:			numteammates++;
ADDRLP4 1028
ADDRLP4 1028
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 899
;899:		}
LABELV $408
line 900
;900:	}
LABELV $400
line 889
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $402
ADDRLP4 0
INDIRI4
ADDRGP4 $396
INDIRI4
GEI4 $410
ADDRLP4 0
INDIRI4
CNSTI4 64
LTI4 $399
LABELV $410
line 902
;901:	//
;902:	switch(numteammates) {
ADDRLP4 1028
INDIRI4
CNSTI4 1
LTI4 $411
ADDRLP4 1028
INDIRI4
CNSTI4 5
GTI4 $411
ADDRLP4 1028
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $426-4
ADDP4
INDIRP4
JUMPV
lit
align 4
LABELV $426
address $412
address $412
address $415
address $416
address $418
code
line 903
;903:		case 1: break;
line 905
;904:		case 2:
;905:		{
line 907
;906:			//nothing special
;907:			break;
LABELV $415
line 910
;908:		}
;909:		case 3:
;910:		{
line 912
;911:			//have one follow another and one free roaming
;912:			BotCreateGroup(bs, teammates, 2);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1032
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 BotCreateGroup
CALLV
pop
line 913
;913:			break;
ADDRGP4 $412
JUMPV
LABELV $416
line 916
;914:		}
;915:		case 4:
;916:		{
line 917
;917:			BotCreateGroup(bs, teammates, 2);		//a group of 2
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1032
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 BotCreateGroup
CALLV
pop
line 918
;918:			BotCreateGroup(bs, &teammates[2], 2);	//a group of 2
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1032+8
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 BotCreateGroup
CALLV
pop
line 919
;919:			break;
ADDRGP4 $412
JUMPV
LABELV $418
line 922
;920:		}
;921:		case 5:
;922:		{
line 923
;923:			BotCreateGroup(bs, teammates, 2);		//a group of 2
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1032
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 BotCreateGroup
CALLV
pop
line 924
;924:			BotCreateGroup(bs, &teammates[2], 3);	//a group of 3
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1032+8
ARGP4
CNSTI4 3
ARGI4
ADDRGP4 BotCreateGroup
CALLV
pop
line 925
;925:			break;
ADDRGP4 $412
JUMPV
LABELV $411
line 928
;926:		}
;927:		default:
;928:		{
line 929
;929:			if (numteammates <= 10) {
ADDRLP4 1028
INDIRI4
CNSTI4 10
GTI4 $412
line 930
;930:				for (i = 0; i < numteammates / 2; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $425
JUMPV
LABELV $422
line 931
;931:					BotCreateGroup(bs, &teammates[i*2], 2);	//groups of 2
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1300
CNSTI4 2
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 1
LSHI4
ADDRLP4 1300
INDIRI4
LSHI4
ADDRLP4 1032
ADDP4
ARGP4
ADDRLP4 1300
INDIRI4
ARGI4
ADDRGP4 BotCreateGroup
CALLV
pop
line 932
;932:				}
LABELV $423
line 930
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $425
ADDRLP4 0
INDIRI4
ADDRLP4 1028
INDIRI4
CNSTI4 2
DIVI4
LTI4 $422
line 933
;933:			}
line 934
;934:			break;
LABELV $412
line 937
;935:		}
;936:	}
;937:}
LABELV $395
endproc BotTeamOrders 1316 12
export FindHumanTeamLeader
proc FindHumanTeamLeader 12 12
line 1899
;938:
;939:#ifdef MISSIONPACK
;940:
;941:/*
;942:==================
;943:Bot1FCTFOrders_FlagAtCenter
;944:
;945:  X% defend the base, Y% get the flag
;946:==================
;947:*/
;948:void Bot1FCTFOrders_FlagAtCenter(bot_state_t *bs) {
;949:	int numteammates, defenders, attackers, i;
;950:	int teammates[MAX_CLIENTS];
;951:	char name[MAX_NETNAME];
;952:
;953:	//sort team mates by travel time to base
;954:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
;955:	//sort team mates by CTF preference
;956:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
;957:	//passive strategy
;958:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
;959:		//different orders based on the number of team mates
;960:		switch(numteammates) {
;961:			case 1: break;
;962:			case 2:
;963:			{
;964:				//the one closest to the base will defend the base
;965:				ClientName(teammates[0], name, sizeof(name));
;966:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;967:				BotSayTeamOrder(bs, teammates[0]);
;968:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;969:				//the other will get the flag
;970:				ClientName(teammates[1], name, sizeof(name));
;971:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;972:				BotSayTeamOrder(bs, teammates[1]);
;973:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
;974:				break;
;975:			}
;976:			case 3:
;977:			{
;978:				//the one closest to the base will defend the base
;979:				ClientName(teammates[0], name, sizeof(name));
;980:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;981:				BotSayTeamOrder(bs, teammates[0]);
;982:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;983:				//the second one closest to the base will defend the base
;984:				ClientName(teammates[1], name, sizeof(name));
;985:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;986:				BotSayTeamOrder(bs, teammates[1]);
;987:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;988:				//the other will get the flag
;989:				ClientName(teammates[2], name, sizeof(name));
;990:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;991:				BotSayTeamOrder(bs, teammates[2]);
;992:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
;993:				break;
;994:			}
;995:			default:
;996:			{
;997:				//50% defend the base
;998:				defenders = (int) (float) numteammates * 0.5 + 0.5;
;999:				if (defenders > 5) defenders = 5;
;1000:				//40% get the flag
;1001:				attackers = (int) (float) numteammates * 0.4 + 0.5;
;1002:				if (attackers > 4) attackers = 4;
;1003:				for (i = 0; i < defenders; i++) {
;1004:					//
;1005:					ClientName(teammates[i], name, sizeof(name));
;1006:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1007:					BotSayTeamOrder(bs, teammates[i]);
;1008:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1009:				}
;1010:				for (i = 0; i < attackers; i++) {
;1011:					//
;1012:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1013:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1014:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1015:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
;1016:				}
;1017:				//
;1018:				break;
;1019:			}
;1020:		}
;1021:	}
;1022:	else { //agressive
;1023:		//different orders based on the number of team mates
;1024:		switch(numteammates) {
;1025:			case 1: break;
;1026:			case 2:
;1027:			{
;1028:				//the one closest to the base will defend the base
;1029:				ClientName(teammates[0], name, sizeof(name));
;1030:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1031:				BotSayTeamOrder(bs, teammates[0]);
;1032:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1033:				//the other will get the flag
;1034:				ClientName(teammates[1], name, sizeof(name));
;1035:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1036:				BotSayTeamOrder(bs, teammates[1]);
;1037:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
;1038:				break;
;1039:			}
;1040:			case 3:
;1041:			{
;1042:				//the one closest to the base will defend the base
;1043:				ClientName(teammates[0], name, sizeof(name));
;1044:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1045:				BotSayTeamOrder(bs, teammates[0]);
;1046:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1047:				//the others should go for the enemy flag
;1048:				ClientName(teammates[1], name, sizeof(name));
;1049:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1050:				BotSayTeamOrder(bs, teammates[1]);
;1051:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
;1052:				//
;1053:				ClientName(teammates[2], name, sizeof(name));
;1054:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1055:				BotSayTeamOrder(bs, teammates[2]);
;1056:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
;1057:				break;
;1058:			}
;1059:			default:
;1060:			{
;1061:				//30% defend the base
;1062:				defenders = (int) (float) numteammates * 0.3 + 0.5;
;1063:				if (defenders > 3) defenders = 3;
;1064:				//60% get the flag
;1065:				attackers = (int) (float) numteammates * 0.6 + 0.5;
;1066:				if (attackers > 6) attackers = 6;
;1067:				for (i = 0; i < defenders; i++) {
;1068:					//
;1069:					ClientName(teammates[i], name, sizeof(name));
;1070:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1071:					BotSayTeamOrder(bs, teammates[i]);
;1072:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1073:				}
;1074:				for (i = 0; i < attackers; i++) {
;1075:					//
;1076:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1077:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1078:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1079:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
;1080:				}
;1081:				//
;1082:				break;
;1083:			}
;1084:		}
;1085:	}
;1086:}
;1087:
;1088:/*
;1089:==================
;1090:Bot1FCTFOrders_TeamHasFlag
;1091:
;1092:  X% towards neutral flag, Y% go towards enemy base and accompany flag carrier if visible
;1093:==================
;1094:*/
;1095:void Bot1FCTFOrders_TeamHasFlag(bot_state_t *bs) {
;1096:	int numteammates, defenders, attackers, i, other;
;1097:	int teammates[MAX_CLIENTS];
;1098:	char name[MAX_NETNAME], carriername[MAX_NETNAME];
;1099:
;1100:	//sort team mates by travel time to base
;1101:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
;1102:	//sort team mates by CTF preference
;1103:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
;1104:	//passive strategy
;1105:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
;1106:		//different orders based on the number of team mates
;1107:		switch(numteammates) {
;1108:			case 1: break;
;1109:			case 2:
;1110:			{
;1111:				//tell the one not carrying the flag to attack the enemy base
;1112:				if (teammates[0] == bs->flagcarrier) other = teammates[1];
;1113:				else other = teammates[0];
;1114:				ClientName(other, name, sizeof(name));
;1115:				BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1116:				BotSayTeamOrder(bs, other);
;1117:				BotSayVoiceTeamOrder(bs, other, VOICECHAT_OFFENSE);
;1118:				break;
;1119:			}
;1120:			case 3:
;1121:			{
;1122:				//tell the one closest to the base not carrying the flag to defend the base
;1123:				if (teammates[0] != bs->flagcarrier) other = teammates[0];
;1124:				else other = teammates[1];
;1125:				ClientName(other, name, sizeof(name));
;1126:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1127:				BotSayTeamOrder(bs, other);
;1128:				BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
;1129:				//tell the one furthest from the base not carrying the flag to accompany the flag carrier
;1130:				if (teammates[2] != bs->flagcarrier) other = teammates[2];
;1131:				else other = teammates[1];
;1132:				ClientName(other, name, sizeof(name));
;1133:				if ( bs->flagcarrier != -1 ) {
;1134:					ClientName(bs->flagcarrier, carriername, sizeof(carriername));
;1135:					if (bs->flagcarrier == bs->client) {
;1136:						BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
;1137:						BotSayVoiceTeamOrder(bs, other, VOICECHAT_FOLLOWME);
;1138:					}
;1139:					else {
;1140:						BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, NULL);
;1141:						BotSayVoiceTeamOrder(bs, other, VOICECHAT_FOLLOWFLAGCARRIER);
;1142:					}
;1143:				}
;1144:				else {
;1145:					//
;1146:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1147:					BotSayVoiceTeamOrder(bs, other, VOICECHAT_GETFLAG);
;1148:				}
;1149:				BotSayTeamOrder(bs, other);
;1150:				break;
;1151:			}
;1152:			default:
;1153:			{
;1154:				//30% will defend the base
;1155:				defenders = (int) (float) numteammates * 0.3 + 0.5;
;1156:				if (defenders > 3) defenders = 3;
;1157:				//70% accompanies the flag carrier
;1158:				attackers = (int) (float) numteammates * 0.7 + 0.5;
;1159:				if (attackers > 7) attackers = 7;
;1160:				for (i = 0; i < defenders; i++) {
;1161:					//
;1162:					if (teammates[i] == bs->flagcarrier) {
;1163:						continue;
;1164:					}
;1165:					ClientName(teammates[i], name, sizeof(name));
;1166:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1167:					BotSayTeamOrder(bs, teammates[i]);
;1168:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1169:				}
;1170:				if (bs->flagcarrier != -1) {
;1171:					ClientName(bs->flagcarrier, carriername, sizeof(carriername));
;1172:					for (i = 0; i < attackers; i++) {
;1173:						//
;1174:						if (teammates[numteammates - i - 1] == bs->flagcarrier) {
;1175:							continue;
;1176:						}
;1177:						//
;1178:						ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1179:						if (bs->flagcarrier == bs->client) {
;1180:							BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
;1181:							BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWME);
;1182:						}
;1183:						else {
;1184:							BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, NULL);
;1185:							BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWFLAGCARRIER);
;1186:						}
;1187:						BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1188:					}
;1189:				}
;1190:				else {
;1191:					for (i = 0; i < attackers; i++) {
;1192:						//
;1193:						if (teammates[numteammates - i - 1] == bs->flagcarrier) {
;1194:							continue;
;1195:						}
;1196:						//
;1197:						ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1198:						BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1199:						BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1200:						BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
;1201:					}
;1202:				}
;1203:				//
;1204:				break;
;1205:			}
;1206:		}
;1207:	}
;1208:	else { //agressive
;1209:		//different orders based on the number of team mates
;1210:		switch(numteammates) {
;1211:			case 1: break;
;1212:			case 2:
;1213:			{
;1214:				//tell the one not carrying the flag to defend the base
;1215:				if (teammates[0] == bs->flagcarrier) other = teammates[1];
;1216:				else other = teammates[0];
;1217:				ClientName(other, name, sizeof(name));
;1218:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1219:				BotSayTeamOrder(bs, other);
;1220:				BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
;1221:				break;
;1222:			}
;1223:			case 3:
;1224:			{
;1225:				//tell the one closest to the base not carrying the flag to defend the base
;1226:				if (teammates[0] != bs->flagcarrier) other = teammates[0];
;1227:				else other = teammates[1];
;1228:				ClientName(other, name, sizeof(name));
;1229:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1230:				BotSayTeamOrder(bs, other);
;1231:				BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
;1232:				//tell the one furthest from the base not carrying the flag to accompany the flag carrier
;1233:				if (teammates[2] != bs->flagcarrier) other = teammates[2];
;1234:				else other = teammates[1];
;1235:				ClientName(other, name, sizeof(name));
;1236:				ClientName(bs->flagcarrier, carriername, sizeof(carriername));
;1237:				if (bs->flagcarrier == bs->client) {
;1238:					BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
;1239:					BotSayVoiceTeamOrder(bs, other, VOICECHAT_FOLLOWME);
;1240:				}
;1241:				else {
;1242:					BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, NULL);
;1243:					BotSayVoiceTeamOrder(bs, other, VOICECHAT_FOLLOWFLAGCARRIER);
;1244:				}
;1245:				BotSayTeamOrder(bs, other);
;1246:				break;
;1247:			}
;1248:			default:
;1249:			{
;1250:				//20% will defend the base
;1251:				defenders = (int) (float) numteammates * 0.2 + 0.5;
;1252:				if (defenders > 2) defenders = 2;
;1253:				//80% accompanies the flag carrier
;1254:				attackers = (int) (float) numteammates * 0.8 + 0.5;
;1255:				if (attackers > 8) attackers = 8;
;1256:				for (i = 0; i < defenders; i++) {
;1257:					//
;1258:					if (teammates[i] == bs->flagcarrier) {
;1259:						continue;
;1260:					}
;1261:					ClientName(teammates[i], name, sizeof(name));
;1262:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1263:					BotSayTeamOrder(bs, teammates[i]);
;1264:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1265:				}
;1266:				ClientName(bs->flagcarrier, carriername, sizeof(carriername));
;1267:				for (i = 0; i < attackers; i++) {
;1268:					//
;1269:					if (teammates[numteammates - i - 1] == bs->flagcarrier) {
;1270:						continue;
;1271:					}
;1272:					//
;1273:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1274:					if (bs->flagcarrier == bs->client) {
;1275:						BotAI_BotInitialChat(bs, "cmd_accompanyme", name, NULL);
;1276:						BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWME);
;1277:					}
;1278:					else {
;1279:						BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, NULL);
;1280:						BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWFLAGCARRIER);
;1281:					}
;1282:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1283:				}
;1284:				//
;1285:				break;
;1286:			}
;1287:		}
;1288:	}
;1289:}
;1290:
;1291:/*
;1292:==================
;1293:Bot1FCTFOrders_EnemyHasFlag
;1294:
;1295:  X% defend the base, Y% towards neutral flag
;1296:==================
;1297:*/
;1298:void Bot1FCTFOrders_EnemyHasFlag(bot_state_t *bs) {
;1299:	int numteammates, defenders, attackers, i;
;1300:	int teammates[MAX_CLIENTS];
;1301:	char name[MAX_NETNAME];
;1302:
;1303:	//sort team mates by travel time to base
;1304:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
;1305:	//sort team mates by CTF preference
;1306:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
;1307:	//passive strategy
;1308:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
;1309:		//different orders based on the number of team mates
;1310:		switch(numteammates) {
;1311:			case 1: break;
;1312:			case 2:
;1313:			{
;1314:				//both defend the base
;1315:				ClientName(teammates[0], name, sizeof(name));
;1316:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1317:				BotSayTeamOrder(bs, teammates[0]);
;1318:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1319:				//
;1320:				ClientName(teammates[1], name, sizeof(name));
;1321:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1322:				BotSayTeamOrder(bs, teammates[1]);
;1323:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
;1324:				break;
;1325:			}
;1326:			case 3:
;1327:			{
;1328:				//the one closest to the base will defend the base
;1329:				ClientName(teammates[0], name, sizeof(name));
;1330:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1331:				BotSayTeamOrder(bs, teammates[0]);
;1332:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1333:				//the second one closest to the base will defend the base
;1334:				ClientName(teammates[1], name, sizeof(name));
;1335:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1336:				BotSayTeamOrder(bs, teammates[1]);
;1337:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
;1338:				//the other will also defend the base
;1339:				ClientName(teammates[2], name, sizeof(name));
;1340:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1341:				BotSayTeamOrder(bs, teammates[2]);
;1342:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_DEFEND);
;1343:				break;
;1344:			}
;1345:			default:
;1346:			{
;1347:				//80% will defend the base
;1348:				defenders = (int) (float) numteammates * 0.8 + 0.5;
;1349:				if (defenders > 8) defenders = 8;
;1350:				//10% will try to return the flag
;1351:				attackers = (int) (float) numteammates * 0.1 + 0.5;
;1352:				if (attackers > 2) attackers = 2;
;1353:				for (i = 0; i < defenders; i++) {
;1354:					//
;1355:					ClientName(teammates[i], name, sizeof(name));
;1356:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1357:					BotSayTeamOrder(bs, teammates[i]);
;1358:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1359:				}
;1360:				for (i = 0; i < attackers; i++) {
;1361:					//
;1362:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1363:					BotAI_BotInitialChat(bs, "cmd_returnflag", name, NULL);
;1364:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1365:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
;1366:				}
;1367:				//
;1368:				break;
;1369:			}
;1370:		}
;1371:	}
;1372:	else { //agressive
;1373:		//different orders based on the number of team mates
;1374:		switch(numteammates) {
;1375:			case 1: break;
;1376:			case 2:
;1377:			{
;1378:				//the one closest to the base will defend the base
;1379:				ClientName(teammates[0], name, sizeof(name));
;1380:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1381:				BotSayTeamOrder(bs, teammates[0]);
;1382:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1383:				//the other will get the flag
;1384:				ClientName(teammates[1], name, sizeof(name));
;1385:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1386:				BotSayTeamOrder(bs, teammates[1]);
;1387:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
;1388:				break;
;1389:			}
;1390:			case 3:
;1391:			{
;1392:				//the one closest to the base will defend the base
;1393:				ClientName(teammates[0], name, sizeof(name));
;1394:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1395:				BotSayTeamOrder(bs, teammates[0]);
;1396:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1397:				//the others should go for the enemy flag
;1398:				ClientName(teammates[1], name, sizeof(name));
;1399:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1400:				BotSayTeamOrder(bs, teammates[1]);
;1401:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
;1402:				//
;1403:				ClientName(teammates[2], name, sizeof(name));
;1404:				BotAI_BotInitialChat(bs, "cmd_returnflag", name, NULL);
;1405:				BotSayTeamOrder(bs, teammates[2]);
;1406:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
;1407:				break;
;1408:			}
;1409:			default:
;1410:			{
;1411:				//70% defend the base
;1412:				defenders = (int) (float) numteammates * 0.7 + 0.5;
;1413:				if (defenders > 8) defenders = 8;
;1414:				//20% try to return the flag
;1415:				attackers = (int) (float) numteammates * 0.2 + 0.5;
;1416:				if (attackers > 2) attackers = 2;
;1417:				for (i = 0; i < defenders; i++) {
;1418:					//
;1419:					ClientName(teammates[i], name, sizeof(name));
;1420:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1421:					BotSayTeamOrder(bs, teammates[i]);
;1422:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1423:				}
;1424:				for (i = 0; i < attackers; i++) {
;1425:					//
;1426:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1427:					BotAI_BotInitialChat(bs, "cmd_returnflag", name, NULL);
;1428:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1429:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
;1430:				}
;1431:				//
;1432:				break;
;1433:			}
;1434:		}
;1435:	}
;1436:}
;1437:
;1438:/*
;1439:==================
;1440:Bot1FCTFOrders_EnemyDroppedFlag
;1441:
;1442:  X% defend the base, Y% get the flag
;1443:==================
;1444:*/
;1445:void Bot1FCTFOrders_EnemyDroppedFlag(bot_state_t *bs) {
;1446:	int numteammates, defenders, attackers, i;
;1447:	int teammates[MAX_CLIENTS];
;1448:	char name[MAX_NETNAME];
;1449:
;1450:	//sort team mates by travel time to base
;1451:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
;1452:	//sort team mates by CTF preference
;1453:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
;1454:	//passive strategy
;1455:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
;1456:		//different orders based on the number of team mates
;1457:		switch(numteammates) {
;1458:			case 1: break;
;1459:			case 2:
;1460:			{
;1461:				//the one closest to the base will defend the base
;1462:				ClientName(teammates[0], name, sizeof(name));
;1463:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1464:				BotSayTeamOrder(bs, teammates[0]);
;1465:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1466:				//the other will get the flag
;1467:				ClientName(teammates[1], name, sizeof(name));
;1468:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1469:				BotSayTeamOrder(bs, teammates[1]);
;1470:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
;1471:				break;
;1472:			}
;1473:			case 3:
;1474:			{
;1475:				//the one closest to the base will defend the base
;1476:				ClientName(teammates[0], name, sizeof(name));
;1477:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1478:				BotSayTeamOrder(bs, teammates[0]);
;1479:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1480:				//the second one closest to the base will defend the base
;1481:				ClientName(teammates[1], name, sizeof(name));
;1482:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1483:				BotSayTeamOrder(bs, teammates[1]);
;1484:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
;1485:				//the other will get the flag
;1486:				ClientName(teammates[2], name, sizeof(name));
;1487:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1488:				BotSayTeamOrder(bs, teammates[2]);
;1489:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
;1490:				break;
;1491:			}
;1492:			default:
;1493:			{
;1494:				//50% defend the base
;1495:				defenders = (int) (float) numteammates * 0.5 + 0.5;
;1496:				if (defenders > 5) defenders = 5;
;1497:				//40% get the flag
;1498:				attackers = (int) (float) numteammates * 0.4 + 0.5;
;1499:				if (attackers > 4) attackers = 4;
;1500:				for (i = 0; i < defenders; i++) {
;1501:					//
;1502:					ClientName(teammates[i], name, sizeof(name));
;1503:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1504:					BotSayTeamOrder(bs, teammates[i]);
;1505:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1506:				}
;1507:				for (i = 0; i < attackers; i++) {
;1508:					//
;1509:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1510:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1511:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1512:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
;1513:				}
;1514:				//
;1515:				break;
;1516:			}
;1517:		}
;1518:	}
;1519:	else { //agressive
;1520:		//different orders based on the number of team mates
;1521:		switch(numteammates) {
;1522:			case 1: break;
;1523:			case 2:
;1524:			{
;1525:				//the one closest to the base will defend the base
;1526:				ClientName(teammates[0], name, sizeof(name));
;1527:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1528:				BotSayTeamOrder(bs, teammates[0]);
;1529:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1530:				//the other will get the flag
;1531:				ClientName(teammates[1], name, sizeof(name));
;1532:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1533:				BotSayTeamOrder(bs, teammates[1]);
;1534:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
;1535:				break;
;1536:			}
;1537:			case 3:
;1538:			{
;1539:				//the one closest to the base will defend the base
;1540:				ClientName(teammates[0], name, sizeof(name));
;1541:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1542:				BotSayTeamOrder(bs, teammates[0]);
;1543:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1544:				//the others should go for the enemy flag
;1545:				ClientName(teammates[1], name, sizeof(name));
;1546:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1547:				BotSayTeamOrder(bs, teammates[1]);
;1548:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
;1549:				//
;1550:				ClientName(teammates[2], name, sizeof(name));
;1551:				BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1552:				BotSayTeamOrder(bs, teammates[2]);
;1553:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
;1554:				break;
;1555:			}
;1556:			default:
;1557:			{
;1558:				//30% defend the base
;1559:				defenders = (int) (float) numteammates * 0.3 + 0.5;
;1560:				if (defenders > 3) defenders = 3;
;1561:				//60% get the flag
;1562:				attackers = (int) (float) numteammates * 0.6 + 0.5;
;1563:				if (attackers > 6) attackers = 6;
;1564:				for (i = 0; i < defenders; i++) {
;1565:					//
;1566:					ClientName(teammates[i], name, sizeof(name));
;1567:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1568:					BotSayTeamOrder(bs, teammates[i]);
;1569:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1570:				}
;1571:				for (i = 0; i < attackers; i++) {
;1572:					//
;1573:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1574:					BotAI_BotInitialChat(bs, "cmd_getflag", name, NULL);
;1575:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1576:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_DEFEND);
;1577:				}
;1578:				//
;1579:				break;
;1580:			}
;1581:		}
;1582:	}
;1583:}
;1584:
;1585:/*
;1586:==================
;1587:Bot1FCTFOrders
;1588:==================
;1589:*/
;1590:void Bot1FCTFOrders(bot_state_t *bs) {
;1591:	switch(bs->neutralflagstatus) {
;1592:		case 0: Bot1FCTFOrders_FlagAtCenter(bs); break;
;1593:		case 1: Bot1FCTFOrders_TeamHasFlag(bs); break;
;1594:		case 2: Bot1FCTFOrders_EnemyHasFlag(bs); break;
;1595:		case 3: Bot1FCTFOrders_EnemyDroppedFlag(bs); break;
;1596:	}
;1597:}
;1598:
;1599:/*
;1600:==================
;1601:BotObeliskOrders
;1602:
;1603:  X% in defence Y% in offence
;1604:==================
;1605:*/
;1606:void BotObeliskOrders(bot_state_t *bs) {
;1607:	int numteammates, defenders, attackers, i;
;1608:	int teammates[MAX_CLIENTS];
;1609:	char name[MAX_NETNAME];
;1610:
;1611:	//sort team mates by travel time to base
;1612:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
;1613:	//sort team mates by CTF preference
;1614:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
;1615:	//passive strategy
;1616:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
;1617:		//different orders based on the number of team mates
;1618:		switch(numteammates) {
;1619:			case 1: break;
;1620:			case 2:
;1621:			{
;1622:				//the one closest to the base will defend the base
;1623:				ClientName(teammates[0], name, sizeof(name));
;1624:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1625:				BotSayTeamOrder(bs, teammates[0]);
;1626:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1627:				//the other will attack the enemy base
;1628:				ClientName(teammates[1], name, sizeof(name));
;1629:				BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1630:				BotSayTeamOrder(bs, teammates[1]);
;1631:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_OFFENSE);
;1632:				break;
;1633:			}
;1634:			case 3:
;1635:			{
;1636:				//the one closest to the base will defend the base
;1637:				ClientName(teammates[0], name, sizeof(name));
;1638:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1639:				BotSayTeamOrder(bs, teammates[0]);
;1640:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1641:				//the one second closest to the base also defends the base
;1642:				ClientName(teammates[1], name, sizeof(name));
;1643:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1644:				BotSayTeamOrder(bs, teammates[1]);
;1645:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
;1646:				//the other one attacks the enemy base
;1647:				ClientName(teammates[2], name, sizeof(name));
;1648:				BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1649:				BotSayTeamOrder(bs, teammates[2]);
;1650:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_OFFENSE);
;1651:				break;
;1652:			}
;1653:			default:
;1654:			{
;1655:				//50% defend the base
;1656:				defenders = (int) (float) numteammates * 0.5 + 0.5;
;1657:				if (defenders > 5) defenders = 5;
;1658:				//40% attack the enemy base
;1659:				attackers = (int) (float) numteammates * 0.4 + 0.5;
;1660:				if (attackers > 4) attackers = 4;
;1661:				for (i = 0; i < defenders; i++) {
;1662:					//
;1663:					ClientName(teammates[i], name, sizeof(name));
;1664:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1665:					BotSayTeamOrder(bs, teammates[i]);
;1666:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1667:				}
;1668:				for (i = 0; i < attackers; i++) {
;1669:					//
;1670:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1671:					BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1672:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1673:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_OFFENSE);
;1674:				}
;1675:				//
;1676:				break;
;1677:			}
;1678:		}
;1679:	}
;1680:	else {
;1681:		//different orders based on the number of team mates
;1682:		switch(numteammates) {
;1683:			case 1: break;
;1684:			case 2:
;1685:			{
;1686:				//the one closest to the base will defend the base
;1687:				ClientName(teammates[0], name, sizeof(name));
;1688:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1689:				BotSayTeamOrder(bs, teammates[0]);
;1690:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1691:				//the other will attack the enemy base
;1692:				ClientName(teammates[1], name, sizeof(name));
;1693:				BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1694:				BotSayTeamOrder(bs, teammates[1]);
;1695:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_OFFENSE);
;1696:				break;
;1697:			}
;1698:			case 3:
;1699:			{
;1700:				//the one closest to the base will defend the base
;1701:				ClientName(teammates[0], name, sizeof(name));
;1702:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1703:				BotSayTeamOrder(bs, teammates[0]);
;1704:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1705:				//the others attack the enemy base
;1706:				ClientName(teammates[1], name, sizeof(name));
;1707:				BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1708:				BotSayTeamOrder(bs, teammates[1]);
;1709:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_OFFENSE);
;1710:				//
;1711:				ClientName(teammates[2], name, sizeof(name));
;1712:				BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1713:				BotSayTeamOrder(bs, teammates[2]);
;1714:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_OFFENSE);
;1715:				break;
;1716:			}
;1717:			default:
;1718:			{
;1719:				//30% defend the base
;1720:				defenders = (int) (float) numteammates * 0.3 + 0.5;
;1721:				if (defenders > 3) defenders = 3;
;1722:				//70% attack the enemy base
;1723:				attackers = (int) (float) numteammates * 0.7 + 0.5;
;1724:				if (attackers > 7) attackers = 7;
;1725:				for (i = 0; i < defenders; i++) {
;1726:					//
;1727:					ClientName(teammates[i], name, sizeof(name));
;1728:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1729:					BotSayTeamOrder(bs, teammates[i]);
;1730:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1731:				}
;1732:				for (i = 0; i < attackers; i++) {
;1733:					//
;1734:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1735:					BotAI_BotInitialChat(bs, "cmd_attackenemybase", name, NULL);
;1736:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1737:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_OFFENSE);
;1738:				}
;1739:				//
;1740:				break;
;1741:			}
;1742:		}
;1743:	}
;1744:}
;1745:
;1746:/*
;1747:==================
;1748:BotHarvesterOrders
;1749:
;1750:  X% defend the base, Y% harvest
;1751:==================
;1752:*/
;1753:void BotHarvesterOrders(bot_state_t *bs) {
;1754:	int numteammates, defenders, attackers, i;
;1755:	int teammates[MAX_CLIENTS];
;1756:	char name[MAX_NETNAME];
;1757:
;1758:	//sort team mates by travel time to base
;1759:	numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
;1760:	//sort team mates by CTF preference
;1761:	BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);
;1762:	//passive strategy
;1763:	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
;1764:		//different orders based on the number of team mates
;1765:		switch(numteammates) {
;1766:			case 1: break;
;1767:			case 2:
;1768:			{
;1769:				//the one closest to the base will defend the base
;1770:				ClientName(teammates[0], name, sizeof(name));
;1771:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1772:				BotSayTeamOrder(bs, teammates[0]);
;1773:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1774:				//the other will harvest
;1775:				ClientName(teammates[1], name, sizeof(name));
;1776:				BotAI_BotInitialChat(bs, "cmd_harvest", name, NULL);
;1777:				BotSayTeamOrder(bs, teammates[1]);
;1778:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_OFFENSE);
;1779:				break;
;1780:			}
;1781:			case 3:
;1782:			{
;1783:				//the one closest to the base will defend the base
;1784:				ClientName(teammates[0], name, sizeof(name));
;1785:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1786:				BotSayTeamOrder(bs, teammates[0]);
;1787:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1788:				//the one second closest to the base also defends the base
;1789:				ClientName(teammates[1], name, sizeof(name));
;1790:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1791:				BotSayTeamOrder(bs, teammates[1]);
;1792:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);
;1793:				//the other one goes harvesting
;1794:				ClientName(teammates[2], name, sizeof(name));
;1795:				BotAI_BotInitialChat(bs, "cmd_harvest", name, NULL);
;1796:				BotSayTeamOrder(bs, teammates[2]);
;1797:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_OFFENSE);
;1798:				break;
;1799:			}
;1800:			default:
;1801:			{
;1802:				//50% defend the base
;1803:				defenders = (int) (float) numteammates * 0.5 + 0.5;
;1804:				if (defenders > 5) defenders = 5;
;1805:				//40% goes harvesting
;1806:				attackers = (int) (float) numteammates * 0.4 + 0.5;
;1807:				if (attackers > 4) attackers = 4;
;1808:				for (i = 0; i < defenders; i++) {
;1809:					//
;1810:					ClientName(teammates[i], name, sizeof(name));
;1811:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1812:					BotSayTeamOrder(bs, teammates[i]);
;1813:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1814:				}
;1815:				for (i = 0; i < attackers; i++) {
;1816:					//
;1817:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1818:					BotAI_BotInitialChat(bs, "cmd_harvest", name, NULL);
;1819:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1820:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_OFFENSE);
;1821:				}
;1822:				//
;1823:				break;
;1824:			}
;1825:		}
;1826:	}
;1827:	else {
;1828:		//different orders based on the number of team mates
;1829:		switch(numteammates) {
;1830:			case 1: break;
;1831:			case 2:
;1832:			{
;1833:				//the one closest to the base will defend the base
;1834:				ClientName(teammates[0], name, sizeof(name));
;1835:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1836:				BotSayTeamOrder(bs, teammates[0]);
;1837:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1838:				//the other will harvest
;1839:				ClientName(teammates[1], name, sizeof(name));
;1840:				BotAI_BotInitialChat(bs, "cmd_harvest", name, NULL);
;1841:				BotSayTeamOrder(bs, teammates[1]);
;1842:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_OFFENSE);
;1843:				break;
;1844:			}
;1845:			case 3:
;1846:			{
;1847:				//the one closest to the base will defend the base
;1848:				ClientName(teammates[0], name, sizeof(name));
;1849:				BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1850:				BotSayTeamOrder(bs, teammates[0]);
;1851:				BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);
;1852:				//the others go harvesting
;1853:				ClientName(teammates[1], name, sizeof(name));
;1854:				BotAI_BotInitialChat(bs, "cmd_harvest", name, NULL);
;1855:				BotSayTeamOrder(bs, teammates[1]);
;1856:				BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_OFFENSE);
;1857:				//
;1858:				ClientName(teammates[2], name, sizeof(name));
;1859:				BotAI_BotInitialChat(bs, "cmd_harvest", name, NULL);
;1860:				BotSayTeamOrder(bs, teammates[2]);
;1861:				BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_OFFENSE);
;1862:				break;
;1863:			}
;1864:			default:
;1865:			{
;1866:				//30% defend the base
;1867:				defenders = (int) (float) numteammates * 0.3 + 0.5;
;1868:				if (defenders > 3) defenders = 3;
;1869:				//70% go harvesting
;1870:				attackers = (int) (float) numteammates * 0.7 + 0.5;
;1871:				if (attackers > 7) attackers = 7;
;1872:				for (i = 0; i < defenders; i++) {
;1873:					//
;1874:					ClientName(teammates[i], name, sizeof(name));
;1875:					BotAI_BotInitialChat(bs, "cmd_defendbase", name, NULL);
;1876:					BotSayTeamOrder(bs, teammates[i]);
;1877:					BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
;1878:				}
;1879:				for (i = 0; i < attackers; i++) {
;1880:					//
;1881:					ClientName(teammates[numteammates - i - 1], name, sizeof(name));
;1882:					BotAI_BotInitialChat(bs, "cmd_harvest", name, NULL);
;1883:					BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
;1884:					BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_OFFENSE);
;1885:				}
;1886:				//
;1887:				break;
;1888:			}
;1889:		}
;1890:	}
;1891:}
;1892:#endif
;1893:
;1894:/*
;1895:==================
;1896:FindHumanTeamLeader
;1897:==================
;1898:*/
;1899:int FindHumanTeamLeader(bot_state_t *bs) {
line 1902
;1900:	int i;
;1901:
;1902:	for (i = 0; i < MAX_CLIENTS; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $429
line 1903
;1903:		if ( g_entities[i].inuse ) {
CNSTI4 808
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities+520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $433
line 1905
;1904:			// if this player is not a bot
;1905:			if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {
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
NEI4 $436
line 1907
;1906:				// if this player is ok with being the leader
;1907:				if (!notleader[i]) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 notleader
ADDP4
INDIRI4
CNSTI4 0
NEI4 $440
line 1909
;1908:					// if this player is on the same team
;1909:					if ( BotSameTeam(bs, i) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 BotSameTeam
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
EQI4 $442
line 1910
;1910:						ClientName(i, bs->teamleader, sizeof(bs->teamleader));
ADDRLP4 0
INDIRI4
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 6900
ADDP4
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 1912
;1911:						// if not yet ordered to do anything
;1912:						if ( !BotSetLastOrderedTask(bs) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 8
ADDRGP4 BotSetLastOrderedTask
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $444
line 1914
;1913:							// go on defense by default
;1914:							BotVoiceChat_Defend(bs, i, SAY_TELL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
CNSTI4 2
ARGI4
ADDRGP4 BotVoiceChat_Defend
CALLV
pop
line 1915
;1915:						}
LABELV $444
line 1916
;1916:						return qtrue;
CNSTI4 1
RETI4
ADDRGP4 $428
JUMPV
LABELV $442
line 1918
;1917:					}
;1918:				}
LABELV $440
line 1919
;1919:			}
LABELV $436
line 1920
;1920:		}
LABELV $433
line 1921
;1921:	}
LABELV $430
line 1902
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 64
LTI4 $429
line 1922
;1922:	return qfalse;
CNSTI4 0
RETI4
LABELV $428
endproc FindHumanTeamLeader 12 12
export BotTeamAI
proc BotTeamAI 72 12
line 1930
;1923:}
;1924:
;1925:/*
;1926:==================
;1927:BotTeamAI
;1928:==================
;1929:*/
;1930:void BotTeamAI(bot_state_t *bs) {
line 1935
;1931:	int numteammates;
;1932:	char netname[MAX_NETNAME];
;1933:
;1934:	//
;1935:	if ( gametype < GT_TEAM  )
ADDRGP4 gametype
INDIRI4
CNSTI4 3
GEI4 $447
line 1936
;1936:		return;
ADDRGP4 $446
JUMPV
LABELV $447
line 1938
;1937:	// make sure we've got a valid team leader
;1938:	if (!BotValidTeamLeader(bs)) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 40
ADDRGP4 BotValidTeamLeader
CALLI4
ASGNI4
ADDRLP4 40
INDIRI4
CNSTI4 0
NEI4 $449
line 1940
;1939:		//
;1940:		if (!FindHumanTeamLeader(bs)) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 44
ADDRGP4 FindHumanTeamLeader
CALLI4
ASGNI4
ADDRLP4 44
INDIRI4
CNSTI4 0
NEI4 $451
line 1942
;1941:			//
;1942:			if (!bs->askteamleader_time && !bs->becometeamleader_time) {
ADDRLP4 48
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 52
CNSTF4 0
ASGNF4
ADDRLP4 48
INDIRP4
CNSTI4 6932
ADDP4
INDIRF4
ADDRLP4 52
INDIRF4
NEF4 $453
ADDRLP4 48
INDIRP4
CNSTI4 6936
ADDP4
INDIRF4
ADDRLP4 52
INDIRF4
NEF4 $453
line 1943
;1943:				if (bs->entergame_time + 10 > FloatTime()) {
ADDRFP4 0
INDIRP4
CNSTI4 6064
ADDP4
INDIRF4
CNSTF4 1092616192
ADDF4
ADDRGP4 floattime
INDIRF4
LEF4 $455
line 1944
;1944:					bs->askteamleader_time = FloatTime() + 5 + random() * 10;
ADDRLP4 56
ADDRGP4 rand
CALLI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 6932
ADDP4
ADDRGP4 floattime
INDIRF4
CNSTF4 1084227584
ADDF4
CNSTF4 1092616192
ADDRLP4 56
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 1191181824
DIVF4
MULF4
ADDF4
ASGNF4
line 1945
;1945:				}
ADDRGP4 $456
JUMPV
LABELV $455
line 1946
;1946:				else {
line 1947
;1947:					bs->becometeamleader_time = FloatTime() + 5 + random() * 10;
ADDRLP4 56
ADDRGP4 rand
CALLI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 6936
ADDP4
ADDRGP4 floattime
INDIRF4
CNSTF4 1084227584
ADDF4
CNSTF4 1092616192
ADDRLP4 56
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 1191181824
DIVF4
MULF4
ADDF4
ASGNF4
line 1948
;1948:				}
LABELV $456
line 1949
;1949:			}
LABELV $453
line 1950
;1950:			if (bs->askteamleader_time && bs->askteamleader_time < FloatTime()) {
ADDRLP4 56
ADDRFP4 0
INDIRP4
CNSTI4 6932
ADDP4
INDIRF4
ASGNF4
ADDRLP4 56
INDIRF4
CNSTF4 0
EQF4 $457
ADDRLP4 56
INDIRF4
ADDRGP4 floattime
INDIRF4
GEF4 $457
line 1952
;1951:				// if asked for a team leader and no response
;1952:				BotAI_BotInitialChat(bs, "whoisteamleader", NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $459
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 1953
;1953:				trap_BotEnterChat(bs->cs, 0, CHAT_TEAM);
ADDRFP4 0
INDIRP4
CNSTI4 6532
ADDP4
INDIRI4
ARGI4
CNSTI4 0
ARGI4
CNSTI4 1
ARGI4
ADDRGP4 trap_BotEnterChat
CALLV
pop
line 1954
;1954:				bs->askteamleader_time = 0;
ADDRFP4 0
INDIRP4
CNSTI4 6932
ADDP4
CNSTF4 0
ASGNF4
line 1955
;1955:				bs->becometeamleader_time = FloatTime() + 8 + random() * 10;
ADDRLP4 60
ADDRGP4 rand
CALLI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 6936
ADDP4
ADDRGP4 floattime
INDIRF4
CNSTF4 1090519040
ADDF4
CNSTF4 1092616192
ADDRLP4 60
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 1191181824
DIVF4
MULF4
ADDF4
ASGNF4
line 1956
;1956:			}
LABELV $457
line 1957
;1957:			if (bs->becometeamleader_time && bs->becometeamleader_time < FloatTime()) {
ADDRLP4 60
ADDRFP4 0
INDIRP4
CNSTI4 6936
ADDP4
INDIRF4
ASGNF4
ADDRLP4 60
INDIRF4
CNSTF4 0
EQF4 $446
ADDRLP4 60
INDIRF4
ADDRGP4 floattime
INDIRF4
GEF4 $446
line 1958
;1958:				BotAI_BotInitialChat(bs, "iamteamleader", NULL);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $462
ARGP4
CNSTP4 0
ARGP4
ADDRGP4 BotAI_BotInitialChat
CALLV
pop
line 1959
;1959:				trap_BotEnterChat(bs->cs, 0, CHAT_TEAM);
ADDRFP4 0
INDIRP4
CNSTI4 6532
ADDP4
INDIRI4
ARGI4
CNSTI4 0
ARGI4
CNSTI4 1
ARGI4
ADDRGP4 trap_BotEnterChat
CALLV
pop
line 1960
;1960:				BotSayVoiceTeamOrder(bs, -1, VOICECHAT_STARTLEADER);
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 -1
ARGI4
ADDRGP4 $463
ARGP4
ADDRGP4 BotSayVoiceTeamOrder
CALLV
pop
line 1961
;1961:				ClientName(bs->client, netname, sizeof(netname));
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 1962
;1962:				strncpy(bs->teamleader, netname, sizeof(bs->teamleader));
ADDRFP4 0
INDIRP4
CNSTI4 6900
ADDP4
ARGP4
ADDRLP4 0
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 strncpy
CALLP4
pop
line 1963
;1963:				bs->teamleader[sizeof(bs->teamleader)] = '\0';
ADDRFP4 0
INDIRP4
CNSTI4 6900
CNSTU4 32
ADDI4
ADDP4
CNSTI1 0
ASGNI1
line 1964
;1964:				bs->becometeamleader_time = 0;
ADDRFP4 0
INDIRP4
CNSTI4 6936
ADDP4
CNSTF4 0
ASGNF4
line 1965
;1965:			}
line 1966
;1966:			return;
ADDRGP4 $446
JUMPV
LABELV $451
line 1968
;1967:		}
;1968:	}
LABELV $449
line 1969
;1969:	bs->askteamleader_time = 0;
ADDRFP4 0
INDIRP4
CNSTI4 6932
ADDP4
CNSTF4 0
ASGNF4
line 1970
;1970:	bs->becometeamleader_time = 0;
ADDRFP4 0
INDIRP4
CNSTI4 6936
ADDP4
CNSTF4 0
ASGNF4
line 1973
;1971:
;1972:	//return if this bot is NOT the team leader
;1973:	ClientName(bs->client, netname, sizeof(netname));
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 ClientName
CALLP4
pop
line 1974
;1974:	if (Q_stricmp(netname, bs->teamleader) != 0) return;
ADDRLP4 0
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 6900
ADDP4
ARGP4
ADDRLP4 44
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 44
INDIRI4
CNSTI4 0
EQI4 $464
ADDRGP4 $446
JUMPV
LABELV $464
line 1976
;1975:	//
;1976:	numteammates = BotNumTeamMates(bs);
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 48
ADDRGP4 BotNumTeamMates
CALLI4
ASGNI4
ADDRLP4 36
ADDRLP4 48
INDIRI4
ASGNI4
line 1978
;1977:	//give orders
;1978:	switch(gametype) {
ADDRLP4 52
ADDRGP4 gametype
INDIRI4
ASGNI4
ADDRLP4 52
INDIRI4
CNSTI4 3
EQI4 $468
ADDRLP4 52
INDIRI4
CNSTI4 4
EQI4 $474
ADDRGP4 $466
JUMPV
LABELV $468
line 1980
;1979:		case GT_TEAM:
;1980:		{
line 1981
;1981:			if (bs->numteammates != numteammates || bs->forceorders) {
ADDRLP4 56
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 56
INDIRP4
CNSTI4 6948
ADDP4
INDIRI4
ADDRLP4 36
INDIRI4
NEI4 $471
ADDRLP4 56
INDIRP4
CNSTI4 6968
ADDP4
INDIRI4
CNSTI4 0
EQI4 $469
LABELV $471
line 1982
;1982:				bs->teamgiveorders_time = FloatTime();
ADDRFP4 0
INDIRP4
CNSTI4 6940
ADDP4
ADDRGP4 floattime
INDIRF4
ASGNF4
line 1983
;1983:				bs->numteammates = numteammates;
ADDRFP4 0
INDIRP4
CNSTI4 6948
ADDP4
ADDRLP4 36
INDIRI4
ASGNI4
line 1984
;1984:				bs->forceorders = qfalse;
ADDRFP4 0
INDIRP4
CNSTI4 6968
ADDP4
CNSTI4 0
ASGNI4
line 1985
;1985:			}
LABELV $469
line 1987
;1986:			//if it's time to give orders
;1987:			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 5) {
ADDRLP4 60
ADDRFP4 0
INDIRP4
CNSTI4 6940
ADDP4
INDIRF4
ASGNF4
ADDRLP4 60
INDIRF4
CNSTF4 0
EQF4 $467
ADDRLP4 60
INDIRF4
ADDRGP4 floattime
INDIRF4
CNSTF4 1084227584
SUBF4
GEF4 $467
line 1988
;1988:				BotTeamOrders(bs);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 BotTeamOrders
CALLV
pop
line 1990
;1989:				//give orders again after 120 seconds
;1990:				bs->teamgiveorders_time = FloatTime() + 120;
ADDRFP4 0
INDIRP4
CNSTI4 6940
ADDP4
ADDRGP4 floattime
INDIRF4
CNSTF4 1123024896
ADDF4
ASGNF4
line 1991
;1991:			}
line 1992
;1992:			break;
ADDRGP4 $467
JUMPV
LABELV $474
line 1995
;1993:		}
;1994:		case GT_CTF:
;1995:		{
line 1998
;1996:			//if the number of team mates changed or the flag status changed
;1997:			//or someone wants to know what to do
;1998:			if (bs->numteammates != numteammates || bs->flagstatuschanged || bs->forceorders) {
ADDRLP4 56
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 56
INDIRP4
CNSTI4 6948
ADDP4
INDIRI4
ADDRLP4 36
INDIRI4
NEI4 $478
ADDRLP4 60
CNSTI4 0
ASGNI4
ADDRLP4 56
INDIRP4
CNSTI4 6964
ADDP4
INDIRI4
ADDRLP4 60
INDIRI4
NEI4 $478
ADDRLP4 56
INDIRP4
CNSTI4 6968
ADDP4
INDIRI4
ADDRLP4 60
INDIRI4
EQI4 $475
LABELV $478
line 1999
;1999:				bs->teamgiveorders_time = FloatTime();
ADDRFP4 0
INDIRP4
CNSTI4 6940
ADDP4
ADDRGP4 floattime
INDIRF4
ASGNF4
line 2000
;2000:				bs->numteammates = numteammates;
ADDRFP4 0
INDIRP4
CNSTI4 6948
ADDP4
ADDRLP4 36
INDIRI4
ASGNI4
line 2001
;2001:				bs->flagstatuschanged = qfalse;
ADDRFP4 0
INDIRP4
CNSTI4 6964
ADDP4
CNSTI4 0
ASGNI4
line 2002
;2002:				bs->forceorders = qfalse;
ADDRFP4 0
INDIRP4
CNSTI4 6968
ADDP4
CNSTI4 0
ASGNI4
line 2003
;2003:			}
LABELV $475
line 2005
;2004:			//if there were no flag captures the last 3 minutes
;2005:			if (bs->lastflagcapture_time < FloatTime() - 240) {
ADDRFP4 0
INDIRP4
CNSTI4 6944
ADDP4
INDIRF4
ADDRGP4 floattime
INDIRF4
CNSTF4 1131413504
SUBF4
GEF4 $479
line 2006
;2006:				bs->lastflagcapture_time = FloatTime();
ADDRFP4 0
INDIRP4
CNSTI4 6944
ADDP4
ADDRGP4 floattime
INDIRF4
ASGNF4
line 2008
;2007:				//randomly change the CTF strategy
;2008:				if (random() < 0.4) {
ADDRLP4 64
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 64
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 1191181824
DIVF4
CNSTF4 1053609165
GEF4 $481
line 2009
;2009:					bs->ctfstrategy ^= CTFS_AGRESSIVE;
ADDRLP4 68
ADDRFP4 0
INDIRP4
CNSTI4 6976
ADDP4
ASGNP4
ADDRLP4 68
INDIRP4
ADDRLP4 68
INDIRP4
INDIRI4
CNSTI4 1
BXORI4
ASGNI4
line 2010
;2010:					bs->teamgiveorders_time = FloatTime();
ADDRFP4 0
INDIRP4
CNSTI4 6940
ADDP4
ADDRGP4 floattime
INDIRF4
ASGNF4
line 2011
;2011:				}
LABELV $481
line 2012
;2012:			}
LABELV $479
line 2014
;2013:			//if it's time to give orders
;2014:			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 3) {
ADDRLP4 64
ADDRFP4 0
INDIRP4
CNSTI4 6940
ADDP4
INDIRF4
ASGNF4
ADDRLP4 64
INDIRF4
CNSTF4 0
EQF4 $467
ADDRLP4 64
INDIRF4
ADDRGP4 floattime
INDIRF4
CNSTF4 1077936128
SUBF4
GEF4 $467
line 2015
;2015:				BotCTFOrders(bs);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 BotCTFOrders
CALLV
pop
line 2017
;2016:				//
;2017:				bs->teamgiveorders_time = 0;
ADDRFP4 0
INDIRP4
CNSTI4 6940
ADDP4
CNSTF4 0
ASGNF4
line 2018
;2018:			}
line 2019
;2019:			break;
LABELV $466
LABELV $467
line 2079
;2020:		}
;2021:#ifdef MISSIONPACK
;2022:		case GT_1FCTF:
;2023:		{
;2024:			if (bs->numteammates != numteammates || bs->flagstatuschanged || bs->forceorders) {
;2025:				bs->teamgiveorders_time = FloatTime();
;2026:				bs->numteammates = numteammates;
;2027:				bs->flagstatuschanged = qfalse;
;2028:				bs->forceorders = qfalse;
;2029:			}
;2030:			//if there were no flag captures the last 4 minutes
;2031:			if (bs->lastflagcapture_time < FloatTime() - 240) {
;2032:				bs->lastflagcapture_time = FloatTime();
;2033:				//randomly change the CTF strategy
;2034:				if (random() < 0.4) {
;2035:					bs->ctfstrategy ^= CTFS_AGRESSIVE;
;2036:					bs->teamgiveorders_time = FloatTime();
;2037:				}
;2038:			}
;2039:			//if it's time to give orders
;2040:			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 2) {
;2041:				Bot1FCTFOrders(bs);
;2042:				//
;2043:				bs->teamgiveorders_time = 0;
;2044:			}
;2045:			break;
;2046:		}
;2047:		case GT_OBELISK:
;2048:		{
;2049:			if (bs->numteammates != numteammates || bs->forceorders) {
;2050:				bs->teamgiveorders_time = FloatTime();
;2051:				bs->numteammates = numteammates;
;2052:				bs->forceorders = qfalse;
;2053:			}
;2054:			//if it's time to give orders
;2055:			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 5) {
;2056:				BotObeliskOrders(bs);
;2057:				//give orders again after 30 seconds
;2058:				bs->teamgiveorders_time = FloatTime() + 30;
;2059:			}
;2060:			break;
;2061:		}
;2062:		case GT_HARVESTER:
;2063:		{
;2064:			if (bs->numteammates != numteammates || bs->forceorders) {
;2065:				bs->teamgiveorders_time = FloatTime();
;2066:				bs->numteammates = numteammates;
;2067:				bs->forceorders = qfalse;
;2068:			}
;2069:			//if it's time to give orders
;2070:			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 5) {
;2071:				BotHarvesterOrders(bs);
;2072:				//give orders again after 30 seconds
;2073:				bs->teamgiveorders_time = FloatTime() + 30;
;2074:			}
;2075:			break;
;2076:		}
;2077:#endif
;2078:	}
;2079:}
LABELV $446
endproc BotTeamAI 72 12
bss
export ctftaskpreferences
align 4
LABELV ctftaskpreferences
skip 2560
import BotVoiceChat_Defend
import BotVoiceChatCommand
import BotDumpNodeSwitches
import BotResetNodeSwitches
import AINode_Battle_NBG
import AINode_Battle_Retreat
import AINode_Battle_Chase
import AINode_Battle_Fight
import AINode_Seek_LTG
import AINode_Seek_NBG
import AINode_Seek_ActivateEntity
import AINode_Stand
import AINode_Respawn
import AINode_Observer
import AINode_Intermission
import AIEnter_Battle_NBG
import AIEnter_Battle_Retreat
import AIEnter_Battle_Chase
import AIEnter_Battle_Fight
import AIEnter_Seek_Camp
import AIEnter_Seek_LTG
import AIEnter_Seek_NBG
import AIEnter_Seek_ActivateEntity
import AIEnter_Stand
import AIEnter_Respawn
import AIEnter_Observer
import AIEnter_Intermission
import BotPrintTeamGoal
import BotMatchMessage
import notleader
import BotChatTest
import BotValidChatPosition
import BotChatTime
import BotChat_Random
import BotChat_EnemySuicide
import BotChat_Kill
import BotChat_Death
import BotChat_HitNoKill
import BotChat_HitNoDeath
import BotChat_HitTalking
import BotChat_EndLevel
import BotChat_StartLevel
import BotChat_ExitGame
import BotChat_EnterGame
import ctf_blueflag
import ctf_redflag
import bot_challenge
import bot_testrchat
import bot_nochat
import bot_fastchat
import bot_rocketjump
import bot_grapple
import maxclients
import gametype
import BotMapScripts
import BotPointAreaNum
import ClientOnSameTeamFromName
import ClientFromName
import stristr
import BotFindWayPoint
import BotCreateWayPoint
import BotAlternateRoute
import BotGetAlternateRouteGoal
import BotCTFRetreatGoals
import BotCTFSeekGoals
import BotRememberLastOrderedTask
import BotCTFCarryingFlag
import BotOppositeTeam
import BotTeam
import BotClearActivateGoalStack
import BotPopFromActivateGoalStack
import BotEnableActivateGoalAreas
import BotAIPredictObstacles
import BotAIBlocked
import BotCheckAttack
import BotAimAtEnemy
import BotEntityVisible
import BotRoamGoal
import BotFindEnemy
import InFieldOfVision
import BotVisibleTeamMatesAndEnemies
import BotEnemyFlagCarrierVisible
import BotTeamFlagCarrierVisible
import BotTeamFlagCarrier
import TeamPlayIsOn
import BotSameTeam
import BotAttackMove
import BotWantsToCamp
import BotHasPersistantPowerupAndWeapon
import BotCanAndWantsToRocketJump
import BotWantsToHelp
import BotWantsToChase
import BotWantsToRetreat
import BotFeelingBad
import BotAggression
import BotTeamGoals
import BotSetLastOrderedTask
import BotSynonymContext
import ClientSkin
import EasyClientName
import ClientName
import BotSetTeamStatus
import BotSetUserInfo
import EntityIsShooting
import EntityIsInvisible
import EntityIsDead
import BotInLavaOrSlime
import BotIntermission
import BotIsObserver
import BotIsDead
import BotBattleUseItems
import BotUpdateBattleInventory
import BotUpdateInventory
import BotSetupForMovement
import BotChooseWeapon
import BotFreeWaypoints
import BotDeathmatchAI
import BotShutdownDeathmatchAI
import BotSetupDeathmatchAI
import BotTeamLeader
import BotAI_GetSnapshotEntity
import BotAI_GetEntityState
import BotAI_GetClientState
import BotAI_Trace
import BotAI_BotInitialChat
import BotAI_Print
import floattime
import BotEntityInfo
import NumBots
import BotResetState
import BotResetWeaponState
import BotFreeWeaponState
import BotAllocWeaponState
import BotLoadWeaponWeights
import BotGetWeaponInfo
import BotChooseBestFightWeapon
import BotShutdownWeaponAI
import BotSetupWeaponAI
import BotShutdownMoveAI
import BotSetupMoveAI
import BotSetBrushModelTypes
import BotAddAvoidSpot
import BotInitMoveState
import BotFreeMoveState
import BotAllocMoveState
import BotPredictVisiblePosition
import BotMovementViewTarget
import BotReachabilityArea
import BotResetLastAvoidReach
import BotResetAvoidReach
import BotMoveInDirection
import BotMoveToGoal
import BotResetMoveState
import BotShutdownGoalAI
import BotSetupGoalAI
import BotFreeGoalState
import BotAllocGoalState
import BotFreeItemWeights
import BotLoadItemWeights
import BotMutateGoalFuzzyLogic
import BotSaveGoalFuzzyLogic
import BotInterbreedGoalFuzzyLogic
import BotUpdateEntityItems
import BotInitLevelItems
import BotSetAvoidGoalTime
import BotAvoidGoalTime
import BotGetMapLocationGoal
import BotGetNextCampSpotGoal
import BotGetLevelItemGoal
import BotItemGoalInVisButNotVisible
import BotTouchingGoal
import BotChooseNBGItem
import BotChooseLTGItem
import BotGetSecondGoal
import BotGetTopGoal
import BotGoalName
import BotDumpGoalStack
import BotDumpAvoidGoals
import BotEmptyGoalStack
import BotPopGoal
import BotPushGoal
import BotRemoveFromAvoidGoals
import BotResetAvoidGoals
import BotResetGoalState
import GeneticParentsAndChildSelection
import BotSetChatName
import BotSetChatGender
import BotLoadChatFile
import BotReplaceSynonyms
import UnifyWhiteSpaces
import BotMatchVariable
import BotFindMatch
import StringContains
import BotGetChatMessage
import BotEnterChat
import BotChatLength
import BotReplyChat
import BotNumInitialChats
import BotInitialChat
import BotNumConsoleMessages
import BotNextConsoleMessage
import BotRemoveConsoleMessage
import BotQueueConsoleMessage
import BotFreeChatState
import BotAllocChatState
import BotShutdownChatAI
import BotSetupChatAI
import BotShutdownCharacters
import Characteristic_String
import Characteristic_BInteger
import Characteristic_Integer
import Characteristic_BFloat
import Characteristic_Float
import BotFreeCharacter
import BotLoadCharacter
import EA_Shutdown
import EA_Setup
import EA_ResetInput
import EA_GetInput
import EA_EndRegular
import EA_View
import EA_Move
import EA_DelayedJump
import EA_Jump
import EA_SelectWeapon
import EA_Use
import EA_Gesture
import EA_Talk
import EA_Respawn
import EA_Attack
import EA_MoveRight
import EA_MoveLeft
import EA_MoveBack
import EA_MoveForward
import EA_MoveDown
import EA_MoveUp
import EA_Walk
import EA_Crouch
import EA_Action
import EA_Command
import EA_SayTeam
import EA_Say
import GetBotLibAPI
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
import g_rankings
import pmove_msec
import pmove_fixed
import g_smoothClients
import g_blueteam
import g_redteam
import g_cubeTimeout
import g_obeliskRespawnDelay
import g_obeliskRegenAmount
import g_obeliskRegenPeriod
import g_obeliskHealth
import g_filterBan
import g_banIPs
import g_teamForceBalance
import g_teamAutoJoin
import g_allowVote
import g_blood
import g_doWarmup
import g_warmup
import g_motd
import g_synchronousClients
import g_weaponTeamRespawn
import g_weaponRespawn
import g_debugDamage
import g_debugAlloc
import g_debugMove
import g_inactivity
import g_forcerespawn
import g_quadfactor
import g_knockback
import g_speed
import g_gravity
import g_needpass
import g_password
import g_friendlyFire
import g_capturelimit
import g_timelimit
import g_fraglimit
import g_dmflags
import g_restarted
import g_maxGameClients
import g_maxclients
import g_cheats
import g_dedicated
import g_gametype
import g_entities
import level
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
import G_Error
import G_Printf
import SendScoreboardMessageToAllClients
import G_LogPrintf
import G_RunThink
import CheckTeamLeader
import SetLeader
import FindIntermissionPoint
import DeathmatchScoreboardMessage
import G_SetStats
import MoveClientToIntermission
import FireWeapon
import G_FilterPacket
import G_ProcessIPBans
import ConsoleCommand
import SpotWouldTelefrag
import CalculateRanks
import AddScore
import player_die
import ClientSpawn
import InitBodyQue
import InitClientResp
import InitClientPersistant
import BeginIntermission
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
import Com_Printf
import Com_Error
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
LABELV $463
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $462
byte 1 105
byte 1 97
byte 1 109
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $459
byte 1 119
byte 1 104
byte 1 111
byte 1 105
byte 1 115
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $214
byte 1 100
byte 1 101
byte 1 102
byte 1 101
byte 1 110
byte 1 100
byte 1 0
align 1
LABELV $209
byte 1 99
byte 1 109
byte 1 100
byte 1 95
byte 1 100
byte 1 101
byte 1 102
byte 1 101
byte 1 110
byte 1 100
byte 1 98
byte 1 97
byte 1 115
byte 1 101
byte 1 0
align 1
LABELV $170
byte 1 114
byte 1 101
byte 1 116
byte 1 117
byte 1 114
byte 1 110
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 0
align 1
LABELV $164
byte 1 102
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 99
byte 1 97
byte 1 114
byte 1 114
byte 1 105
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $163
byte 1 99
byte 1 109
byte 1 100
byte 1 95
byte 1 97
byte 1 99
byte 1 99
byte 1 111
byte 1 109
byte 1 112
byte 1 97
byte 1 110
byte 1 121
byte 1 0
align 1
LABELV $162
byte 1 102
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $161
byte 1 99
byte 1 109
byte 1 100
byte 1 95
byte 1 97
byte 1 99
byte 1 99
byte 1 111
byte 1 109
byte 1 112
byte 1 97
byte 1 110
byte 1 121
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $152
byte 1 103
byte 1 101
byte 1 116
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 0
align 1
LABELV $151
byte 1 99
byte 1 109
byte 1 100
byte 1 95
byte 1 103
byte 1 101
byte 1 116
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 0
align 1
LABELV $137
byte 1 25
byte 1 40
byte 1 37
byte 1 115
byte 1 25
byte 1 41
byte 1 25
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $73
byte 1 116
byte 1 0
align 1
LABELV $69
byte 1 110
byte 1 0
align 1
LABELV $62
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
