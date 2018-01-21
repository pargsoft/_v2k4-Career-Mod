--#############################################################################
--Entry point of CNotes logic, flow of data
function trigger_test()
	local test = 5
	print ("############# FIFA LIVE SERVICE: " .. test)
	
	local a = 10
	local b = 7
	
	local c = GetSum(a, b)
	print ("############# FIFA LIVE SERVICE: SUM: " .. c)
	 
	Callprint()

end


--#############################################################################
function Load_Fixture_Data()
	userTeamId = GetUserTeamId()
	opponentTeamId = GetOpponentTeamId()
	print("opteamid " .. opponentTeamId );
	userTeamData = {GetTeamData(userTeamId)}
	opponentTeamData = {GetTeamData(opponentTeamId)}
end
--#############################################################################
function Unload_Fixture_Data()

	userTeamData = nil
	opponentTeamData = nil
	
end
--#############################################################################

LEAGUE_ID = 1
EXPECTATION = 2
GROUPING = 3
ACTUAL_VS_EXPECTATIONS = 4
MOST_PROBABLE_FINISH = 5
HIGHEST_POSSIBLE_FINISH = 6
LAST_GAME_RESULT = 7
CURRENT_LEAGUE_POSITION = 8
HAS_CLINCHED_LEAGUE_GROUPING = 9
TEAM_FORM = 10
TEAM_SHORT_FORM = 11
TEAM_LONG_FORM = 12
IS_LAST_SEASON_CHAMPION = 13
IS_WITHIN_TRANSFER_WINDOW = 14
LAST_SEASON_RESULT = 15
LEAGUE_NUM_OF_TEAMS = 16
TEAM_SEASON_RECORD = 17

--1#############################################################################
function GetTeamLeagueId(teamId)
	if (teamId == userTeamId) then
		return userTeamData[LEAGUE_ID]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[LEAGUE_ID]
		end
	end
end

--2#############################################################################
function GetTeamExpectation(teamId)
	if (teamId == userTeamId) then
		return userTeamData[EXPECTATION]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[EXPECTATION]
		end
	end
end
--3#############################################################################
function GetTeamGrouping(teamId)
	if (teamId == userTeamId) then
		return userTeamData[GROUPING]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[GROUPING]
		end
	end
end
--4#############################################################################
function GetTeamActualVsExpectation(teamId)
	if (teamId == userTeamId) then
		return userTeamData[ACTUAL_VS_EXPECTATIONS]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[ACTUAL_VS_EXPECTATIONS]
		end
	end
end
--5#############################################################################
function GetTeamMostProbableFinish(teamId)
	if (teamId == userTeamId) then
		return userTeamData[MOST_PROBABLE_FINISH]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[MOST_PROBABLE_FINISH]
		end
	end
end

--6#############################################################################
function GetTeamHighestPossibleFinish(teamId)
	if (teamId == userTeamId) then
		return userTeamData[HIGHEST_POSSIBLE_FINISH]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[HIGHEST_POSSIBLE_FINISH]
		end
	end
end
--7#############################################################################
function GetTeamLastGameResult(teamId)
	if (teamId == userTeamId) then
		return userTeamData[LAST_GAME_RESULT]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[LAST_GAME_RESULT]
		end
	end
end
--8#############################################################################
function GetLeagueTeamPosition(teamId)
	if (teamId == userTeamId) then
		return userTeamData[CURRENT_LEAGUE_POSITION]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[CURRENT_LEAGUE_POSITION]
		end
	end
end
--9#############################################################################
function IsClinchedGrouping(teamId)
	if (teamId == userTeamId) then
		return userTeamData[HAS_CLINCHED_LEAGUE_GROUPING]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[HAS_CLINCHED_LEAGUE_GROUPING]
		end
	end
end
--10#############################################################################
function GetTeamForm(teamId)
	if (teamId == userTeamId) then
		return userTeamData[TEAM_FORM]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[TEAM_FORM]
		end
	end
end
--11#############################################################################
function GetTeamShortForm(teamId)
	if (teamId == userTeamId) then
		return userTeamData[TEAM_SHORT_FORM]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[TEAM_SHORT_FORM]
		end
	end
end
--12#############################################################################
function GetTeamLongForm(teamId)
	if (teamId == userTeamId) then
		return userTeamData[TEAM_LONG_FORM]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[TEAM_LONG_FORM]
		end
	end
end
--13#############################################################################
function GetTeamLastSeasonChampion(teamId)
	if (teamId == userTeamId) then
		return userTeamData[IS_LAST_SEASON_CHAMPION]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[IS_LAST_SEASON_CHAMPION]
		end
	end
end
--14#############################################################################
function IsInTransferWindow(teamId)
	if (teamId == userTeamId) then
		return userTeamData[IS_WITHIN_TRANSFER_WINDOW]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[IS_WITHIN_TRANSFER_WINDOW]
		end
	end
end
--15#############################################################################
function GetTeamLastSeasonResult(teamId)
	if (teamId == userTeamId) then
		return userTeamData[LAST_SEASON_RESULT]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[LAST_SEASON_RESULT]
		end
	end
end
--16#############################################################################
function GetLeagueNumOfTeams(teamId)
	if (teamId == userTeamId) then
		return userTeamData[LEAGUE_NUM_OF_TEAMS]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[LEAGUE_NUM_OF_TEAMS]
		end
	end
end
--17#############################################################################
function GetTeamSeasonRecord(teamId)
	if (teamId == userTeamId) then
		return userTeamData[TEAM_SEASON_RECORD]
	else 
		if (teamId == opponentTeamId) then
			return opponentTeamData[TEAM_SEASON_RECORD]
		end
	end
end

--#############################################################################
--#############################################################################
function FL_TriggerExibitionFixture()
-- get teamids and sides 
-- get stadium id and date
-- no fixture id
-- TriggerLoadExibitionGame

	Load_Fixture_Data()
	local timeSliceStr = ""
	local teamId = userTeamId
	local leagueId = GetTeamLeagueId(teamId)
	
	-- check if teams are in the same league 
	if( FL_AreTeamsSameLeague() ) then
		timeSliceStr = GetFixtureStageOfCompetition()
		FL_ProcessTimeslice(timeSliceStr)
		print("Exhibition type is: Teams Same League. TimeSlice is " .. timeSliceStr );
	else
		if( FL_AreTeamsSameCountry() ) then
			-- Special Case 1
			timeSliceStr = "CAREER_TIMELINE_SLICE_ANY"
			print("Exhibition type is: Special Case 1. TimeSlice is " .. timeSliceStr );
		else
			if( FL_AreLeaguesComparable() ) then
				-- Special Case 2
				timeSliceStr = "CAREER_TIMELINE_SLICE_ANY"
				print("Exhibition type is: Special Case 2. TimeSlice is " .. timeSliceStr );
			else
				-- Special Case 3
				timeSliceStr = "CAREER_TIMELINE_SLICE_INTERNATIONAL"
				print("Exhibition type is: Special Case 3. TimeSlice is " .. timeSliceStr );
			end
		end
	end
	
	FL_ProcessFixtureInformation()
	FL_ProcessPlayerInformation()
	FL_SendCommentatorNotes()
	Unload_Fixture_Data()
end

function FL_AreLeaguesComparable()
	local teamId = userTeamId
	local opponentTeamId = opponentTeamId
	
	local league1 = GetTeamLeagueId( teamId )
	local league2 = GetTeamLeagueId( opponentTeamId )
	
	local leagueGroup1, leagueCountry1 = GetLeagueInfo( league1 )
	local leagueGroup2, leagueCountry2 = GetLeagueInfo( league2 )
	
	if( leagueGroup1 == leagueGroup2 ) then
		return true
	end
	
	return false
end

function FL_AreTeamsSameCountry()
	local teamId = userTeamId
	local opponentTeamId = opponentTeamId
	
	local league1 = GetTeamLeagueId( teamId )
	local league2 = GetTeamLeagueId( opponentTeamId )
	
	local leagueGroup1, leagueCountry1 = GetLeagueInfo( league1 )
	local leagueGroup2, leagueCountry2 = GetLeagueInfo( league2 )
	
	if( leagueCountry1 == leagueCountry2 ) then
		return true
	end
	
	return false
end

function FL_AreTeamsSameLeague()
	local teamId = userTeamId
	local opponentTeamId = opponentTeamId
	
	local league1 = GetTeamLeagueId( teamId )
	local league2 = GetTeamLeagueId( opponentTeamId )
	
	if( league1 == league2 ) then
		return true
	else
		return false
	end
end

--#############################################################################
function FL_TriggerLiveFixture()
-- fixture id
-- TriggerLoadFixture(fixtureId)

	Load_Fixture_Data()
	FL_ProcessTimeslice(timeSliceStr)
	FL_ProcessFixtureInformation()
	FL_ProcessPlayerInformation()
	FL_SendCommentatorNotes()
	Unload_Fixture_Data()
end

--#############################################################################
function FL_TriggerGOTWFixture()
-- fixture id
-- TriggerLoadFixture(fixtureId)

	Load_Fixture_Data()
	FL_ProcessTimeslice(timeSliceStr)
	FL_ProcessFixtureInformation()
	FL_ProcessPlayerInformation()
	FL_SendCommentatorNotes()
	Unload_Fixture_Data()
end

--#############################################################################
function FL_SetCommonDataBlock()
-- Get all the data provided by the user and populate the commentator notes data block
end

--#############################################################################
function FL_ProcessTimeslice(timesliceStr)
-- Does checks based on the timeslice

-- Timeslices not treated:
-- CAREER_TIMELINE_SLICE_PRESEASON_GAME1
-- CAREER_TIMELINE_SLICE_PRESEASON_GAME2

	if(timesliceStr == "CAREER_TIMELINE_SLICE_PRESEASON_GAME3PLUS") then
		FL_PreSeasonGame3AndOnChecks()	-- talking about upcoming fixture being a super cup, may not be feasable in Fifa Live!
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_GAME1") then
		FL_Game1Checks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_GAME2") then
		FL_Game2Checks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_GAME3") then
		FL_Game3Checks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_SEASON_EARLY") then
		FL_SeasonEarlyChecks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_SEASON_Q2") then
		FL_SeasonQ2Checks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_SEASON_Q3") then
		FL_SeasonQ3Checks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_SEASON_LATE") then
		FL_SeasonLateChecks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_GAME_END4") then
		FL_Game4thLastChecks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_GAME_END3") then
		FL_Game3rdLastChecks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_GAME_END_PENUL") then
		FL_GamePenulGameChecks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_GAME_FINAL") then
		FL_GameFinalGameChecks()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_FINAL") then
		FL_DomesticCupChecks()
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_SEMIFINAL") then
		FL_DomesticCupChecks()
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_QUARTERFINAL") then
		FL_DomesticCupChecks()
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_ROUND") then
		FL_DomesticCupChecks()
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_QUALIFYING") then
		FL_DomesticCupChecks()
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_GROUP") then
		FL_DomesticCupChecks()
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_PROMOTION_PLAYOFF") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_RELEGATION_PLAYOFF") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_MLS_FINAL") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_MLS_SEMIFINAL") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_MLS_QUARTERFINAL") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_MLS_PLAYOFF") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_LEAGUE_FINAL") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_LEAGUE_SEMIFINAL") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_LEAGUE_QUARTERFINAL") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_LEAGUE_PLAYOFF") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_CONTINENTAL_CUP_FINAL") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_CONTINENTAL_CUP_ROUND") then
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_SUPERCUP") then
		FL_SuperCupChecks()
		FL_SendMatchImportance()
	elseif(timesliceStr == "CAREER_TIMELINE_SLICE_INTERNATIONAL") then
		FL_SendMatchImportance()
	else
		print("ERROR!!! Fifa Live: ProcessCommentatorNotes timeslice UNHANDLED")
	end
end

--#############################################################################
function FL_isPreseason(timeSliceStr)
	if( timeSliceStr == "CAREER_TIMELINE_SLICE_PRESEASON_GAME1" or
		timeSliceStr == "CAREER_TIMELINE_SLICE_PRESEASON_GAME2" or
		timeSliceStr == "CAREER_TIMELINE_SLICE_PRESEASON_GAME3PLUS" ) then
		return true
	end
	
	return false
end

--#############################################################################
function FL_isFirstHalfOfSeason(timeSliceStr)
	if(not FL_isPreseason(timeSliceStr)) then
		if( timeSliceStr == "CAREER_TIMELINE_SLICE_GAME1" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_GAME2" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_GAME3" or 
			timeSliceStr == "CAREER_TIMELINE_SLICE_SEASON_EARLY" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_SEASON_Q2" ) then
			return true
		end
	end
	return false
end


--#############################################################################
function FL_isCupGame(timeSliceStr)
	if(not FL_isPreseason(timeSliceStr)) then
		if( timeSliceStr == "CAREER_TIMELINE_SLICE_SUPERCUP" or 
			timeSliceStr == "CAREER_TIMELINE_SLICE_CONTINENTAL_CUP_ROUND" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_CONTINENTAL_CUP_FINAL" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_FINAL" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_SEMIFINAL" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_QUARTERFINAL" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_ROUND" or
			timeSliceStr == "CAREER_TIMELINE_SLICE_DOMESTIC_CUP_QUALIFYING" ) then
			return true
		end
	end
	return false
end


--#############################################################################
function FL_CheckLastSeasonResults(teamId, side)
	local lastSeasonResult = GetTeamLastSeasonResult(teamId)
	
	if( GetTeamLastSeasonChampion(teamId) ) then
		AddMatchDayAudioEvent("TEAM_LAST_SEASON_CHAMPION", "TRIGGER_PREMATCH_STITCH", side )
	end
	
	return lastSeasonResult
end

--#############################################################################
function FL_Game1Checks()
	local teamId = userTeamId
	local opponentId = opponentTeamId
	
	local userSide = GetTeamSide(teamId)
	local opponentSide = 0
	
	if( opponentSide == userSide ) then
		opponentSide = 1
	end
		
	-- get last year's result & champion for user team
	local userLastSeasonResult = FL_CheckLastSeasonResults(teamId, userSide)
	
	-- get last year's result & champion for opponent team
	local opponentLastSeasonResult = FL_CheckLastSeasonResults(opponentId, opponentSide)
	
	-- get last season result clash
	if( (userLastSeasonResult >= -1 and userLastSeasonResult <= 0) and (userLastSeasonResult == opponentLastSeasonResult) ) then
		local clashFlag = 0 --PROMOTED
		if(userLastSeasonResult ~= 0) then
			clashFlag = 1 -- RELEGATED_FLAG FOR AUDIO ONLY
		end	
		AddMatchDayAudioEvent("TEAM_LAST_SEASON_RESULTS_CLASH", "TRIGGER_PREMATCH", clashFlag )
	end
	
	-- get expectation clash
	local userExpectation = GetTeamExpectation(teamId)
	local opponentExpectation = GetTeamExpectation(opponentId)
	
	if( userExpectation == opponentExpectation ) then
		AddMatchDayAudioEvent("TEAM_EXPECTATION_CLASH", "TRIGGER_PREMATCH", teamId)
	end
	
	-- get transfer window
	if( IsInTransferWindow() ) then
		AddMatchDayAudioEvent("CAN_STILL_ADD_TO_SQUAD", "TRIGGER_PREMATCH")
	end
end

--#############################################################################
function FL_Game2Checks()
	FL_Game1Checks()
end

--#############################################################################
function FL_CheckLastLeagueGameResult(teamId)
	local result = GetTeamLastGameResult(teamId)
	
	print("CheckLastLeagueGameResult: teamid: " .. teamId )
	print("LastResult: " .. result )
	
	if( result >= 0 ) then
		AddMatchDayAudioEvent("LAST_GAME_RESULTS", "TRIGGER_PREMATCH", result)
	end
end

--#############################################################################
function FL_Game3Checks()
	local teamId = userTeamId
	
	-- check last league game results
	FL_CheckLastLeagueGameResult(teamId)
	
	local numTeams = GetLeagueNumOfTeams(teamId)
	local position = GetLeagueTeamPosition(teamId)
	
	-- check if leader
	if( position == 1 ) then
		AddMatchDayAudioEvent("SEASON_LEADER", "TRIGGER_PREMATCH")
	end
	
	-- check if bottom place
	if( position == numTeams ) then
		AddMatchDayAudioEvent("SEASON_BOTTOM_PLACE", "TRIGGER_PREMATCH")
	end
	
	-- get transfer window
	if( IsInTransferWindow() ) then
		AddMatchDayAudioEvent("CAN_STILL_ADD_TO_SQUAD", "TRIGGER_PREMATCH")
	end
end

--#############################################################################
function FL_CheckSeasonResults(teamId, side)
	local side = 0

	local FL_TEAM_SEASON_RECORD_INVALID 				=-1
	local FL_TEAM_SEASON_RECORD_UNBEATEN_ALL 			= 0
	local FL_TEAM_SEASON_RECORD_UNBEATEN_LEAGUE			= 1
	local FL_TEAM_SEASON_RECORD_UNBEATEN_LEAGUE_HOME	= 2
	local FL_TEAM_SEASON_RECORD_UNBEATEN_LEAGUE_AWAY	= 3
	local FL_TEAM_SEASON_RECORD_YET_TO_WIN				= 4
	
	local seasonRecord = GetTeamSeasonRecord(teamId)
		
	if( seasonRecord == FL_TEAM_SEASON_RECORD_UNBEATEN_LEAGUE ) then
		AddMatchDayAudioEvent("UNBEATEN_LEAGUE", "TRIGGER_PREMATCH", side)
	end
	
	if( seasonRecord == FL_TEAM_SEASON_RECORD_UNBEATEN_LEAGUE_HOME ) then
		AddMatchDayAudioEvent("UNBEATEN_HOME_LEAGUE", "TRIGGER_PREMATCH", side)
	end
	
	if( seasonRecord == FL_TEAM_SEASON_RECORD_UNBEATEN_LEAGUE_AWAY ) then
		AddMatchDayAudioEvent("UNBEATEN_AWAY_LEAGUE", "TRIGGER_PREMATCH", side)
	end
	
	if( seasonRecord == FL_TEAM_SEASON_RECORD_YET_TO_WIN ) then
		AddMatchDayAudioEvent("YET_TO_WIN", "TRIGGER_PREMATCH", side)
	end 
end

--#############################################################################
function FL_isInRelegationZone(teamId)
	-- get grouping
	local LEAGUEOBJECTIVE_RELEGATION_ZONE = 17
	local grouping = GetTeamGrouping(teamId)
	
	if( grouping == LEAGUEOBJECTIVE_RELEGATION_ZONE ) then
		return true
	end
	
	return false
end

--#############################################################################
function FL_CheckLeaguePositions(teamId, opponentId)
	local numTeams = GetLeagueNumOfTeams(teamId)
	local teamPosition = GetLeagueTeamPosition(teamId)
	local opponentPosition = GetLeagueTeamPosition(opponentId)
	
	--print("CheckLeaguePositions: "..numTeams.." teamPos "..teamPosition.." oppPosition "..opponentPosition)
	-- top
	if( teamPosition == 1 ) then
		AddMatchDayAudioEvent("SEASON_LEADER", "TRIGGER_PREMATCH")
	end
	
	-- bottom
	if( teamPosition == numTeams ) then
		AddMatchDayAudioEvent("SEASON_BOTTOM_PLACE", "TRIGGER_PREMATCH")
	end
	
	---------------------------------------------------------------------------
	
	-- 1 v Last
	if( (teamPosition == 1 and opponentPosition == numTeams) or 
		(teamPosition == numTeams and opponentPosition == 1) ) then
		AddMatchDayAudioEvent("FIRST_VS_LAST", "TRIGGER_PREMATCH")
	end	
	
	-- Last v 2nd Last
	local bottomTeamsPlayed = false
	if( (teamPosition == (numTeams-1) and opponentPosition == numTeams) or 
		(teamPosition == numTeams and opponentPosition == (numTeams-1)) ) then
		AddMatchDayAudioEvent("LAST_VS_SECONDLAST", "TRIGGER_PREMATCH")
		bottomTeamsPlayed = true
	end
	
	---------------------------------------------------------------------------
	
	-- is top teams game
	local topTeamsPlayed = false
	local delta = math.abs(opponentPosition - teamPosition)
	
	if( teamPosition == 1 or opponentPosition == 1 ) then
		if( delta == 1 ) then
			AddMatchDayAudioEvent("FIRST_VS_SECOND","TRIGGER_PREMATCH")
		end
		
		if( delta == 2 ) then
			AddMatchDayAudioEvent("FIRST_VS_THIRD", "TRIGGER_PREMATCH")
		end
		
		if( delta == 3 ) then
			AddMatchDayAudioEvent("FIRST_VS_FOURTH", "TRIGGER_PREMATCH")
		end

		topTeamsPlayed = true		
	elseif( (teamPosition == 2 and opponentPosition == 3) or 
			(opponentPosition == 2 and teamPosition == 3) ) then
			AddMatchDayAudioEvent("SECOND_VS_THIRD", "TRIGGER_PREMATCH")
			topTeamsPlayed = true
	end
	
	---------------------------------------------------------------------------
	
	-- top team clash
	if( not(topTeamsPlayed) ) then
		local HIGH_TEAM_PERCENT_TOP 	= 15
		local HIGH_TEAM_PERCENT_BOTTOM 	= 40
		
		local teamPositionPercentage = math.floor (((teamPosition/numTeams)*100) + 0.5)
		local opponentPositionPercentage = math.floor (((opponentPosition/numTeams)*100) + 0.5)
		
		--print("TopTeamClash: "..teamPositionPercentage.." "..opponentPositionPercentage)
		
		local isTeamHigh = (teamPositionPercentage <= HIGH_TEAM_PERCENT_TOP and teamPositionPercentage >= HIGH_TEAM_PERCENT_BOTTOM)
		local isOpponentHigh = (opponentPositionPercentage <= HIGH_TEAM_PERCENT_TOP and opponentPositionPercentage >= HIGH_TEAM_PERCENT_BOTTOM)
		
			
		if(isTeamHigh and isOpponentHigh) then
			AddMatchDayAudioEvent("HIGH_TEAM_CLASH", "TRIGGER_PREMATCH")
		end
	end
	
	-- bottom team clash
	if( not(bottomTeamsPlayed)) then
		local LOWLY_TEAM_PERCENT = 67
		
		local isTeamLowly = (math.floor (((teamPosition/numTeams)*100) + 0.5) >= LOWLY_TEAM_PERCENT)
		local isOpponentLowly = (math.floor (((opponentPosition/numTeams)*100) + 0.5) >= LOWLY_TEAM_PERCENT)
		
		if(isTeamLowly and isOpponentLowly) then
			AddMatchDayAudioEvent("LOWLY_TEAM_CLASH", "TRIGGER_PREMATCH")
		end
	end
	
	-- relegation zone
	if( FL_isInRelegationZone(teamId) and FL_isInRelegationZone(opponentId) ) then
		AddMatchDayAudioEvent("RELEGATION_ZONE_CLASH", "TRIGGER_PREMATCH")
	end
end

--#############################################################################
function FL_CheckActualVsExpectation()
	local actualVsExpectation = GetTeamActualVsExpectation(userTeamId)
	
	local EXPECTATION_INVALID 		=-2
	local EXPECTATION_EXCEEDING 	= 0
	local EXPECTATION_MEETING 		= 1
	local EXPECTATION_LITTLE_BELOW 	= 2
	local EXPECTATION_BELOW 		= 3
	local EXPECTATION_FAR_BELOW 	= 4
	
	if( actualVsExpectation == EXPECTATION_EXCEEDING ) then
		AddMatchDayAudioEvent("EXCEEDING_EXPECTATIONS_GLORY", "TRIGGER_PREMATCH")
	end
	
	if( actualVsExpectation >= EXPECTATION_BELOW ) then
		AddMatchDayAudioEvent("BELOW_EXPECTATIONS_PRESSURE", "TRIGGER_PREMATCH", actualVsExpectation, userTeamId )
	end
end

--#############################################################################
function FL_SeasonEarlyChecks()
	local teamId = userTeamId
	local opponentId = opponentTeamId
	local userTeamSide = GetTeamSide(teamId)
	
	-- check last league game results
	FL_CheckLastLeagueGameResult(teamId)
	
	-- check positions of both competitors
	FL_CheckLeaguePositions(teamId, opponentId)
	
	-- check season results until now
	FL_CheckSeasonResults(teamId, userTeamSide)
end

--#############################################################################
function FL_SeasonQ2Checks()
	local teamId = userTeamId
	local opponentId = opponentTeamId
	local userTeamSide = GetTeamSide(teamId)
	
	-- check last league game results
	FL_CheckLastLeagueGameResult(teamId)
	
	-- if( not(IsTeamIdPlayoffLeague(teamId) )) then
		-- FL_CheckActualVsExpectation()
	-- end
	
	-- check positions of both competitors
	FL_CheckLeaguePositions(teamId, opponentId)
	
	-- check season results until now
	FL_CheckSeasonResults(teamId, userTeamSide)
end

--#############################################################################
function FL_SeasonQ3Checks()
	FL_SeasonQ2Checks()
end

--#############################################################################
function FL_SeasonLateChecks()
	local teamId = userTeamId
	local opponentId = opponentTeamId
	local userTeamSide = GetTeamSide(teamId)
	
	-- check last league game results
	FL_CheckLastLeagueGameResult(teamId)
	
	-- check positions of both competitors
	FL_CheckLeaguePositions(teamId, opponentId)
	
	local highProbable = GetTeamMostProbableFinish(teamId);			
	local highPossible = GetTeamHighestPossibleFinish(teamId);	
	
	if( highProbable >= 0 ) then
		AddMatchDayAudioEvent( "TEAM_HIGHEST_PROBABLE_FINISH", "TRIGGER_PREMATCH", highProbable, userTeamSide )
	end
	
	if( highPossible >= 0 ) then
		AddMatchDayAudioEvent( "TEAM_HIGHEST_POSSIBLE_FINISH", "TRIGGER_PREMATCH", highPossible, userTeamSide )
	end
	
	-- check season results until now
	FL_CheckSeasonResults(teamId, userTeamSide)
end

--#############################################################################
function FL_DomesticCupChecks()
	FL_SuperCupChecks()
end

--#############################################################################
function FL_Game4thLastChecks()
	FL_FinalGamesCheck()
end

--#############################################################################
function FL_Game3rdLastChecks()
	FL_FinalGamesCheck()
end

--#############################################################################
function FL_GamePenulGameChecks()
	FL_FinalGamesCheck()
end

--#############################################################################
function FL_GameFinalGameChecks()
	FL_FinalGamesCheck()
end

--#############################################################################
function FL_FinalGamesCheck()
	local teamId = userTeamId
	local userTeamSide = GetTeamSide(teamId)
	local opponentId = opponentTeamId
	
	print("FinalGame: UserTeamId: " .. teamId )
	print("FinalGame: UserSideId: " .. userTeamSide )
	
	-- check last league game results
	FL_CheckLastLeagueGameResult(teamId)
	
	local highProbable = GetTeamMostProbableFinish(teamId);			
	local highPossible = GetTeamHighestPossibleFinish(teamId);

	print("FinalGame: highProbable: " .. highProbable )
	print("FinalGame: highPossible: " .. highPossible )
	
	if( highProbable >= 0 ) then
		AddMatchDayAudioEvent( "TEAM_HIGHEST_PROBABLE_FINISH", "TRIGGER_PREMATCH", highProbable, userTeamSide )
		--print("FL_FinalGamesCheck: TEAM_HIGHEST_PROBABLE_FINISH: " .. teamId )
	end
	
	if( highPossible >= 0 ) then
		AddMatchDayAudioEvent( "TEAM_HIGHEST_POSSIBLE_FINISH", "TRIGGER_PREMATCH", highPossible, userTeamSide )
		--print("FL_FinalGamesCheck: TEAM_HIGHEST_POSSIBLE_FINISH: " .. teamId )
	end
	
	FL_CheckLeaguePositions(teamId, opponentId)
	
	
	-- check clinched team grouping
	local grouping = GetTeamGrouping(teamId)
	print("FinalGame: grouping: " .. grouping )
	
	if( IsClinchedGrouping(teamId) and grouping >= 0 ) then
		print("FinalGame: team has clinched team grouping")
		AddMatchDayAudioEvent( "TEAM_CLINCHED_GROUPING", "TRIGGER_PREMATCH", grouping, userTeamSide )
	end
end

--#############################################################################
function FL_SuperCupChecks()
	local teamId = userTeamId
	local opponentId = opponentTeamId
	local userTeamSide = GetTeamSide(teamId)
	
	local teamSkill = GetTeamSkillLevelRelativeToComp(teamId)
	local opponentTeamSkill = GetTeamSkillLevelRelativeToComp(opponentId)
	
	if( userTeamSide == 0 ) then
		AddMatchDayAudioEvent("TEAMS_VS_TEAM_SKILL", "TRIGGER_PREMATCH", teamSkill, opponentTeamSkill)
	else
		AddMatchDayAudioEvent("TEAMS_VS_TEAM_SKILL", "TRIGGER_PREMATCH", opponentTeamSkill, teamSkill)
	end
end

--#############################################################################
function FL_SendMatchImportance()
	AddMatchDayAudioEvent("FIXTURE_MATCH_IMPORTANCE", "TRIGGER_PREMATCH", GetFixtureImportance())
end

--#############################################################################
function FL_ProcessFixtureInformation()
-- *** Must be called after CNDBLK populated
	local teamId = userTeamId
	local opponentTeamId = opponentTeamId

	-- check rivalry
	if( IsTeamsRivals() ) then
		AddMatchDayAudioEvent("RIVALS", "TRIGGER_PREMATCH")
		--print("FL_ProcessFixtureInformation: RIVALS")
	end
	
	-- check derby 
	if( IsTeamsDerby() ) then
		AddMatchDayAudioEvent("DERBY_GAME", "TRIGGER_PREMATCH")
		--print("FL_ProcessFixtureInformation: DERBY_GAME")
	end

	local timeSlice 				= GetFixtureStageOfCompetition()
	local teamForm					= GetTeamForm(teamId)
	local teamFormLong 				= GetTeamLongForm(teamId)
	local teamFormShort				= GetTeamShortForm(teamId)
	local teamSide 					= GetTeamSide(teamId)
	local teamGrouping 				= GetTeamGrouping(teamId)
	local teamActualVsExpectations 	= GetTeamActualVsExpectation(teamId)
	local teamObjective				= GetTeamExpectation(teamId)
	
	local teamFormOp					= GetTeamForm(opponentTeamId)
	local teamFormLongOp 				= GetTeamLongForm(opponentTeamId)
	local teamFormShortOp				= GetTeamShortForm(opponentTeamId)
	local teamSideOp 					= GetTeamSide(opponentTeamId)
	local teamGroupingOp 				= GetTeamGrouping(opponentTeamId)
	local teamActualVsExpectationsOp 	= GetTeamActualVsExpectation(opponentTeamId)
	local teamObjectiveOp				= GetTeamExpectation(opponentTeamId)
	
	-- check team expectation
	if( not FL_isCupGame(timeSlice) ) then
		if(timeSlice == "CAREER_TIMELINE_SLICE_GAME1" or timeSlice == "CAREER_TIMELINE_SLICE_GAME2") then
			print("FL_ProcessFixtureInformation: teamId " .. teamId .. " teamobjective: " .. teamObjective .. " team side: " .. teamSide .. " teamGrouping: " .. teamGrouping .. " ActualVsExp: " .. teamActualVsExpectations );
			AddMatchDayAudioEvent("TEAM_EXPECTATION", "TRIGGER_PREMATCH_STITCH", teamObjective, teamId, teamSide)
			print("FL_ProcessFixtureInformation: teamId " .. opponentTeamId .. " teamobjective: " .. teamObjectiveOp .. " team side: " .. teamSideOp .. " teamGrouping: " .. teamGroupingOp .. " ActualVsExp: " .. teamActualVsExpectationsOp );
			AddMatchDayAudioEvent("TEAM_EXPECTATION", "TRIGGER_PREMATCH_STITCH", teamObjectiveOp, opponentTeamId, teamSideOp)
		else
			AddMatchDayAudioEvent("TEAM_EXPECTATION", "TRIGGER_PREMATCH", teamObjective, teamId, teamSide)
		end
	end
	
	-- check team actual grouping
	if( not FL_isPreseason(timeSlice) ) then
		if( not FL_isCupGame(timeSlice) ) then
			AddMatchDayAudioEvent("TEAM_ACTUAL_LEAGUE_GROUPING", "TRIGGER_PREMATCH", teamGrouping, teamSide)
			--print("FL_ProcessFixtureInformation: TEAM_ACTUAL_LEAGUE_GROUPING" .. teamGrouping)
			
			-- check team actual vs expectation
			if( not (timeSlice == "CAREER_TIMELINE_SLICE_GAME1") ) then
				AddMatchDayAudioEvent("TEAM_ACTUAL_VS_EXPECTATION", "TRIGGER_PREMATCH", teamActualVsExpectations, teamId, teamSide )
			end
		end
	end

	-- check team form
	if( teamForm >= 0 ) then
		AddMatchDayAudioEvent("TEAM_FORM","TRIGGER_PREMATCH", teamForm, teamFormShort, teamFormLong)
	end
end

--#############################################################################
function FL_ProcessPlayerInformation()
	-- Go through the user team lineup and do specific checks for every player
	local teamId = userTeamId
	playersData = {}
	
	numPlayers, playersData = GetTeamPlayersData(teamId)

	for playerIndex = 0, numPlayers-1 do
			FL_CheckPlayer( playerIndex )
	end
	
	playerData = nil;
	
end

--#############################################################################
PLAYER_ID_INDEX=1;
PLAYER_FORM_INDEX=2;
PLAYER_INJURY_INDEX=3;
PLAYER_REDS_INDEX=4;
PLAYER_YELLOWS_INDEX=5;
PLAYER_GOALS_INDEX=6
PLAYER_APPEARENCES_INDEX=7;
PLAYER_TOP_SCORER_INDEX=8;
PLAYER_AMONG_TOP_SCORERS_LEAGUE=9;
PLAYER_AMONG_TOP_SCORERS_TEAM=10;
PLAYER_NUM_ATTRIBUTES=10;

--#############################################################################
function GetPlayerId(playerIndex)
	return playersData[playerIndex*PLAYER_NUM_ATTRIBUTES + PLAYER_ID_INDEX]
end
--#############################################################################
function GetPlayerForm(playerIndex)
	return playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES +	PLAYER_FORM_INDEX]
end
--#############################################################################
function GetPlayerInjury(playerIndex)
	return playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_INJURY_INDEX]
end
--#############################################################################
function GetPlayerReds(playerIndex)
	return playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_REDS_INDEX]
end
--#############################################################################
function GetPlayerYellows(playerIndex)
	return playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_YELLOWS_INDEX]
end
--#############################################################################
function GetPlayerGoals(playerIndex)
	return playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_GOALS_INDEX]
end
--#############################################################################
function GetPlayerAppearences(playerIndex)
	return playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_APPEARENCES_INDEX]
end
--#############################################################################
function IsPlayerTopScorer(playerIndex)
	return (playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_TOP_SCORER_INDEX] > 0)
end
--#############################################################################
function IsPlayerAmongTopScorersLeague(playerIndex)
	return (playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_AMONG_TOP_SCORERS_LEAGUE] > 0)
end
--#############################################################################
function IsPlayerAmongTopScorersTeam(playerIndex)
	return (playersData[	playerIndex * PLAYER_NUM_ATTRIBUTES + PLAYER_AMONG_TOP_SCORERS_TEAM] > 0)
end
--#############################################################################

function FL_CheckPlayer(playerIndex)

	local playerId = GetPlayerId(playerIndex)
	
-- check injury
	local injuryId = GetPlayerInjury(playerIndex)
	if( injuryId > 0 ) then
		AddMatchDayAudioEvent("PLAYER_PLAYING_WITH_INJURY", "TRIGGER_PLAYERINFO_PREMATCH", playerId, injuryNameId)
	end
	
-- check birthday

-- check player form
	local playerForm = GetPlayerForm(playerIndex)
	if( playerForm >= 3) then
		--enum FormRating
		--{
		--	FORM_UNDEFINED = -1,
		--	FORM_VERYBAD,
		--	FORM_BAD,
		--	FORM_NEUTRAL,
		--	FORM_GOOD,
		--	FORM_VERYGOOD,
		--	FORM_MAX,
		--}
		AddMatchDayAudioEvent("PLAYER_GREAT_FORM", "TRIGGER_PLAYERINFO_PREMATCH", playerId)
		print("FL_CheckPlayer: PLAYER_GREAT_FORM" .. playerId)
	end
	
-- check player morale
	--local playerMorale = GetPlayerMorale(playerIndex)
	--if( playerMorale >= 4 ) then
		--enum PlayerMoraleLevel 
		--{
		--	MORALE_LEVEL_UNDEFINED = -1,
		--	MORALE_LEVEL_VERY_HIGH,
		--	MORALE_LEVEL_HIGH,
		--	MORALE_LEVEL_NORMAL,
		--	MORALE_LEVEL_LOW,
		--	MORALE_LEVEL_VERY_LOW,
		--	MORALE_LEVEL_MAX
		--};
		--AddMatchDayAudioEvent("PLAYER_BAD_MORALE", playerId)
		--print("FL_CheckPlayer: PLAYER_BAD_MORALE" .. playerId)

	--end
		
-- check cards reds, yellows
	local reds = GetPlayerReds(playerIndex)
	if( reds > 2 ) then
		AddMatchDayAudioEvent("PLAYER_REDS_THIS_SEASON", "TRIGGER_PLAYERINFO_PREMATCH", playerId, redCards)
		
	end
	
	local yellows = GetPlayerYellows(playerIndex)
	local yellowsPerGame = 0
	local goalsPerGame = 0
	
-- check player league appeareances
	local appearances = GetPlayerAppearences(playerIndex)
	if( appearances > 0 ) then
		yellowsPerGame = yellows/appearances
	end
	
	if( yellows > 4 and yellowsPerGame > 0.2 ) then
		AddMatchDayAudioEvent("PLAYER_YELLOWS_THIS_SEASON", "TRIGGER_PLAYERINFO_PREMATCH", playerId, yellowCards)
	end
	
-- check player league goals
	local goals = GetPlayerGoals(playerIndex)
	if( appearances > 0 ) then
		goalsPerGame = goals/appearances
	end
	
	if(goals > 0 and goalsPerGame>0.2) then
		AddMatchDayAudioEvent("PLAYER_LEAGUE_GOALS_THIS_SEASON","TRIGGER_PLAYERINFO_PREMATCH", playerId, goals)
		print("FL_CheckPlayer: PLAYER_LEAGUE_GOALS_THIS_SEASON" .. playerId)
	end

	-- Make this work. Track total league games
	--if(playerIndex <= 11 and appearances == 0 and totalLeagueGames > 5) then
	--	AddMatchDayAudioEvent("PLAYER_LEAGUE_FIRST_APPEARANCE_THIS_SEASON", "TRIGGER_PREMATCH", playerId)
	--end
	
	--if(playerIndex <= 11 and appearancesLeague == totalLeagueGames and totalLeagueGames > 5) then
	--	AddMatchDayAudioEvent("PLAYER_LEAGUE_PLAYED_ALL_GAMES", "TRIGGER_PREMATCH", playerId)
	--end
	
	if( IsPlayerTopScorer(playerIndex) == true ) then
		AddMatchDayAudioEvent("PLAYER_LEAGUE_TOP_SCORER_IN_LEAGUE", "TRIGGER_PLAYERINFO_PREMATCH", playerId, goals)
		print("FL_CheckPlayer: PLAYER_LEAGUE_TOP_SCORER_IN_LEAGUE" .. playerId)
	end
	
	if( IsPlayerAmongTopScorersLeague(playerIndex) == true ) then
		AddMatchDayAudioEvent("PLAYER_LEAGUE_AMONG_TOP_SCORERS_IN_LEAGUE", "TRIGGER_PLAYERINFO_PREMATCH",  playerId, goals)
		print("FL_CheckPlayer: PLAYER_LEAGUE_AMONG_TOP_SCORERS_IN_LEAGUE" .. playerId)
	end
	
	if( IsPlayerAmongTopScorersTeam(playerIndex) == true ) then
		AddMatchDayAudioEvent("PLAYER_LEAGUE_TOP_SCORER_FOR_TEAM", "TRIGGER_PLAYERINFO_PREMATCH", playerId, goals)
		print("FL_CheckPlayer: PLAYER_LEAGUE_TOP_SCORER_FOR_TEAM" .. playerId)
	end

end

--#############################################################################
function FL_SendCommentatorNotes()
-- Signal that generating comemntator events is done and send them to audio
end
